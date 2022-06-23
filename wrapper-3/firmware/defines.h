#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_int.h"
#include "ap_fixed.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 10
#define N_OUTPUT_1_2 10

//hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<32,16> model_default_t;
typedef ap_fixed<32,16> fake_input;
typedef ap_fixed<32,16> result_t;

#endif
