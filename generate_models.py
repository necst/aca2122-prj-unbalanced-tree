# Example BDT creation from: https://xgboost.readthedocs.io/en/latest/get_started.html
# With data import from: https://scikit-learn.org/stable/modules/ensemble.html
import os

from sklearn.datasets import make_hastie_10_2
import xgboost as xgb
import conifer
import datetime
import numpy as np

# Make a random dataset from sklearn 'hastie'
X, y = make_hastie_10_2(random_state=0)
y[y == -1] = 0
X_train, X_test = X[:2000], X[2000:]
y_train, y_test = y[:2000], y[2000:]

dtrain = xgb.DMatrix(X_train, label=y_train)
dtest = xgb.DMatrix(X_test, label=y_test)

# Train a BDT
import json

params = json.load(open('param.json'))

for k, param in params.items():
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

    wrapper_out_dir = 'wrapper_' + k
    core_output_dir = 'core_' + k

    if not os.path.exists(wrapper_out_dir):
        os.mkdir(wrapper_out_dir)

    if not os.path.exists(core_output_dir):
        os.mkdir(core_output_dir)

    np.save(core_output_dir + '/X_test.npy', X_test)
    np.save(core_output_dir + '/y_hls.npy', y_hls)

    np.save(wrapper_out_dir + '/X_test.npy', X_test)
    np.save(wrapper_out_dir + '/y_hls.npy', y_hls)

    model.deploy(wrapper_output_dir=wrapper_out_dir, core_output_dir=core_output_dir)


