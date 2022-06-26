#ifndef BDT_H__
#define BDT_H__

#include "ap_fixed.h"

namespace BDT{

constexpr int pow2(int x){
  return x == 0 ? 1 : 2 * pow2(x - 1);
}

constexpr int fn_nodes(int tree_idx){
//  return pow2(max_depth + 1) - 1;
   switch (tree_idx) {
	case 0:return 7;
	case 1:return 11;
	case 2:return 7;
	case 3:return 7;
	case 4:return 11;
	case 5:return 7;
	case 6:return 7;
	case 7:return 11;
	case 8:return 7;
	case 9:return 7;
	case 10:return 7;
	case 11:return 7;
	case 12:return 7;
	case 13:return 7;
	case 14:return 7;
	case 15:return 7;
	case 16:return 7;
	case 17:return 5;
	case 18:return 5;
	case 19:return 5;
	case 20:return 5;
	case 21:return 3;
	case 22:return 1;
	case 23:return 1;
	case 24:return 1;
	case 25:return 1;
	case 26:return 1;
	case 27:return 1;
	case 28:return 1;
	case 29:return 1;
	case 30:return 1;
	case 31:return 1;
	case 32:return 1;
	case 33:return 1;
	case 34:return 1;
	case 35:return 1;
	case 36:return 1;
	case 37:return 1;
	case 38:return 1;
	case 39:return 1;
	case 40:return 1;
	case 41:return 1;
	case 42:return 1;
	case 43:return 1;
	case 44:return 1;
	case 45:return 1;
	case 46:return 1;
	case 47:return 1;
	case 48:return 1;
	case 49:return 1;
	default:return 15;
   }
}

constexpr int fn_leaves(int tree_idx){
//  return pow2(max_depth);
  switch  (tree_idx) {
	case 0:return 4;
	case 1:return 6;
	case 2:return 4;
	case 3:return 4;
	case 4:return 6;
	case 5:return 4;
	case 6:return 4;
	case 7:return 6;
	case 8:return 4;
	case 9:return 4;
	case 10:return 4;
	case 11:return 4;
	case 12:return 4;
	case 13:return 4;
	case 14:return 4;
	case 15:return 4;
	case 16:return 4;
	case 17:return 3;
	case 18:return 3;
	case 19:return 3;
	case 20:return 3;
	case 21:return 2;
	case 22:return 1;
	case 23:return 1;
	case 24:return 1;
	case 25:return 1;
	case 26:return 1;
	case 27:return 1;
	case 28:return 1;
	case 29:return 1;
	case 30:return 1;
	case 31:return 1;
	case 32:return 1;
	case 33:return 1;
	case 34:return 1;
	case 35:return 1;
	case 36:return 1;
	case 37:return 1;
	case 38:return 1;
	case 39:return 1;
	case 40:return 1;
	case 41:return 1;
	case 42:return 1;
	case 43:return 1;
	case 44:return 1;
	case 45:return 1;
	case 46:return 1;
	case 47:return 1;
	case 48:return 1;
	case 49:return 1;
	default:return 8;
  }
}

constexpr int fn_classes(int n_classes){
  // Number of trees given number of classes
  return n_classes == 2 ? 1 : n_classes;
}

template<int tree_idx, class input_t, class score_t, class threshold_t>
struct Tree {
private:
  static constexpr int n_nodes = fn_nodes(tree_idx);
  static constexpr int n_leaves = fn_leaves(tree_idx);
public:
	int feature[n_nodes];
	threshold_t threshold[n_nodes];
	score_t value[n_nodes];
	int children_left[n_nodes];
	int children_right[n_nodes];
	int parent[n_nodes];

