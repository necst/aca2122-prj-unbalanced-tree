#ifndef MYPROJECT_AXI_H_
#define MYPROJECT_AXI_H_

#include <iostream>
#include "myproject.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"

static const unsigned N_IN = 10;
static const unsigned N_OUT = 10;
typedef float T_in;
typedef float T_out;


/*typedef hls::axis<T_in, 0, 0, 0> input_axi_t;
typedef hls::axis<T_out, 0, 0, 0> output_axi_t;*/

typedef hls::axis<T_in[N_IN], 0, 0, 0> input_axis_t;
typedef hls::axis<T_out[N_OUT], 0, 0, 0> output_axis_t;

typedef hls::stream<input_axis_t> input_axi_t;
typedef hls::stream<output_axis_t> output_axi_t;

//std::ostream& operator<<(std::ostream& stream, const input_axi_t& in)
//{ return stream << "{ data: " << in.data << ", last: " << in.last << " }" << std::endl; }

//std::ostream& operator<<(std::ostream& stream, const output_axi_t& in)
//{ return stream << "{ data: " << in.data << ", last: " << in.last << " }" << std::endl; }

/*
typedef struct in_struct {
	hls::axis<float, 0, 0, 0> data;
    in_struct(const T_in& data, const ap_uint<1>& last){this->data.data = data; this->last = last;};
    in_struct(){this->data = 0; this->last = 0;};
    friend std::ostream& operator<<(std::ostream& stream, const in_struct& in)
    { return stream << "{ data: " << in.data << ", last: " << in.last << " }" << std::endl; }
    operator float() const {return this->data;}
    operator double() const {return this->data;}
    in_struct(float data) {this->data = data; this->last = 0;}
    in_struct(double data) {this->data = data; this->last = 0;}
} input_axi_t;
*/
/*
typedef struct in_struct {
    T_in data;
    ap_uint<1> last;
    in_struct(const T_in& data, const ap_uint<1>& last){this->data = data; this->last = last;};
    in_struct(){this->data = 0; this->last = 0;};
    friend std::ostream& operator<<(std::ostream& stream, const in_struct& in)
    { return stream << "{ data: " << in.data << ", last: " << in.last << " }" << std::endl; }
    operator float() const {return this->data;}
    operator double() const {return this->data;}
    in_struct(float data) {this->data = data; this->last = 0;}
    in_struct(double data) {this->data = data; this->last = 0;}
} input_axi_t;
typedef struct out_struct {
    T_out data;
    ap_uint<1> last;
    out_struct(const T_out& data, const ap_uint<1>& last){this->data = data; this->last = last;};
    out_struct(){this->data = 0; this->last = 0;};
    friend std::ostream& operator<<(std::ostream& stream, const out_struct& out)
    { return stream << "{ data: " << out.data << ", last: " << out.last << " }" << std::endl; }
    operator float() const {return this->data;}
    operator double() const {return this->data;}
    out_struct(float data) {this->data = data; this->last = 0;}
    out_struct(double data) {this->data = data; this->last = 0;}
} output_axi_t;
*/
void myproject_axi(
    input_axi_t &in,
    output_axi_t &out
        );
#endif
