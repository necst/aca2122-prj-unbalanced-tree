#ifndef BDT_PARAMS_H__
#define BDT_PARAMS_H__

#include  "BDT.h"
#include "ap_fixed.h"

static const int n_trees = 20;
static const int max_depth = 20;
static const int n_features = 10;
static const int n_classes = 2;
static const bool unroll = true;
typedef ap_fixed<32,16> input_t;
typedef input_t input_arr_t[n_features];
typedef ap_fixed<32,16> score_t;
typedef score_t score_arr_t[n_classes];
typedef input_t threshold_t;

static const BDT::BDT<n_trees, max_depth, n_classes, input_arr_t, score_t, threshold_t, unroll> bdt = 
{ // The struct
	1, // The normalisation
	{0},
	// The trees
		// trees[0]
			{{ // [0]
				{1,1,1,1,5,2,-2,-2,0,5,5,0,-2,6,-2,0,2,9,-2,-2,7,-2,-2,-2,0,2,7,8,-2,-2,7,-2,-2,7,4,-2,4,-2,-2,5,-2,2,-2,-2,6,-2,-2,5,-2,-2,1,0,-2,-2,1,-2,0,0,-2,-2,-2,-2,-2,0,9,-2,4,7,-2,9,-2,-2,3,-2,-2,3,9,-2,8,-2,-2,9,-2,-2,6,-2,4,8,-2,-2,7,-2,-2},
				{1.11828613,-1.37190318,1.90419793,-2.10909224,1.24175549,0.943056703,0,0,0.550685823,-1.35502982,1.76699996,-0.864753842,0,-0.928887725,0,-0.889165759,1.70829844,0.44448325,0,0,-1.2196269,0,0,0,0.180658638,-1.20364714,0.5419994,-0.885346591,0,0,0.665041804,0,0,0.487467676,-1.56982839,0,-0.292160749,0,0,0.383607864,0,-1.87068725,0,0,1.77774227,0,0,-1.18792796,0,0,-0.542884111,2.02689648,0,0,1.54073429,0,-1.53864932,-1.59378386,0,0,0,0,0,-2.06594992,1.99547207,0,0.939060986,-1.67365122,0,-1.1441685,0,0,1.68751216,0,0,-2.16957474,0.244054943,0,1.96210802,0,0,-2.00864792,0,0,-1.89675069,0,1.7104435,-2.14464998,0,0,2.24133396,0,0},
				{0,0,0,0,0,0,1.62962961,1.73913038,0,0,0,0,1.74193549,0,1.5454545,0,0,0,1.48571432,1.39999998,0,1.61904764,-0.0571428575,1.55555558,0,0,0,0,1.08571434,1.4074074,0,-0.0799999982,1.1836735,0,0,1.4545455,0,1.0,-0.571428597,0,1.02702701,0,1.4666667,0.800000012,0,1.42857146,-0.769230783,0,0.600000024,0.918918908,0,0,1.11111116,1.05882359,0,0.888888896,0,0,1.25925922,-1.5,-0.0645161271,1.11111116,-0.950819671,0,0,1.39999998,0,0,1.14285719,0,1.38461542,0.511627913,0,1.20000005,-1.03448272,0,0,1.5,0,-0.444444448,1.27272725,0,0.769230783,1.11111116,0,0.823529422,0,0,0.125,0.857142866,0,-1.76537907,1.11111116},
				{1,3,5,7,9,11,-1,-1,13,15,17,19,-1,21,-1,23,25,27,-1,-1,29,-1,-1,-1,31,33,35,37,-1,-1,39,-1,-1,41,43,-1,45,-1,-1,47,-1,49,-1,-1,51,-1,-1,53,-1,-1,55,57,-1,-1,59,-1,61,63,-1,-1,-1,-1,-1,65,67,-1,69,71,-1,73,-1,-1,75,-1,-1,77,79,-1,81,-1,-1,83,-1,-1,85,-1,87,89,-1,-1,91,-1,-1},
				{2,4,6,8,10,12,-1,-1,14,16,18,20,-1,22,-1,24,26,28,-1,-1,30,-1,-1,-1,32,34,36,38,-1,-1,40,-1,-1,42,44,-1,46,-1,-1,48,-1,50,-1,-1,52,-1,-1,54,-1,-1,56,58,-1,-1,60,-1,62,64,-1,-1,-1,-1,-1,66,68,-1,70,72,-1,74,-1,-1,76,-1,-1,78,80,-1,82,-1,-1,84,-1,-1,86,-1,88,90,-1,-1,92,-1,-1},
				{-1,0,0,1,1,2,2,3,3,4,4,5,5,8,8,9,9,10,10,11,11,13,13,15,15,16,16,17,17,20,20,24,24,25,25,26,26,27,27,30,30,33,33,34,34,36,36,39,39,41,41,44,44,47,47,50,50,51,51,54,54,56,56,57,57,63,63,64,64,66,66,67,67,69,69,72,72,75,75,76,76,78,78,81,81,84,84,86,86,87,87,90,90}
			}
		},
		// trees[1]
			{{ // [0]
				{8,0,3,-2,0,7,8,-2,-2,-2,-2,3,6,4,-2,-2,6,9,-2,-2,-2,7,6,7,-2,-2,-2,-2,9,-2,4,-2,6,-2,2,6,-2,2,-2,-2,1,-2,5,-2,-2},
				{-1.4575206,-0.112553336,-1.01643419,0,0.0400415063,1.4169848,1.02281511,0,0,0,0,1.32860672,-0.925172448,0.860664487,0,0,0.847259045,1.01265299,0,0,0,1.62136889,-1.03126061,-2.13092089,0,0,0,0,-1.32318711,0,-1.88069427,0,-1.61130786,0,2.08421469,1.48467457,0,-2.29285574,0,0,-2.10909224,0,2.20941019,0,0},
				{0,0,0,1.33274913,0,0,0,-0.788926423,1.07436454,0.564396262,1.82793808,0,0,0,0.685433269,1.42419434,0,0,0.203691781,0.0461882204,1.14155579,0,0,0,0.817554116,1.3684001,-0.0481329896,1.13953197,0,0.0433140472,0,0.432420939,0,0.363378555,0,0,0.827982545,0,-0.063289918,0.745523334,0,0.427103579,0,-1.54155338,0.685685575},
				{1,3,5,-1,7,9,11,-1,-1,-1,-1,13,15,17,-1,-1,19,21,-1,-1,-1,23,25,27,-1,-1,-1,-1,29,-1,31,-1,33,-1,35,37,-1,39,-1,-1,41,-1,43,-1,-1},
				{2,4,6,-1,8,10,12,-1,-1,-1,-1,14,16,18,-1,-1,20,22,-1,-1,-1,24,26,28,-1,-1,-1,-1,30,-1,32,-1,34,-1,36,38,-1,40,-1,-1,42,-1,44,-1,-1},
				{-1,0,0,1,1,2,2,4,4,5,5,6,6,11,11,12,12,13,13,16,16,17,17,21,21,22,22,23,23,28,28,30,30,32,32,34,34,35,35,37,37,40,40,42,42}
			}
		},
		// trees[2]
			{{ // [0]
				{0,0,-2,-2,7,-2,7,2,-2,2,-2,-2,4,-2,3,6,-2,-2,6,-2,-2},
				{1.54054666,-1.23906755,0,0,-1.40399051,0,0.820350051,1.3505373,0,-0.937396288,0,0,-0.946052909,0,2.1502378,-0.942379653,0,0,1.04985309,0,0},
				{0,0,1.16006362,0.747706234,0,0.684604466,0,0,0.263680667,0,0.485541761,0.078807041,0,-0.0425125957,0,0,0.988388419,-0.210650563,0,-1.15950501,-0.310704142},
				{1,3,-1,-1,5,-1,7,9,-1,11,-1,-1,13,-1,15,17,-1,-1,19,-1,-1},
				{2,4,-1,-1,6,-1,8,10,-1,12,-1,-1,14,-1,16,18,-1,-1,20,-1,-1},
				{-1,0,0,1,1,4,4,6,6,7,7,9,9,12,12,14,14,15,15,18,18}
			}
		},
		// trees[3]
			{{ // [0]
				{9,9,-2,-2,1,4,5,1,-2,-2,5,-2,6,-2,-2,6,-2,-2,-2},
				{1.41279626,-1.1639539,0,0,0.894967675,0.740179181,-1.0915134,-1.2263937,0,0,0.996850908,0,0.834386468,0,0,-0.818344355,0,0,0},
				{0,0,0.810184956,0.634581208,0,0,0,0,0.2257386,1.07766998,0,0.202755481,0,-0.0947460681,0.978734314,0,-0.0893619135,-0.212217346,-0.934524298},
				{1,3,-1,-1,5,7,9,11,-1,-1,13,-1,15,-1,-1,17,-1,-1,-1},
				{2,4,-1,-1,6,8,10,12,-1,-1,14,-1,16,-1,-1,18,-1,-1,-1},
				{-1,0,0,1,1,4,4,5,5,6,6,7,7,10,10,12,12,15,15}
			}
		},
		// trees[4]
			{{ // [0]
				{8,8,-2,-2,3,-2,5,-2,5,2,-2,-2,4,-2,2,0,-2,-2,6,3,-2,1,-2,-2,-2},
				{1.35328305,-0.971245766,0,0,-1.53987932,0,-1.75418496,0,1.72165298,-1.62843823,0,0,-1.21352649,0,0.975636899,-2.20141125,0,0,2.04277611,1.32860672,0,1.52842641,0,0,0},
				{0,0,0.781297028,0.45160538,0,0.808023393,0,1.01460266,0,0,0.910679698,0.54828459,0,0.185533658,0,0,0.0866822004,1.02965224,0,0,0.81221664,0,-0.0335027948,-1.05824172,0.14140746},
				{1,3,-1,-1,5,-1,7,-1,9,11,-1,-1,13,-1,15,17,-1,-1,19,21,-1,23,-1,-1,-1},
				{2,4,-1,-1,6,-1,8,-1,10,12,-1,-1,14,-1,16,18,-1,-1,20,22,-1,24,-1,-1,-1},
				{-1,0,0,1,1,4,4,6,6,8,8,9,9,12,12,14,14,15,15,18,18,19,19,21,21}
			}
		},
		// trees[5]
			{{ // [0]
				{7,7,-2,-2,1,-2,9,-2,-2},
				{1.40937805,-0.317747861,0,0,-1.21820092,0,1.69391942,0,0},
				{0,0,0.874266267,0.285838455,0,0.459548444,0,-0.445207059,0.759436548},
				{1,3,-1,-1,5,-1,7,-1,-1},
				{2,4,-1,-1,6,-1,8,-1,-1},
				{-1,0,0,1,1,4,4,6,6}
			}
		},
		// trees[6]
			{{ // [0]
				{5,5,-2,-2,0,-2,0,4,-2,-2,-2},
				{0.934092224,-1.09793425,0,0,-0.68652463,0,1.49353552,-2.19669151,0,0,0},
				{0,0,0.543532789,0.441237509,0,0.231884137,0,0,0.620548666,1.14506841,-0.532261491},
				{1,3,-1,-1,5,-1,7,9,-1,-1,-1},
				{2,4,-1,-1,6,-1,8,10,-1,-1,-1},
				{-1,0,0,1,1,4,4,6,6,7,7}
			}
		},
		// trees[7]
			{{ // [0]
				{4,6,-2,-2,3,3,6,-2,-2,-2,-2},
				{1.51293015,-1.43776953,0,0,0.674415708,-0.750393689,0.922610044,0,0,0,0},
				{0,0,0.839014053,0.816754937,0,0,0,0.182050616,-0.433549076,0.0677058846,1.20132291},
				{1,3,-1,-1,5,7,9,-1,-1,-1,-1},
				{2,4,-1,-1,6,8,10,-1,-1,-1,-1},
				{-1,0,0,1,1,4,4,5,5,6,6}
			}
		},
		// trees[8]
			{{ // [0]
				{2,-2,2,-2,-2},
				{-0.841515243,0,1.67104053,0,0},
				{0,0.462740451,0,-0.144963771,0.807621539},
				{1,-1,3,-1,-1},
				{2,-1,4,-1,-1},
				{-1,0,0,2,2}
			}
		},
		// trees[9]
			{{ // [0]
				{4,-2,-2},
				{-1.2883563,0,0},
				{0,0.621630788,-0.0664840564},
				{1,-1,-1},
				{2,-1,-1},
				{-1,0,0}
			}
		},
		// trees[10]
			{{ // [0]
				{-2},
				{0},
				{0.0078802947},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[11]
			{{ // [0]
				{-2},
				{0},
				{4.99989474e-05},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[12]
			{{ // [0]
				{-2},
				{0},
				{3.0657435e-07},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[13]
			{{ // [0]
				{-2},
				{0},
				{-5.1021104e-10},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[14]
			{{ // [0]
				{-2},
				{0},
				{-5.1021104e-10},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[15]
			{{ // [0]
				{-2},
				{0},
				{-5.1021104e-10},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[16]
			{{ // [0]
				{-2},
				{0},
				{-5.1021104e-10},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[17]
			{{ // [0]
				{-2},
				{0},
				{-5.1021104e-10},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[18]
			{{ // [0]
				{-2},
				{0},
				{-5.1021104e-10},
				{-1},
				{-1},
				{-1}
			}
		},
		// trees[19]
			{{ // [0]
				{-2},
				{0},
				{-5.1021104e-10},
				{-1},
				{-1},
				{-1}
			}
		}

};
#endif