	score_t decision_function(input_t x) const{
		#pragma HLS pipeline II = 1
		#pragma HLS ARRAY_PARTITION variable=feature
		#pragma HLS ARRAY_PARTITION variable=threshold
		#pragma HLS ARRAY_PARTITION variable=value
		#pragma HLS ARRAY_PARTITION variable=children_left
		#pragma HLS ARRAY_PARTITION variable=children_right
		#pragma HLS ARRAY_PARTITION variable=parent
    // These resource pragmas prevent the array of trees from being partitioned
    // They should be unnecessary anyway due to their own partitioning above
		/*#pragma HLS RESOURCE variable=feature core=ROM_nP_LUTRAM
		#pragma HLS RESOURCE variable=threshold core=ROM_nP_LUTRAM
		#pragma HLS RESOURCE variable=value core=ROM_nP_LUTRAM
		#pragma HLS RESOURCE variable=children_left core=ROM_nP_LUTRAM
		#pragma HLS RESOURCE variable=children_right core=ROM_nP_LUTRAM
		#pragma HLS RESOURCE variable=parent core=ROM_nP_LUTRAM*/

		bool comparison[n_nodes];
		bool activation[n_nodes];
		bool activation_leaf[n_leaves];
		score_t value_leaf[n_leaves];

		#pragma HLS ARRAY_PARTITION variable=comparison
		#pragma HLS ARRAY_PARTITION variable=activation
		#pragma HLS ARRAY_PARTITION variable=activation_leaf
		#pragma HLS ARRAY_PARTITION variable=value_leaf

		// Execute all comparisons
		Compare: for(int i = 0; i < n_nodes; i++){
			#pragma HLS unroll
			// Only non-leaf nodes do comparisons
			// negative values mean is a leaf (sklearn: -2)
			if(feature[i] >= 0){
				comparison[i] = x[feature[i]] <= threshold[i];
			}else{
				comparison[i] = true;
			}
		}

		// Determine node activity for all nodes
		int iLeaf = 0;
		Activate: for(int i = 0; i < n_nodes; i++){
			#pragma HLS unroll
			// Root node is always active
			if(i == 0){
				activation[i] = true;
			}else{
				// If this node is the left child of its parent
				if(i == children_left[parent[i]]){
					activation[i] = comparison[parent[i]] && activation[parent[i]];
				}else{ // Else it is the right child
					activation[i] = !comparison[parent[i]] && activation[parent[i]];
				}
			}
			// Skim off the leaves
			if(children_left[i] == -1){ // is a leaf
				activation_leaf[iLeaf] = activation[i];
				value_leaf[iLeaf] = value[i];
				iLeaf++;
			}
		}

		score_t y = 0;
		for(int i = 0; i < n_leaves; i++){
			if(activation_leaf[i]){
				return value_leaf[i];
			}
		}
		return y;
	}
};

template<int n_trees, int max_depth, int n_classes, class input_t, class score_t, class threshold_t, bool unroll>
struct BDT{

public:
    score_t normalisation;
	score_t init_predict[fn_classes(n_classes)];
	//Tree<max_depth, input_t, score_t, threshold_t> trees[n_trees][fn_classes(n_classes)];
	Tree<0, input_t, score_t, threshold_t> tree_0[fn_classes(n_classes)];
	Tree<1, input_t, score_t, threshold_t> tree_1[fn_classes(n_classes)];
	Tree<2, input_t, score_t, threshold_t> tree_2[fn_classes(n_classes)];
	Tree<3, input_t, score_t, threshold_t> tree_3[fn_classes(n_classes)];
	Tree<4, input_t, score_t, threshold_t> tree_4[fn_classes(n_classes)];
	Tree<5, input_t, score_t, threshold_t> tree_5[fn_classes(n_classes)];
	Tree<6, input_t, score_t, threshold_t> tree_6[fn_classes(n_classes)];
	Tree<7, input_t, score_t, threshold_t> tree_7[fn_classes(n_classes)];
	Tree<8, input_t, score_t, threshold_t> tree_8[fn_classes(n_classes)];
	Tree<9, input_t, score_t, threshold_t> tree_9[fn_classes(n_classes)];
	Tree<10, input_t, score_t, threshold_t> tree_10[fn_classes(n_classes)];
	Tree<11, input_t, score_t, threshold_t> tree_11[fn_classes(n_classes)];
	Tree<12, input_t, score_t, threshold_t> tree_12[fn_classes(n_classes)];
	Tree<13, input_t, score_t, threshold_t> tree_13[fn_classes(n_classes)];
	Tree<14, input_t, score_t, threshold_t> tree_14[fn_classes(n_classes)];
	Tree<15, input_t, score_t, threshold_t> tree_15[fn_classes(n_classes)];
	Tree<16, input_t, score_t, threshold_t> tree_16[fn_classes(n_classes)];
	Tree<17, input_t, score_t, threshold_t> tree_17[fn_classes(n_classes)];
	Tree<18, input_t, score_t, threshold_t> tree_18[fn_classes(n_classes)];
	Tree<19, input_t, score_t, threshold_t> tree_19[fn_classes(n_classes)];
	Tree<20, input_t, score_t, threshold_t> tree_20[fn_classes(n_classes)];
	Tree<21, input_t, score_t, threshold_t> tree_21[fn_classes(n_classes)];
	Tree<22, input_t, score_t, threshold_t> tree_22[fn_classes(n_classes)];
	Tree<23, input_t, score_t, threshold_t> tree_23[fn_classes(n_classes)];
	Tree<24, input_t, score_t, threshold_t> tree_24[fn_classes(n_classes)];
	Tree<25, input_t, score_t, threshold_t> tree_25[fn_classes(n_classes)];
	Tree<26, input_t, score_t, threshold_t> tree_26[fn_classes(n_classes)];
	Tree<27, input_t, score_t, threshold_t> tree_27[fn_classes(n_classes)];
	Tree<28, input_t, score_t, threshold_t> tree_28[fn_classes(n_classes)];
	Tree<29, input_t, score_t, threshold_t> tree_29[fn_classes(n_classes)];
	Tree<30, input_t, score_t, threshold_t> tree_30[fn_classes(n_classes)];
	Tree<31, input_t, score_t, threshold_t> tree_31[fn_classes(n_classes)];
	Tree<32, input_t, score_t, threshold_t> tree_32[fn_classes(n_classes)];
	Tree<33, input_t, score_t, threshold_t> tree_33[fn_classes(n_classes)];
	Tree<34, input_t, score_t, threshold_t> tree_34[fn_classes(n_classes)];
	Tree<35, input_t, score_t, threshold_t> tree_35[fn_classes(n_classes)];
	Tree<36, input_t, score_t, threshold_t> tree_36[fn_classes(n_classes)];
	Tree<37, input_t, score_t, threshold_t> tree_37[fn_classes(n_classes)];
	Tree<38, input_t, score_t, threshold_t> tree_38[fn_classes(n_classes)];
	Tree<39, input_t, score_t, threshold_t> tree_39[fn_classes(n_classes)];
	Tree<40, input_t, score_t, threshold_t> tree_40[fn_classes(n_classes)];
	Tree<41, input_t, score_t, threshold_t> tree_41[fn_classes(n_classes)];
	Tree<42, input_t, score_t, threshold_t> tree_42[fn_classes(n_classes)];
	Tree<43, input_t, score_t, threshold_t> tree_43[fn_classes(n_classes)];
	Tree<44, input_t, score_t, threshold_t> tree_44[fn_classes(n_classes)];
	Tree<45, input_t, score_t, threshold_t> tree_45[fn_classes(n_classes)];
	Tree<46, input_t, score_t, threshold_t> tree_46[fn_classes(n_classes)];
	Tree<47, input_t, score_t, threshold_t> tree_47[fn_classes(n_classes)];
	Tree<48, input_t, score_t, threshold_t> tree_48[fn_classes(n_classes)];
	Tree<49, input_t, score_t, threshold_t> tree_49[fn_classes(n_classes)];

