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
	case 0:return 63;
	case 1:return 35;
	case 2:return 17;
	case 3:return 21;
	case 4:return 17;
	case 5:return 11;
	case 6:return 13;
	case 7:return 3;
	case 8:return 1;
	case 9:return 1;
	case 10:return 1;
	case 11:return 1;
	case 12:return 1;
	case 13:return 1;
	case 14:return 1;
	case 15:return 1;
	case 16:return 1;
	case 17:return 1;
	case 18:return 1;
	case 19:return 1;
	default:return 2097151;
   }
}

constexpr int fn_leaves(int tree_idx){
//  return pow2(max_depth);
  switch  (tree_idx) {
	case 0:return 32;
	case 1:return 18;
	case 2:return 9;
	case 3:return 11;
	case 4:return 9;
	case 5:return 6;
	case 6:return 7;
	case 7:return 2;
	case 8:return 1;
	case 9:return 1;
	case 10:return 1;
	case 11:return 1;
	case 12:return 1;
	case 13:return 1;
	case 14:return 1;
	case 15:return 1;
	case 16:return 1;
	case 17:return 1;
	case 18:return 1;
	case 19:return 1;
	default:return 1048576;
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
