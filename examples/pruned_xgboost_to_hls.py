# Example BDT creation from: https://xgboost.readthedocs.io/en/latest/get_started.html
# With data import from: https://scikit-learn.org/stable/modules/ensemble.html

from sklearn.datasets import make_hastie_10_2
import xgboost as xgb
import conifer
import datetime
from scipy.special import expit
import numpy as np

# Make a random dataset from sklearn 'hastie'
X, y = make_hastie_10_2(random_state=0)
y[y == -1] = 0
X_train, X_test = X[:2000], X[2000:]
y_train, y_test = y[:2000], y[2000:]

dtrain = xgb.DMatrix(X_train, label=y_train)
dtest = xgb.DMatrix(X_test, label=y_test)

# Train a BDT
param = {'max_depth': 3, 'eta': 1, 'alpha': 10,
         'gamma': 1, 'objective': 'binary:logistic'}
# Gamma controls pruning in XGBoost, Alpha controls L1 regularization

num_round = 20  # num_round is equivalent to number of trees
bst = xgb.train(param, dtrain, num_round)

# Create a conifer config
cfg = conifer.backends.xilinxhls.auto_config()
# Set the output directory to something unique
cfg['OutputDir'] = 'csim_from_python_{}'.format(int(datetime.datetime.now().timestamp()))

# Create and compile the model
model = conifer.model(bst, conifer.converters.xgboost,
                      conifer.backends.xilinxhls, cfg)

model.compile()
y_hls = model.decision_function(X_test)

wrapper_out_dir = 'wrapper-5'
core_output_dir = 'core-5'


model.deploy(wrapper_output_dir=wrapper_out_dir, core_output_dir=core_output_dir)

np.save(wrapper_out_dir + '/X_test.npy', X_test)
np.save(wrapper_out_dir + '/y_hls.npy', y_hls)
# Run HLS C Simulation and get the output
# xgboost 'predict' returns a probability like sklearn 'predict_proba'
# so we need to compute the probability from the decision_function returned
# by the HLS C Simulation
# y_xgb = bst.predict(dtest)

# Synthesize the model
# model.build()

