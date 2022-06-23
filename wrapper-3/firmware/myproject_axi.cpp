#include "myproject_axi.h"

void myproject_axi(
    input_axi_t &in,
    output_axi_t &out
        ){

    #pragma HLS INTERFACE axis port=in
    #pragma HLS INTERFACE axis port=out
    #pragma HLS INTERFACE ap_ctrl_none port=return

    unsigned short in_size = 0;
    unsigned short out_size = 0;

    score_t tree_scores[BDT::fn_classes(n_classes) * n_trees]{};
    //bool is_last = false;
    input_axis_t in_struct;
    output_axis_t out_struct;
    fake_input in_local[N_IN];
    result_t out_local[N_OUT];

    for(unsigned i = 0; i < N_IN; i++){
        #pragma HLS UNROLL
         // Read input with cast
    	in_struct = in.read();
        in_local[i] = in_struct.data;
        // is_last |= (in_struct.last == 1)? true: false;
        // std::cout << "i_in: " << i << " - is_last: " << is_last << std::endl;
    }
    myproject(in_local, out_local, tree_scores);

    for(unsigned i = 0; i < N_OUT; i++){
        #pragma HLS UNROLL
        out_struct.last = (i == N_OUT - 1) ? true : false;
        out_struct.data = out_local[i];
        out.write(out_struct);

        // std::cout << "i_out: " << i << " - out[i].last: " << out[i].last << std::endl;
    }
    // Write output with cast
}
