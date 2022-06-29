#include "myproject_axi.h"

void myproject_axi(
input_axi_t &in,
output_axi_t &out
        ){

    #pragma HLS INTERFACE axis register both port=in
    #pragma HLS INTERFACE axis register both port=out
    #pragma HLS INTERFACE ap_ctrl_none port=return

    unsigned short in_size = 0;
    unsigned short out_size = 0;

    score_t tree_scores[BDT::fn_classes(n_classes) * n_trees]{};
    input_axis_t in_struct;
    output_axis_t out_struct;
    conifer_input in_local[N_IN];
    result_t out_local[N_OUT];

    for(unsigned i = 0; i < N_IN; i++){
#pragma HLS UNROLL
        in_struct = in.read();
        in_local[i] = in_struct.data;
        // is_last |= (in[i].last == 1)? true: false;
    }

    myproject(in_local, out_local, tree_scores);

    for(unsigned i = 0; i < N_OUT; i++){
#pragma HLS UNROLL
        out_struct.data = out_local[i];
        out_struct.last = in_struct.last;
        out_struct.dest = 0;
        out_struct.id = 0;
        out_struct.keep = ( 1<<(sizeof(T_out)) ) - 1;
        out_struct.strb = ( 1<<(sizeof(T_out)) ) - 1;
        out_struct.user = 0;
        out.write(out_struct);
    }
}