	void decision_function(input_t x, score_t score[fn_classes(n_classes)], score_t tree_scores[fn_classes(n_classes) * n_trees]) const{
        if(unroll){
//    		#pragma HLS ARRAY_PARTITION variable=trees dim=0
        }
		for(int j = 0; j < fn_classes(n_classes); j++){
			score[j] = init_predict[j];
		}
		Trees:
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_0[j].decision_function(x);
			score[j] += s;
			tree_scores[0 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_1[j].decision_function(x);
			score[j] += s;
			tree_scores[1 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_2[j].decision_function(x);
			score[j] += s;
			tree_scores[2 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_3[j].decision_function(x);
			score[j] += s;
			tree_scores[3 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_4[j].decision_function(x);
			score[j] += s;
			tree_scores[4 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_5[j].decision_function(x);
			score[j] += s;
			tree_scores[5 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_6[j].decision_function(x);
			score[j] += s;
			tree_scores[6 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_7[j].decision_function(x);
			score[j] += s;
			tree_scores[7 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_8[j].decision_function(x);
			score[j] += s;
			tree_scores[8 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_9[j].decision_function(x);
			score[j] += s;
			tree_scores[9 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_10[j].decision_function(x);
			score[j] += s;
			tree_scores[10 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_11[j].decision_function(x);
			score[j] += s;
			tree_scores[11 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_12[j].decision_function(x);
			score[j] += s;
			tree_scores[12 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_13[j].decision_function(x);
			score[j] += s;
			tree_scores[13 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_14[j].decision_function(x);
			score[j] += s;
			tree_scores[14 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_15[j].decision_function(x);
			score[j] += s;
			tree_scores[15 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_16[j].decision_function(x);
			score[j] += s;
			tree_scores[16 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_17[j].decision_function(x);
			score[j] += s;
			tree_scores[17 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_18[j].decision_function(x);
			score[j] += s;
			tree_scores[18 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_19[j].decision_function(x);
			score[j] += s;
			tree_scores[19 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_20[j].decision_function(x);
			score[j] += s;
			tree_scores[20 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_21[j].decision_function(x);
			score[j] += s;
			tree_scores[21 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_22[j].decision_function(x);
			score[j] += s;
			tree_scores[22 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_23[j].decision_function(x);
			score[j] += s;
			tree_scores[23 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_24[j].decision_function(x);
			score[j] += s;
			tree_scores[24 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_25[j].decision_function(x);
			score[j] += s;
			tree_scores[25 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_26[j].decision_function(x);
			score[j] += s;
			tree_scores[26 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_27[j].decision_function(x);
			score[j] += s;
			tree_scores[27 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_28[j].decision_function(x);
			score[j] += s;
			tree_scores[28 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_29[j].decision_function(x);
			score[j] += s;
			tree_scores[29 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_30[j].decision_function(x);
			score[j] += s;
			tree_scores[30 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_31[j].decision_function(x);
			score[j] += s;
			tree_scores[31 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_32[j].decision_function(x);
			score[j] += s;
			tree_scores[32 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_33[j].decision_function(x);
			score[j] += s;
			tree_scores[33 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_34[j].decision_function(x);
			score[j] += s;
			tree_scores[34 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_35[j].decision_function(x);
			score[j] += s;
			tree_scores[35 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_36[j].decision_function(x);
			score[j] += s;
			tree_scores[36 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_37[j].decision_function(x);
			score[j] += s;
			tree_scores[37 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_38[j].decision_function(x);
			score[j] += s;
			tree_scores[38 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_39[j].decision_function(x);
			score[j] += s;
			tree_scores[39 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_40[j].decision_function(x);
			score[j] += s;
			tree_scores[40 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_41[j].decision_function(x);
			score[j] += s;
			tree_scores[41 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_42[j].decision_function(x);
			score[j] += s;
			tree_scores[42 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_43[j].decision_function(x);
			score[j] += s;
			tree_scores[43 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_44[j].decision_function(x);
			score[j] += s;
			tree_scores[44 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_45[j].decision_function(x);
			score[j] += s;
			tree_scores[45 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_46[j].decision_function(x);
			score[j] += s;
			tree_scores[46 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_47[j].decision_function(x);
			score[j] += s;
			tree_scores[47 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_48[j].decision_function(x);
			score[j] += s;
			tree_scores[48 * fn_classes(n_classes) + j] = s;
		}
		for(int j = 0; j < fn_classes(n_classes); j++){
			score_t s = tree_49[j].decision_function(x);
			score[j] += s;
			tree_scores[49 * fn_classes(n_classes) + j] = s;
		}
//		for(int i = 0; i < n_trees; i++){
//			Classes:
//			for(int j = 0; j < fn_classes(n_classes); j++){
//                score_t s = trees[i][j].decision_function(x);
//				score[j] += s;
//                tree_scores[i * fn_classes(n_classes) + j] = s;
//			}
//		}
        for(int j = 0; j < fn_classes(n_classes); j++){
            score[j] *= normalisation;
        }
	}

};

//template<int max_depth, class input_t, class score_t, class threshold_t>
//constexpr int Tree<max_depth, input_t, score_t, threshold_t>::n_nodes;
//
//template<int max_depth, class input_t, class score_t, class threshold_t>
//constexpr int Tree<max_depth, input_t, score_t, threshold_t>::n_leaves;

}
#endif
