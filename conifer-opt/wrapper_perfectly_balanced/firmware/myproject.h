#ifndef MYPROJECT_H_
#define MYPROJECT_H_

#include "BDT.h"
#include "parameters.h"
#include "defines.h"


// Prototype of top level function for C-synthesis
void myproject(
	input_arr_t data,
	score_arr_t score,
	score_t tree_scores[BDT::fn_classes(n_classes) * n_trees]);
#endif
