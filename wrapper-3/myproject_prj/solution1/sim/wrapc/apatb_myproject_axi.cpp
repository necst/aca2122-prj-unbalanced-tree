#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_in_0_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_0_V_data_V.dat"
#define AUTOTB_TVOUT_in_0_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_0_V_data_V.dat"
#define AUTOTB_TVIN_in_0_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_0_V_keep_V.dat"
#define AUTOTB_TVOUT_in_0_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_0_V_keep_V.dat"
#define AUTOTB_TVIN_in_0_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_0_V_strb_V.dat"
#define AUTOTB_TVOUT_in_0_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_0_V_strb_V.dat"
#define AUTOTB_TVIN_in_0_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_0_V_last_V.dat"
#define AUTOTB_TVOUT_in_0_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_0_V_data_V "../tv/stream_size/stream_size_in_in_0_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_0_V_data_V "../tv/stream_size/stream_ingress_status_in_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_0_V_keep_V "../tv/stream_size/stream_size_in_in_0_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_0_V_keep_V "../tv/stream_size/stream_ingress_status_in_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_0_V_strb_V "../tv/stream_size/stream_size_in_in_0_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_0_V_strb_V "../tv/stream_size/stream_ingress_status_in_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_0_V_last_V "../tv/stream_size/stream_size_in_in_0_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_0_V_last_V "../tv/stream_size/stream_ingress_status_in_0_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_1_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_1_V_data_V.dat"
#define AUTOTB_TVOUT_in_1_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_1_V_data_V.dat"
#define AUTOTB_TVIN_in_1_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_1_V_keep_V.dat"
#define AUTOTB_TVOUT_in_1_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_1_V_keep_V.dat"
#define AUTOTB_TVIN_in_1_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_1_V_strb_V.dat"
#define AUTOTB_TVOUT_in_1_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_1_V_strb_V.dat"
#define AUTOTB_TVIN_in_1_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_1_V_last_V.dat"
#define AUTOTB_TVOUT_in_1_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_1_V_data_V "../tv/stream_size/stream_size_in_in_1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_1_V_data_V "../tv/stream_size/stream_ingress_status_in_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_1_V_keep_V "../tv/stream_size/stream_size_in_in_1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_1_V_keep_V "../tv/stream_size/stream_ingress_status_in_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_1_V_strb_V "../tv/stream_size/stream_size_in_in_1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_1_V_strb_V "../tv/stream_size/stream_ingress_status_in_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_1_V_last_V "../tv/stream_size/stream_size_in_in_1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_1_V_last_V "../tv/stream_size/stream_ingress_status_in_1_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_2_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_2_V_data_V.dat"
#define AUTOTB_TVOUT_in_2_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_2_V_data_V.dat"
#define AUTOTB_TVIN_in_2_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_2_V_keep_V.dat"
#define AUTOTB_TVOUT_in_2_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_2_V_keep_V.dat"
#define AUTOTB_TVIN_in_2_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_2_V_strb_V.dat"
#define AUTOTB_TVOUT_in_2_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_2_V_strb_V.dat"
#define AUTOTB_TVIN_in_2_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_2_V_last_V.dat"
#define AUTOTB_TVOUT_in_2_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_2_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_2_V_data_V "../tv/stream_size/stream_size_in_in_2_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_2_V_data_V "../tv/stream_size/stream_ingress_status_in_2_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_2_V_keep_V "../tv/stream_size/stream_size_in_in_2_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_2_V_keep_V "../tv/stream_size/stream_ingress_status_in_2_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_2_V_strb_V "../tv/stream_size/stream_size_in_in_2_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_2_V_strb_V "../tv/stream_size/stream_ingress_status_in_2_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_2_V_last_V "../tv/stream_size/stream_size_in_in_2_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_2_V_last_V "../tv/stream_size/stream_ingress_status_in_2_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_3_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_3_V_data_V.dat"
#define AUTOTB_TVOUT_in_3_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_3_V_data_V.dat"
#define AUTOTB_TVIN_in_3_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_3_V_keep_V.dat"
#define AUTOTB_TVOUT_in_3_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_3_V_keep_V.dat"
#define AUTOTB_TVIN_in_3_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_3_V_strb_V.dat"
#define AUTOTB_TVOUT_in_3_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_3_V_strb_V.dat"
#define AUTOTB_TVIN_in_3_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_3_V_last_V.dat"
#define AUTOTB_TVOUT_in_3_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_3_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_3_V_data_V "../tv/stream_size/stream_size_in_in_3_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_3_V_data_V "../tv/stream_size/stream_ingress_status_in_3_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_3_V_keep_V "../tv/stream_size/stream_size_in_in_3_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_3_V_keep_V "../tv/stream_size/stream_ingress_status_in_3_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_3_V_strb_V "../tv/stream_size/stream_size_in_in_3_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_3_V_strb_V "../tv/stream_size/stream_ingress_status_in_3_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_3_V_last_V "../tv/stream_size/stream_size_in_in_3_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_3_V_last_V "../tv/stream_size/stream_ingress_status_in_3_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_4_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_4_V_data_V.dat"
#define AUTOTB_TVOUT_in_4_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_4_V_data_V.dat"
#define AUTOTB_TVIN_in_4_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_4_V_keep_V.dat"
#define AUTOTB_TVOUT_in_4_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_4_V_keep_V.dat"
#define AUTOTB_TVIN_in_4_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_4_V_strb_V.dat"
#define AUTOTB_TVOUT_in_4_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_4_V_strb_V.dat"
#define AUTOTB_TVIN_in_4_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_4_V_last_V.dat"
#define AUTOTB_TVOUT_in_4_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_4_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_4_V_data_V "../tv/stream_size/stream_size_in_in_4_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_4_V_data_V "../tv/stream_size/stream_ingress_status_in_4_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_4_V_keep_V "../tv/stream_size/stream_size_in_in_4_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_4_V_keep_V "../tv/stream_size/stream_ingress_status_in_4_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_4_V_strb_V "../tv/stream_size/stream_size_in_in_4_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_4_V_strb_V "../tv/stream_size/stream_ingress_status_in_4_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_4_V_last_V "../tv/stream_size/stream_size_in_in_4_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_4_V_last_V "../tv/stream_size/stream_ingress_status_in_4_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_5_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_5_V_data_V.dat"
#define AUTOTB_TVOUT_in_5_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_5_V_data_V.dat"
#define AUTOTB_TVIN_in_5_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_5_V_keep_V.dat"
#define AUTOTB_TVOUT_in_5_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_5_V_keep_V.dat"
#define AUTOTB_TVIN_in_5_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_5_V_strb_V.dat"
#define AUTOTB_TVOUT_in_5_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_5_V_strb_V.dat"
#define AUTOTB_TVIN_in_5_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_5_V_last_V.dat"
#define AUTOTB_TVOUT_in_5_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_5_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_5_V_data_V "../tv/stream_size/stream_size_in_in_5_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_5_V_data_V "../tv/stream_size/stream_ingress_status_in_5_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_5_V_keep_V "../tv/stream_size/stream_size_in_in_5_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_5_V_keep_V "../tv/stream_size/stream_ingress_status_in_5_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_5_V_strb_V "../tv/stream_size/stream_size_in_in_5_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_5_V_strb_V "../tv/stream_size/stream_ingress_status_in_5_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_5_V_last_V "../tv/stream_size/stream_size_in_in_5_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_5_V_last_V "../tv/stream_size/stream_ingress_status_in_5_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_6_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_6_V_data_V.dat"
#define AUTOTB_TVOUT_in_6_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_6_V_data_V.dat"
#define AUTOTB_TVIN_in_6_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_6_V_keep_V.dat"
#define AUTOTB_TVOUT_in_6_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_6_V_keep_V.dat"
#define AUTOTB_TVIN_in_6_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_6_V_strb_V.dat"
#define AUTOTB_TVOUT_in_6_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_6_V_strb_V.dat"
#define AUTOTB_TVIN_in_6_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_6_V_last_V.dat"
#define AUTOTB_TVOUT_in_6_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_6_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_6_V_data_V "../tv/stream_size/stream_size_in_in_6_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_6_V_data_V "../tv/stream_size/stream_ingress_status_in_6_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_6_V_keep_V "../tv/stream_size/stream_size_in_in_6_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_6_V_keep_V "../tv/stream_size/stream_ingress_status_in_6_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_6_V_strb_V "../tv/stream_size/stream_size_in_in_6_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_6_V_strb_V "../tv/stream_size/stream_ingress_status_in_6_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_6_V_last_V "../tv/stream_size/stream_size_in_in_6_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_6_V_last_V "../tv/stream_size/stream_ingress_status_in_6_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_7_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_7_V_data_V.dat"
#define AUTOTB_TVOUT_in_7_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_7_V_data_V.dat"
#define AUTOTB_TVIN_in_7_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_7_V_keep_V.dat"
#define AUTOTB_TVOUT_in_7_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_7_V_keep_V.dat"
#define AUTOTB_TVIN_in_7_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_7_V_strb_V.dat"
#define AUTOTB_TVOUT_in_7_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_7_V_strb_V.dat"
#define AUTOTB_TVIN_in_7_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_7_V_last_V.dat"
#define AUTOTB_TVOUT_in_7_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_7_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_7_V_data_V "../tv/stream_size/stream_size_in_in_7_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_7_V_data_V "../tv/stream_size/stream_ingress_status_in_7_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_7_V_keep_V "../tv/stream_size/stream_size_in_in_7_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_7_V_keep_V "../tv/stream_size/stream_ingress_status_in_7_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_7_V_strb_V "../tv/stream_size/stream_size_in_in_7_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_7_V_strb_V "../tv/stream_size/stream_ingress_status_in_7_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_7_V_last_V "../tv/stream_size/stream_size_in_in_7_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_7_V_last_V "../tv/stream_size/stream_ingress_status_in_7_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_8_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_8_V_data_V.dat"
#define AUTOTB_TVOUT_in_8_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_8_V_data_V.dat"
#define AUTOTB_TVIN_in_8_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_8_V_keep_V.dat"
#define AUTOTB_TVOUT_in_8_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_8_V_keep_V.dat"
#define AUTOTB_TVIN_in_8_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_8_V_strb_V.dat"
#define AUTOTB_TVOUT_in_8_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_8_V_strb_V.dat"
#define AUTOTB_TVIN_in_8_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_8_V_last_V.dat"
#define AUTOTB_TVOUT_in_8_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_8_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_8_V_data_V "../tv/stream_size/stream_size_in_in_8_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_8_V_data_V "../tv/stream_size/stream_ingress_status_in_8_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_8_V_keep_V "../tv/stream_size/stream_size_in_in_8_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_8_V_keep_V "../tv/stream_size/stream_ingress_status_in_8_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_8_V_strb_V "../tv/stream_size/stream_size_in_in_8_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_8_V_strb_V "../tv/stream_size/stream_ingress_status_in_8_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_8_V_last_V "../tv/stream_size/stream_size_in_in_8_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_8_V_last_V "../tv/stream_size/stream_ingress_status_in_8_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_in_9_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_in_9_V_data_V.dat"
#define AUTOTB_TVOUT_in_9_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_in_9_V_data_V.dat"
#define AUTOTB_TVIN_in_9_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_in_9_V_keep_V.dat"
#define AUTOTB_TVOUT_in_9_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_in_9_V_keep_V.dat"
#define AUTOTB_TVIN_in_9_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_in_9_V_strb_V.dat"
#define AUTOTB_TVOUT_in_9_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_in_9_V_strb_V.dat"
#define AUTOTB_TVIN_in_9_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_in_9_V_last_V.dat"
#define AUTOTB_TVOUT_in_9_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_in_9_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_9_V_data_V "../tv/stream_size/stream_size_in_in_9_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_9_V_data_V "../tv/stream_size/stream_ingress_status_in_9_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_9_V_keep_V "../tv/stream_size/stream_size_in_in_9_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_9_V_keep_V "../tv/stream_size/stream_ingress_status_in_9_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_9_V_strb_V "../tv/stream_size/stream_size_in_in_9_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_9_V_strb_V "../tv/stream_size/stream_ingress_status_in_9_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_in_9_V_last_V "../tv/stream_size/stream_size_in_in_9_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_in_9_V_last_V "../tv/stream_size/stream_ingress_status_in_9_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_0_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_0_V_data_V.dat"
#define AUTOTB_TVOUT_out_0_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_0_V_data_V.dat"
#define AUTOTB_TVIN_out_0_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_0_V_keep_V.dat"
#define AUTOTB_TVOUT_out_0_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_0_V_keep_V.dat"
#define AUTOTB_TVIN_out_0_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_0_V_strb_V.dat"
#define AUTOTB_TVOUT_out_0_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_0_V_strb_V.dat"
#define AUTOTB_TVIN_out_0_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_0_V_last_V.dat"
#define AUTOTB_TVOUT_out_0_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_0_V_data_V "../tv/stream_size/stream_size_out_out_0_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_0_V_data_V "../tv/stream_size/stream_egress_status_out_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_0_V_keep_V "../tv/stream_size/stream_size_out_out_0_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_0_V_keep_V "../tv/stream_size/stream_egress_status_out_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_0_V_strb_V "../tv/stream_size/stream_size_out_out_0_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_0_V_strb_V "../tv/stream_size/stream_egress_status_out_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_0_V_last_V "../tv/stream_size/stream_size_out_out_0_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_0_V_last_V "../tv/stream_size/stream_egress_status_out_0_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_1_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_1_V_data_V.dat"
#define AUTOTB_TVOUT_out_1_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_1_V_data_V.dat"
#define AUTOTB_TVIN_out_1_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_1_V_keep_V.dat"
#define AUTOTB_TVOUT_out_1_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_1_V_keep_V.dat"
#define AUTOTB_TVIN_out_1_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_1_V_strb_V.dat"
#define AUTOTB_TVOUT_out_1_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_1_V_strb_V.dat"
#define AUTOTB_TVIN_out_1_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_1_V_last_V.dat"
#define AUTOTB_TVOUT_out_1_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_1_V_data_V "../tv/stream_size/stream_size_out_out_1_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_1_V_data_V "../tv/stream_size/stream_egress_status_out_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_1_V_keep_V "../tv/stream_size/stream_size_out_out_1_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_1_V_keep_V "../tv/stream_size/stream_egress_status_out_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_1_V_strb_V "../tv/stream_size/stream_size_out_out_1_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_1_V_strb_V "../tv/stream_size/stream_egress_status_out_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_1_V_last_V "../tv/stream_size/stream_size_out_out_1_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_1_V_last_V "../tv/stream_size/stream_egress_status_out_1_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_2_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_2_V_data_V.dat"
#define AUTOTB_TVOUT_out_2_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_2_V_data_V.dat"
#define AUTOTB_TVIN_out_2_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_2_V_keep_V.dat"
#define AUTOTB_TVOUT_out_2_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_2_V_keep_V.dat"
#define AUTOTB_TVIN_out_2_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_2_V_strb_V.dat"
#define AUTOTB_TVOUT_out_2_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_2_V_strb_V.dat"
#define AUTOTB_TVIN_out_2_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_2_V_last_V.dat"
#define AUTOTB_TVOUT_out_2_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_2_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_2_V_data_V "../tv/stream_size/stream_size_out_out_2_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_2_V_data_V "../tv/stream_size/stream_egress_status_out_2_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_2_V_keep_V "../tv/stream_size/stream_size_out_out_2_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_2_V_keep_V "../tv/stream_size/stream_egress_status_out_2_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_2_V_strb_V "../tv/stream_size/stream_size_out_out_2_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_2_V_strb_V "../tv/stream_size/stream_egress_status_out_2_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_2_V_last_V "../tv/stream_size/stream_size_out_out_2_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_2_V_last_V "../tv/stream_size/stream_egress_status_out_2_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_3_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_3_V_data_V.dat"
#define AUTOTB_TVOUT_out_3_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_3_V_data_V.dat"
#define AUTOTB_TVIN_out_3_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_3_V_keep_V.dat"
#define AUTOTB_TVOUT_out_3_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_3_V_keep_V.dat"
#define AUTOTB_TVIN_out_3_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_3_V_strb_V.dat"
#define AUTOTB_TVOUT_out_3_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_3_V_strb_V.dat"
#define AUTOTB_TVIN_out_3_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_3_V_last_V.dat"
#define AUTOTB_TVOUT_out_3_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_3_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_3_V_data_V "../tv/stream_size/stream_size_out_out_3_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_3_V_data_V "../tv/stream_size/stream_egress_status_out_3_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_3_V_keep_V "../tv/stream_size/stream_size_out_out_3_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_3_V_keep_V "../tv/stream_size/stream_egress_status_out_3_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_3_V_strb_V "../tv/stream_size/stream_size_out_out_3_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_3_V_strb_V "../tv/stream_size/stream_egress_status_out_3_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_3_V_last_V "../tv/stream_size/stream_size_out_out_3_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_3_V_last_V "../tv/stream_size/stream_egress_status_out_3_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_4_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_4_V_data_V.dat"
#define AUTOTB_TVOUT_out_4_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_4_V_data_V.dat"
#define AUTOTB_TVIN_out_4_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_4_V_keep_V.dat"
#define AUTOTB_TVOUT_out_4_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_4_V_keep_V.dat"
#define AUTOTB_TVIN_out_4_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_4_V_strb_V.dat"
#define AUTOTB_TVOUT_out_4_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_4_V_strb_V.dat"
#define AUTOTB_TVIN_out_4_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_4_V_last_V.dat"
#define AUTOTB_TVOUT_out_4_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_4_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_4_V_data_V "../tv/stream_size/stream_size_out_out_4_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_4_V_data_V "../tv/stream_size/stream_egress_status_out_4_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_4_V_keep_V "../tv/stream_size/stream_size_out_out_4_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_4_V_keep_V "../tv/stream_size/stream_egress_status_out_4_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_4_V_strb_V "../tv/stream_size/stream_size_out_out_4_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_4_V_strb_V "../tv/stream_size/stream_egress_status_out_4_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_4_V_last_V "../tv/stream_size/stream_size_out_out_4_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_4_V_last_V "../tv/stream_size/stream_egress_status_out_4_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_5_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_5_V_data_V.dat"
#define AUTOTB_TVOUT_out_5_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_5_V_data_V.dat"
#define AUTOTB_TVIN_out_5_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_5_V_keep_V.dat"
#define AUTOTB_TVOUT_out_5_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_5_V_keep_V.dat"
#define AUTOTB_TVIN_out_5_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_5_V_strb_V.dat"
#define AUTOTB_TVOUT_out_5_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_5_V_strb_V.dat"
#define AUTOTB_TVIN_out_5_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_5_V_last_V.dat"
#define AUTOTB_TVOUT_out_5_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_5_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_5_V_data_V "../tv/stream_size/stream_size_out_out_5_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_5_V_data_V "../tv/stream_size/stream_egress_status_out_5_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_5_V_keep_V "../tv/stream_size/stream_size_out_out_5_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_5_V_keep_V "../tv/stream_size/stream_egress_status_out_5_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_5_V_strb_V "../tv/stream_size/stream_size_out_out_5_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_5_V_strb_V "../tv/stream_size/stream_egress_status_out_5_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_5_V_last_V "../tv/stream_size/stream_size_out_out_5_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_5_V_last_V "../tv/stream_size/stream_egress_status_out_5_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_6_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_6_V_data_V.dat"
#define AUTOTB_TVOUT_out_6_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_6_V_data_V.dat"
#define AUTOTB_TVIN_out_6_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_6_V_keep_V.dat"
#define AUTOTB_TVOUT_out_6_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_6_V_keep_V.dat"
#define AUTOTB_TVIN_out_6_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_6_V_strb_V.dat"
#define AUTOTB_TVOUT_out_6_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_6_V_strb_V.dat"
#define AUTOTB_TVIN_out_6_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_6_V_last_V.dat"
#define AUTOTB_TVOUT_out_6_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_6_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_6_V_data_V "../tv/stream_size/stream_size_out_out_6_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_6_V_data_V "../tv/stream_size/stream_egress_status_out_6_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_6_V_keep_V "../tv/stream_size/stream_size_out_out_6_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_6_V_keep_V "../tv/stream_size/stream_egress_status_out_6_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_6_V_strb_V "../tv/stream_size/stream_size_out_out_6_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_6_V_strb_V "../tv/stream_size/stream_egress_status_out_6_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_6_V_last_V "../tv/stream_size/stream_size_out_out_6_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_6_V_last_V "../tv/stream_size/stream_egress_status_out_6_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_7_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_7_V_data_V.dat"
#define AUTOTB_TVOUT_out_7_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_7_V_data_V.dat"
#define AUTOTB_TVIN_out_7_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_7_V_keep_V.dat"
#define AUTOTB_TVOUT_out_7_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_7_V_keep_V.dat"
#define AUTOTB_TVIN_out_7_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_7_V_strb_V.dat"
#define AUTOTB_TVOUT_out_7_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_7_V_strb_V.dat"
#define AUTOTB_TVIN_out_7_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_7_V_last_V.dat"
#define AUTOTB_TVOUT_out_7_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_7_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_7_V_data_V "../tv/stream_size/stream_size_out_out_7_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_7_V_data_V "../tv/stream_size/stream_egress_status_out_7_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_7_V_keep_V "../tv/stream_size/stream_size_out_out_7_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_7_V_keep_V "../tv/stream_size/stream_egress_status_out_7_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_7_V_strb_V "../tv/stream_size/stream_size_out_out_7_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_7_V_strb_V "../tv/stream_size/stream_egress_status_out_7_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_7_V_last_V "../tv/stream_size/stream_size_out_out_7_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_7_V_last_V "../tv/stream_size/stream_egress_status_out_7_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_8_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_8_V_data_V.dat"
#define AUTOTB_TVOUT_out_8_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_8_V_data_V.dat"
#define AUTOTB_TVIN_out_8_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_8_V_keep_V.dat"
#define AUTOTB_TVOUT_out_8_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_8_V_keep_V.dat"
#define AUTOTB_TVIN_out_8_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_8_V_strb_V.dat"
#define AUTOTB_TVOUT_out_8_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_8_V_strb_V.dat"
#define AUTOTB_TVIN_out_8_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_8_V_last_V.dat"
#define AUTOTB_TVOUT_out_8_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_8_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_8_V_data_V "../tv/stream_size/stream_size_out_out_8_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_8_V_data_V "../tv/stream_size/stream_egress_status_out_8_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_8_V_keep_V "../tv/stream_size/stream_size_out_out_8_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_8_V_keep_V "../tv/stream_size/stream_egress_status_out_8_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_8_V_strb_V "../tv/stream_size/stream_size_out_out_8_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_8_V_strb_V "../tv/stream_size/stream_egress_status_out_8_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_8_V_last_V "../tv/stream_size/stream_size_out_out_8_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_8_V_last_V "../tv/stream_size/stream_egress_status_out_8_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_out_9_V_data_V "../tv/cdatafile/c.myproject_axi.autotvin_out_9_V_data_V.dat"
#define AUTOTB_TVOUT_out_9_V_data_V "../tv/cdatafile/c.myproject_axi.autotvout_out_9_V_data_V.dat"
#define AUTOTB_TVIN_out_9_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvin_out_9_V_keep_V.dat"
#define AUTOTB_TVOUT_out_9_V_keep_V "../tv/cdatafile/c.myproject_axi.autotvout_out_9_V_keep_V.dat"
#define AUTOTB_TVIN_out_9_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvin_out_9_V_strb_V.dat"
#define AUTOTB_TVOUT_out_9_V_strb_V "../tv/cdatafile/c.myproject_axi.autotvout_out_9_V_strb_V.dat"
#define AUTOTB_TVIN_out_9_V_last_V "../tv/cdatafile/c.myproject_axi.autotvin_out_9_V_last_V.dat"
#define AUTOTB_TVOUT_out_9_V_last_V "../tv/cdatafile/c.myproject_axi.autotvout_out_9_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_9_V_data_V "../tv/stream_size/stream_size_out_out_9_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_9_V_data_V "../tv/stream_size/stream_egress_status_out_9_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_9_V_keep_V "../tv/stream_size/stream_size_out_out_9_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_9_V_keep_V "../tv/stream_size/stream_egress_status_out_9_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_9_V_strb_V "../tv/stream_size/stream_size_out_out_9_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_9_V_strb_V "../tv/stream_size/stream_egress_status_out_9_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_out_9_V_last_V "../tv/stream_size/stream_size_out_out_9_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_out_9_V_last_V "../tv/stream_size/stream_egress_status_out_9_V_last_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_in_0_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_0_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_0_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_0_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_0_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_1_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_1_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_1_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_1_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_1_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_2_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_2_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_2_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_2_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_2_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_2_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_2_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_2_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_3_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_3_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_3_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_3_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_3_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_3_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_3_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_3_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_4_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_4_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_4_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_4_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_4_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_4_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_4_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_4_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_5_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_5_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_5_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_5_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_5_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_5_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_5_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_5_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_6_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_6_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_6_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_6_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_6_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_6_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_6_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_6_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_7_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_7_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_7_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_7_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_7_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_7_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_7_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_7_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_8_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_8_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_8_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_8_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_8_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_8_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_8_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_8_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_in_9_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_9_V_data_V.dat"
#define AUTOTB_TVOUT_PC_in_9_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_9_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_in_9_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_9_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_in_9_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_in_9_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_0_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_0_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_0_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_0_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_0_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_1_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_1_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_1_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_1_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_1_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_2_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_2_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_2_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_2_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_2_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_2_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_2_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_2_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_3_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_3_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_3_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_3_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_3_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_3_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_3_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_3_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_4_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_4_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_4_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_4_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_4_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_4_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_4_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_4_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_5_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_5_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_5_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_5_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_5_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_5_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_5_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_5_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_6_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_6_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_6_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_6_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_6_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_6_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_6_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_6_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_7_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_7_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_7_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_7_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_7_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_7_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_7_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_7_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_8_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_8_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_8_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_8_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_8_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_8_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_8_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_8_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_out_9_V_data_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_9_V_data_V.dat"
#define AUTOTB_TVOUT_PC_out_9_V_keep_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_9_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_out_9_V_strb_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_9_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_out_9_V_last_V "../tv/rtldatafile/rtl.myproject_axi.autotvout_out_9_V_last_V.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  in_0_V_data_V_depth = 0;
  in_0_V_keep_V_depth = 0;
  in_0_V_strb_V_depth = 0;
  in_0_V_last_V_depth = 0;
  in_1_V_data_V_depth = 0;
  in_1_V_keep_V_depth = 0;
  in_1_V_strb_V_depth = 0;
  in_1_V_last_V_depth = 0;
  in_2_V_data_V_depth = 0;
  in_2_V_keep_V_depth = 0;
  in_2_V_strb_V_depth = 0;
  in_2_V_last_V_depth = 0;
  in_3_V_data_V_depth = 0;
  in_3_V_keep_V_depth = 0;
  in_3_V_strb_V_depth = 0;
  in_3_V_last_V_depth = 0;
  in_4_V_data_V_depth = 0;
  in_4_V_keep_V_depth = 0;
  in_4_V_strb_V_depth = 0;
  in_4_V_last_V_depth = 0;
  in_5_V_data_V_depth = 0;
  in_5_V_keep_V_depth = 0;
  in_5_V_strb_V_depth = 0;
  in_5_V_last_V_depth = 0;
  in_6_V_data_V_depth = 0;
  in_6_V_keep_V_depth = 0;
  in_6_V_strb_V_depth = 0;
  in_6_V_last_V_depth = 0;
  in_7_V_data_V_depth = 0;
  in_7_V_keep_V_depth = 0;
  in_7_V_strb_V_depth = 0;
  in_7_V_last_V_depth = 0;
  in_8_V_data_V_depth = 0;
  in_8_V_keep_V_depth = 0;
  in_8_V_strb_V_depth = 0;
  in_8_V_last_V_depth = 0;
  in_9_V_data_V_depth = 0;
  in_9_V_keep_V_depth = 0;
  in_9_V_strb_V_depth = 0;
  in_9_V_last_V_depth = 0;
  out_0_V_data_V_depth = 0;
  out_0_V_keep_V_depth = 0;
  out_0_V_strb_V_depth = 0;
  out_0_V_last_V_depth = 0;
  out_1_V_data_V_depth = 0;
  out_1_V_keep_V_depth = 0;
  out_1_V_strb_V_depth = 0;
  out_1_V_last_V_depth = 0;
  out_2_V_data_V_depth = 0;
  out_2_V_keep_V_depth = 0;
  out_2_V_strb_V_depth = 0;
  out_2_V_last_V_depth = 0;
  out_3_V_data_V_depth = 0;
  out_3_V_keep_V_depth = 0;
  out_3_V_strb_V_depth = 0;
  out_3_V_last_V_depth = 0;
  out_4_V_data_V_depth = 0;
  out_4_V_keep_V_depth = 0;
  out_4_V_strb_V_depth = 0;
  out_4_V_last_V_depth = 0;
  out_5_V_data_V_depth = 0;
  out_5_V_keep_V_depth = 0;
  out_5_V_strb_V_depth = 0;
  out_5_V_last_V_depth = 0;
  out_6_V_data_V_depth = 0;
  out_6_V_keep_V_depth = 0;
  out_6_V_strb_V_depth = 0;
  out_6_V_last_V_depth = 0;
  out_7_V_data_V_depth = 0;
  out_7_V_keep_V_depth = 0;
  out_7_V_strb_V_depth = 0;
  out_7_V_last_V_depth = 0;
  out_8_V_data_V_depth = 0;
  out_8_V_keep_V_depth = 0;
  out_8_V_strb_V_depth = 0;
  out_8_V_last_V_depth = 0;
  out_9_V_data_V_depth = 0;
  out_9_V_keep_V_depth = 0;
  out_9_V_strb_V_depth = 0;
  out_9_V_last_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{in_0_V_data_V " << in_0_V_data_V_depth << "}\n";
  total_list << "{in_0_V_keep_V " << in_0_V_keep_V_depth << "}\n";
  total_list << "{in_0_V_strb_V " << in_0_V_strb_V_depth << "}\n";
  total_list << "{in_0_V_last_V " << in_0_V_last_V_depth << "}\n";
  total_list << "{in_1_V_data_V " << in_1_V_data_V_depth << "}\n";
  total_list << "{in_1_V_keep_V " << in_1_V_keep_V_depth << "}\n";
  total_list << "{in_1_V_strb_V " << in_1_V_strb_V_depth << "}\n";
  total_list << "{in_1_V_last_V " << in_1_V_last_V_depth << "}\n";
  total_list << "{in_2_V_data_V " << in_2_V_data_V_depth << "}\n";
  total_list << "{in_2_V_keep_V " << in_2_V_keep_V_depth << "}\n";
  total_list << "{in_2_V_strb_V " << in_2_V_strb_V_depth << "}\n";
  total_list << "{in_2_V_last_V " << in_2_V_last_V_depth << "}\n";
  total_list << "{in_3_V_data_V " << in_3_V_data_V_depth << "}\n";
  total_list << "{in_3_V_keep_V " << in_3_V_keep_V_depth << "}\n";
  total_list << "{in_3_V_strb_V " << in_3_V_strb_V_depth << "}\n";
  total_list << "{in_3_V_last_V " << in_3_V_last_V_depth << "}\n";
  total_list << "{in_4_V_data_V " << in_4_V_data_V_depth << "}\n";
  total_list << "{in_4_V_keep_V " << in_4_V_keep_V_depth << "}\n";
  total_list << "{in_4_V_strb_V " << in_4_V_strb_V_depth << "}\n";
  total_list << "{in_4_V_last_V " << in_4_V_last_V_depth << "}\n";
  total_list << "{in_5_V_data_V " << in_5_V_data_V_depth << "}\n";
  total_list << "{in_5_V_keep_V " << in_5_V_keep_V_depth << "}\n";
  total_list << "{in_5_V_strb_V " << in_5_V_strb_V_depth << "}\n";
  total_list << "{in_5_V_last_V " << in_5_V_last_V_depth << "}\n";
  total_list << "{in_6_V_data_V " << in_6_V_data_V_depth << "}\n";
  total_list << "{in_6_V_keep_V " << in_6_V_keep_V_depth << "}\n";
  total_list << "{in_6_V_strb_V " << in_6_V_strb_V_depth << "}\n";
  total_list << "{in_6_V_last_V " << in_6_V_last_V_depth << "}\n";
  total_list << "{in_7_V_data_V " << in_7_V_data_V_depth << "}\n";
  total_list << "{in_7_V_keep_V " << in_7_V_keep_V_depth << "}\n";
  total_list << "{in_7_V_strb_V " << in_7_V_strb_V_depth << "}\n";
  total_list << "{in_7_V_last_V " << in_7_V_last_V_depth << "}\n";
  total_list << "{in_8_V_data_V " << in_8_V_data_V_depth << "}\n";
  total_list << "{in_8_V_keep_V " << in_8_V_keep_V_depth << "}\n";
  total_list << "{in_8_V_strb_V " << in_8_V_strb_V_depth << "}\n";
  total_list << "{in_8_V_last_V " << in_8_V_last_V_depth << "}\n";
  total_list << "{in_9_V_data_V " << in_9_V_data_V_depth << "}\n";
  total_list << "{in_9_V_keep_V " << in_9_V_keep_V_depth << "}\n";
  total_list << "{in_9_V_strb_V " << in_9_V_strb_V_depth << "}\n";
  total_list << "{in_9_V_last_V " << in_9_V_last_V_depth << "}\n";
  total_list << "{out_0_V_data_V " << out_0_V_data_V_depth << "}\n";
  total_list << "{out_0_V_keep_V " << out_0_V_keep_V_depth << "}\n";
  total_list << "{out_0_V_strb_V " << out_0_V_strb_V_depth << "}\n";
  total_list << "{out_0_V_last_V " << out_0_V_last_V_depth << "}\n";
  total_list << "{out_1_V_data_V " << out_1_V_data_V_depth << "}\n";
  total_list << "{out_1_V_keep_V " << out_1_V_keep_V_depth << "}\n";
  total_list << "{out_1_V_strb_V " << out_1_V_strb_V_depth << "}\n";
  total_list << "{out_1_V_last_V " << out_1_V_last_V_depth << "}\n";
  total_list << "{out_2_V_data_V " << out_2_V_data_V_depth << "}\n";
  total_list << "{out_2_V_keep_V " << out_2_V_keep_V_depth << "}\n";
  total_list << "{out_2_V_strb_V " << out_2_V_strb_V_depth << "}\n";
  total_list << "{out_2_V_last_V " << out_2_V_last_V_depth << "}\n";
  total_list << "{out_3_V_data_V " << out_3_V_data_V_depth << "}\n";
  total_list << "{out_3_V_keep_V " << out_3_V_keep_V_depth << "}\n";
  total_list << "{out_3_V_strb_V " << out_3_V_strb_V_depth << "}\n";
  total_list << "{out_3_V_last_V " << out_3_V_last_V_depth << "}\n";
  total_list << "{out_4_V_data_V " << out_4_V_data_V_depth << "}\n";
  total_list << "{out_4_V_keep_V " << out_4_V_keep_V_depth << "}\n";
  total_list << "{out_4_V_strb_V " << out_4_V_strb_V_depth << "}\n";
  total_list << "{out_4_V_last_V " << out_4_V_last_V_depth << "}\n";
  total_list << "{out_5_V_data_V " << out_5_V_data_V_depth << "}\n";
  total_list << "{out_5_V_keep_V " << out_5_V_keep_V_depth << "}\n";
  total_list << "{out_5_V_strb_V " << out_5_V_strb_V_depth << "}\n";
  total_list << "{out_5_V_last_V " << out_5_V_last_V_depth << "}\n";
  total_list << "{out_6_V_data_V " << out_6_V_data_V_depth << "}\n";
  total_list << "{out_6_V_keep_V " << out_6_V_keep_V_depth << "}\n";
  total_list << "{out_6_V_strb_V " << out_6_V_strb_V_depth << "}\n";
  total_list << "{out_6_V_last_V " << out_6_V_last_V_depth << "}\n";
  total_list << "{out_7_V_data_V " << out_7_V_data_V_depth << "}\n";
  total_list << "{out_7_V_keep_V " << out_7_V_keep_V_depth << "}\n";
  total_list << "{out_7_V_strb_V " << out_7_V_strb_V_depth << "}\n";
  total_list << "{out_7_V_last_V " << out_7_V_last_V_depth << "}\n";
  total_list << "{out_8_V_data_V " << out_8_V_data_V_depth << "}\n";
  total_list << "{out_8_V_keep_V " << out_8_V_keep_V_depth << "}\n";
  total_list << "{out_8_V_strb_V " << out_8_V_strb_V_depth << "}\n";
  total_list << "{out_8_V_last_V " << out_8_V_last_V_depth << "}\n";
  total_list << "{out_9_V_data_V " << out_9_V_data_V_depth << "}\n";
  total_list << "{out_9_V_keep_V " << out_9_V_keep_V_depth << "}\n";
  total_list << "{out_9_V_strb_V " << out_9_V_strb_V_depth << "}\n";
  total_list << "{out_9_V_last_V " << out_9_V_last_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int in_0_V_data_V_depth;
    int in_0_V_keep_V_depth;
    int in_0_V_strb_V_depth;
    int in_0_V_last_V_depth;
    int in_1_V_data_V_depth;
    int in_1_V_keep_V_depth;
    int in_1_V_strb_V_depth;
    int in_1_V_last_V_depth;
    int in_2_V_data_V_depth;
    int in_2_V_keep_V_depth;
    int in_2_V_strb_V_depth;
    int in_2_V_last_V_depth;
    int in_3_V_data_V_depth;
    int in_3_V_keep_V_depth;
    int in_3_V_strb_V_depth;
    int in_3_V_last_V_depth;
    int in_4_V_data_V_depth;
    int in_4_V_keep_V_depth;
    int in_4_V_strb_V_depth;
    int in_4_V_last_V_depth;
    int in_5_V_data_V_depth;
    int in_5_V_keep_V_depth;
    int in_5_V_strb_V_depth;
    int in_5_V_last_V_depth;
    int in_6_V_data_V_depth;
    int in_6_V_keep_V_depth;
    int in_6_V_strb_V_depth;
    int in_6_V_last_V_depth;
    int in_7_V_data_V_depth;
    int in_7_V_keep_V_depth;
    int in_7_V_strb_V_depth;
    int in_7_V_last_V_depth;
    int in_8_V_data_V_depth;
    int in_8_V_keep_V_depth;
    int in_8_V_strb_V_depth;
    int in_8_V_last_V_depth;
    int in_9_V_data_V_depth;
    int in_9_V_keep_V_depth;
    int in_9_V_strb_V_depth;
    int in_9_V_last_V_depth;
    int out_0_V_data_V_depth;
    int out_0_V_keep_V_depth;
    int out_0_V_strb_V_depth;
    int out_0_V_last_V_depth;
    int out_1_V_data_V_depth;
    int out_1_V_keep_V_depth;
    int out_1_V_strb_V_depth;
    int out_1_V_last_V_depth;
    int out_2_V_data_V_depth;
    int out_2_V_keep_V_depth;
    int out_2_V_strb_V_depth;
    int out_2_V_last_V_depth;
    int out_3_V_data_V_depth;
    int out_3_V_keep_V_depth;
    int out_3_V_strb_V_depth;
    int out_3_V_last_V_depth;
    int out_4_V_data_V_depth;
    int out_4_V_keep_V_depth;
    int out_4_V_strb_V_depth;
    int out_4_V_last_V_depth;
    int out_5_V_data_V_depth;
    int out_5_V_keep_V_depth;
    int out_5_V_strb_V_depth;
    int out_5_V_last_V_depth;
    int out_6_V_data_V_depth;
    int out_6_V_keep_V_depth;
    int out_6_V_strb_V_depth;
    int out_6_V_last_V_depth;
    int out_7_V_data_V_depth;
    int out_7_V_keep_V_depth;
    int out_7_V_strb_V_depth;
    int out_7_V_last_V_depth;
    int out_8_V_data_V_depth;
    int out_8_V_keep_V_depth;
    int out_8_V_strb_V_depth;
    int out_8_V_last_V_depth;
    int out_9_V_data_V_depth;
    int out_9_V_keep_V_depth;
    int out_9_V_strb_V_depth;
    int out_9_V_last_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
extern "C" void myproject_axi_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_myproject_axi_hw(volatile void * __xlx_apatb_param_in_0_V_data_V, volatile void * __xlx_apatb_param_in_0_V_keep_V, volatile void * __xlx_apatb_param_in_0_V_strb_V, volatile void * __xlx_apatb_param_in_0_V_last_V, volatile void * __xlx_apatb_param_in_1_V_data_V, volatile void * __xlx_apatb_param_in_1_V_keep_V, volatile void * __xlx_apatb_param_in_1_V_strb_V, volatile void * __xlx_apatb_param_in_1_V_last_V, volatile void * __xlx_apatb_param_in_2_V_data_V, volatile void * __xlx_apatb_param_in_2_V_keep_V, volatile void * __xlx_apatb_param_in_2_V_strb_V, volatile void * __xlx_apatb_param_in_2_V_last_V, volatile void * __xlx_apatb_param_in_3_V_data_V, volatile void * __xlx_apatb_param_in_3_V_keep_V, volatile void * __xlx_apatb_param_in_3_V_strb_V, volatile void * __xlx_apatb_param_in_3_V_last_V, volatile void * __xlx_apatb_param_in_4_V_data_V, volatile void * __xlx_apatb_param_in_4_V_keep_V, volatile void * __xlx_apatb_param_in_4_V_strb_V, volatile void * __xlx_apatb_param_in_4_V_last_V, volatile void * __xlx_apatb_param_in_5_V_data_V, volatile void * __xlx_apatb_param_in_5_V_keep_V, volatile void * __xlx_apatb_param_in_5_V_strb_V, volatile void * __xlx_apatb_param_in_5_V_last_V, volatile void * __xlx_apatb_param_in_6_V_data_V, volatile void * __xlx_apatb_param_in_6_V_keep_V, volatile void * __xlx_apatb_param_in_6_V_strb_V, volatile void * __xlx_apatb_param_in_6_V_last_V, volatile void * __xlx_apatb_param_in_7_V_data_V, volatile void * __xlx_apatb_param_in_7_V_keep_V, volatile void * __xlx_apatb_param_in_7_V_strb_V, volatile void * __xlx_apatb_param_in_7_V_last_V, volatile void * __xlx_apatb_param_in_8_V_data_V, volatile void * __xlx_apatb_param_in_8_V_keep_V, volatile void * __xlx_apatb_param_in_8_V_strb_V, volatile void * __xlx_apatb_param_in_8_V_last_V, volatile void * __xlx_apatb_param_in_9_V_data_V, volatile void * __xlx_apatb_param_in_9_V_keep_V, volatile void * __xlx_apatb_param_in_9_V_strb_V, volatile void * __xlx_apatb_param_in_9_V_last_V, volatile void * __xlx_apatb_param_out_0_V_data_V, volatile void * __xlx_apatb_param_out_0_V_keep_V, volatile void * __xlx_apatb_param_out_0_V_strb_V, volatile void * __xlx_apatb_param_out_0_V_last_V, volatile void * __xlx_apatb_param_out_1_V_data_V, volatile void * __xlx_apatb_param_out_1_V_keep_V, volatile void * __xlx_apatb_param_out_1_V_strb_V, volatile void * __xlx_apatb_param_out_1_V_last_V, volatile void * __xlx_apatb_param_out_2_V_data_V, volatile void * __xlx_apatb_param_out_2_V_keep_V, volatile void * __xlx_apatb_param_out_2_V_strb_V, volatile void * __xlx_apatb_param_out_2_V_last_V, volatile void * __xlx_apatb_param_out_3_V_data_V, volatile void * __xlx_apatb_param_out_3_V_keep_V, volatile void * __xlx_apatb_param_out_3_V_strb_V, volatile void * __xlx_apatb_param_out_3_V_last_V, volatile void * __xlx_apatb_param_out_4_V_data_V, volatile void * __xlx_apatb_param_out_4_V_keep_V, volatile void * __xlx_apatb_param_out_4_V_strb_V, volatile void * __xlx_apatb_param_out_4_V_last_V, volatile void * __xlx_apatb_param_out_5_V_data_V, volatile void * __xlx_apatb_param_out_5_V_keep_V, volatile void * __xlx_apatb_param_out_5_V_strb_V, volatile void * __xlx_apatb_param_out_5_V_last_V, volatile void * __xlx_apatb_param_out_6_V_data_V, volatile void * __xlx_apatb_param_out_6_V_keep_V, volatile void * __xlx_apatb_param_out_6_V_strb_V, volatile void * __xlx_apatb_param_out_6_V_last_V, volatile void * __xlx_apatb_param_out_7_V_data_V, volatile void * __xlx_apatb_param_out_7_V_keep_V, volatile void * __xlx_apatb_param_out_7_V_strb_V, volatile void * __xlx_apatb_param_out_7_V_last_V, volatile void * __xlx_apatb_param_out_8_V_data_V, volatile void * __xlx_apatb_param_out_8_V_keep_V, volatile void * __xlx_apatb_param_out_8_V_strb_V, volatile void * __xlx_apatb_param_out_8_V_last_V, volatile void * __xlx_apatb_param_out_9_V_data_V, volatile void * __xlx_apatb_param_out_9_V_keep_V, volatile void * __xlx_apatb_param_out_9_V_strb_V, volatile void * __xlx_apatb_param_out_9_V_last_V) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_in_0_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_0_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_0_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_0_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_0_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_0_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_0_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_0_V_last_V)->read();
}
long __xlx_apatb_param_in_1_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_1_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_1_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_1_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_1_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_1_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_1_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_1_V_last_V)->read();
}
long __xlx_apatb_param_in_2_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_2_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_2_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_2_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_2_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_2_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_2_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_2_V_last_V)->read();
}
long __xlx_apatb_param_in_3_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_3_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_3_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_3_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_3_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_3_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_3_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_3_V_last_V)->read();
}
long __xlx_apatb_param_in_4_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_4_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_4_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_4_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_4_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_4_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_4_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_4_V_last_V)->read();
}
long __xlx_apatb_param_in_5_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_5_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_5_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_5_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_5_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_5_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_5_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_5_V_last_V)->read();
}
long __xlx_apatb_param_in_6_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_6_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_6_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_6_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_6_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_6_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_6_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_6_V_last_V)->read();
}
long __xlx_apatb_param_in_7_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_7_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_7_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_7_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_7_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_7_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_7_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_7_V_last_V)->read();
}
long __xlx_apatb_param_in_8_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_8_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_8_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_8_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_8_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_8_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_8_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_8_V_last_V)->read();
}
long __xlx_apatb_param_in_9_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_in_9_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_in_9_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_in_9_stream_buf_final_size; ++i) {
((hls::stream<int>*)__xlx_apatb_param_in_9_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_9_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_9_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_in_9_V_last_V)->read();
}
{unsigned xlx_stream_out_0_size = 0;

          std::vector<sc_bv<32> > out_0_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_0_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_0_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_0_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_0_size=out_0_V_data_V_pc_buffer.size();
out_0_V_data_V_pc_buffer_Copy=out_0_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_0_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_0_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_0_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_0_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_0_size=out_0_V_keep_V_pc_buffer.size();
out_0_V_keep_V_pc_buffer_Copy=out_0_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_0_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_0_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_0_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_0_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_0_size=out_0_V_strb_V_pc_buffer.size();
out_0_V_strb_V_pc_buffer_Copy=out_0_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_0_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_0_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_0_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_0");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_0_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_0" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_0_size=out_0_V_last_V_pc_buffer.size();
out_0_V_last_V_pc_buffer_Copy=out_0_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_0_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_0_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_0_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_0_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_0_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_0_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_0_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_0_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_0_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_1_size = 0;

          std::vector<sc_bv<32> > out_1_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_1_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_1_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_1_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_1_size=out_1_V_data_V_pc_buffer.size();
out_1_V_data_V_pc_buffer_Copy=out_1_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_1_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_1_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_1_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_1_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_1_size=out_1_V_keep_V_pc_buffer.size();
out_1_V_keep_V_pc_buffer_Copy=out_1_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_1_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_1_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_1_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_1_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_1_size=out_1_V_strb_V_pc_buffer.size();
out_1_V_strb_V_pc_buffer_Copy=out_1_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_1_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_1_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_1_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_1");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_1_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_1_size=out_1_V_last_V_pc_buffer.size();
out_1_V_last_V_pc_buffer_Copy=out_1_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_1_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_1_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_1_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_1_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_1_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_1_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_1_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_1_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_1_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_2_size = 0;

          std::vector<sc_bv<32> > out_2_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_2_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_2_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_2_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_2_size=out_2_V_data_V_pc_buffer.size();
out_2_V_data_V_pc_buffer_Copy=out_2_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_2_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_2_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_2_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_2_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_2_size=out_2_V_keep_V_pc_buffer.size();
out_2_V_keep_V_pc_buffer_Copy=out_2_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_2_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_2_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_2_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_2_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_2_size=out_2_V_strb_V_pc_buffer.size();
out_2_V_strb_V_pc_buffer_Copy=out_2_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_2_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_2_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_2_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_2_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_2_size=out_2_V_last_V_pc_buffer.size();
out_2_V_last_V_pc_buffer_Copy=out_2_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_2_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_2_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_2_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_2_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_2_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_2_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_2_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_2_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_2_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_3_size = 0;

          std::vector<sc_bv<32> > out_3_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_3_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_3_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_3_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_3_size=out_3_V_data_V_pc_buffer.size();
out_3_V_data_V_pc_buffer_Copy=out_3_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_3_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_3_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_3_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_3_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_3_size=out_3_V_keep_V_pc_buffer.size();
out_3_V_keep_V_pc_buffer_Copy=out_3_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_3_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_3_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_3_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_3_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_3_size=out_3_V_strb_V_pc_buffer.size();
out_3_V_strb_V_pc_buffer_Copy=out_3_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_3_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_3_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_3_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_3_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_3_size=out_3_V_last_V_pc_buffer.size();
out_3_V_last_V_pc_buffer_Copy=out_3_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_3_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_3_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_3_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_3_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_3_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_3_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_3_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_3_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_3_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_4_size = 0;

          std::vector<sc_bv<32> > out_4_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_4_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_4_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_4_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_4_size=out_4_V_data_V_pc_buffer.size();
out_4_V_data_V_pc_buffer_Copy=out_4_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_4_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_4_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_4_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_4_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_4_size=out_4_V_keep_V_pc_buffer.size();
out_4_V_keep_V_pc_buffer_Copy=out_4_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_4_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_4_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_4_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_4_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_4_size=out_4_V_strb_V_pc_buffer.size();
out_4_V_strb_V_pc_buffer_Copy=out_4_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_4_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_4_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_4_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_4");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_4_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_4_size=out_4_V_last_V_pc_buffer.size();
out_4_V_last_V_pc_buffer_Copy=out_4_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_4_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_4_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_4_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_4_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_4_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_4_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_4_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_4_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_4_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_5_size = 0;

          std::vector<sc_bv<32> > out_5_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_5_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_5_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_5_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_5_size=out_5_V_data_V_pc_buffer.size();
out_5_V_data_V_pc_buffer_Copy=out_5_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_5_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_5_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_5_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_5_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_5_size=out_5_V_keep_V_pc_buffer.size();
out_5_V_keep_V_pc_buffer_Copy=out_5_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_5_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_5_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_5_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_5_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_5_size=out_5_V_strb_V_pc_buffer.size();
out_5_V_strb_V_pc_buffer_Copy=out_5_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_5_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_5_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_5_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_5");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_5_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_5_size=out_5_V_last_V_pc_buffer.size();
out_5_V_last_V_pc_buffer_Copy=out_5_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_5_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_5_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_5_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_5_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_5_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_5_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_5_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_5_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_5_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_6_size = 0;

          std::vector<sc_bv<32> > out_6_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_6_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_6_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_6_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_6_size=out_6_V_data_V_pc_buffer.size();
out_6_V_data_V_pc_buffer_Copy=out_6_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_6_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_6_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_6_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_6_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_6_size=out_6_V_keep_V_pc_buffer.size();
out_6_V_keep_V_pc_buffer_Copy=out_6_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_6_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_6_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_6_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_6_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_6_size=out_6_V_strb_V_pc_buffer.size();
out_6_V_strb_V_pc_buffer_Copy=out_6_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_6_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_6_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_6_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_6");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_6_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_6_size=out_6_V_last_V_pc_buffer.size();
out_6_V_last_V_pc_buffer_Copy=out_6_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_6_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_6_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_6_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_6_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_6_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_6_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_6_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_6_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_6_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_7_size = 0;

          std::vector<sc_bv<32> > out_7_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_7_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_7_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_7_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_7_size=out_7_V_data_V_pc_buffer.size();
out_7_V_data_V_pc_buffer_Copy=out_7_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_7_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_7_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_7_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_7_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_7_size=out_7_V_keep_V_pc_buffer.size();
out_7_V_keep_V_pc_buffer_Copy=out_7_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_7_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_7_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_7_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_7_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_7_size=out_7_V_strb_V_pc_buffer.size();
out_7_V_strb_V_pc_buffer_Copy=out_7_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_7_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_7_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_7_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_7");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_7_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_7_size=out_7_V_last_V_pc_buffer.size();
out_7_V_last_V_pc_buffer_Copy=out_7_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_7_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_7_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_7_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_7_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_7_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_7_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_7_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_7_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_7_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_8_size = 0;

          std::vector<sc_bv<32> > out_8_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_8_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_8_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_8_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_8_size=out_8_V_data_V_pc_buffer.size();
out_8_V_data_V_pc_buffer_Copy=out_8_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_8_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_8_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_8_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_8_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_8_size=out_8_V_keep_V_pc_buffer.size();
out_8_V_keep_V_pc_buffer_Copy=out_8_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_8_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_8_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_8_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_8_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_8_size=out_8_V_strb_V_pc_buffer.size();
out_8_V_strb_V_pc_buffer_Copy=out_8_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_8_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_8_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_8_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_8");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_8_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_8" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_8_size=out_8_V_last_V_pc_buffer.size();
out_8_V_last_V_pc_buffer_Copy=out_8_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_8_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_8_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_8_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_8_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_8_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_8_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_8_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_8_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_8_V_last_V)->write(xlx_stream_elt_last);
}}{unsigned xlx_stream_out_9_size = 0;

          std::vector<sc_bv<32> > out_9_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_9_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_9_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_9_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_9_size=out_9_V_data_V_pc_buffer.size();
out_9_V_data_V_pc_buffer_Copy=out_9_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_9_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_9_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_9_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_9_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_9_size=out_9_V_keep_V_pc_buffer.size();
out_9_V_keep_V_pc_buffer_Copy=out_9_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_9_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_9_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_9_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_9_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_9_size=out_9_V_strb_V_pc_buffer.size();
out_9_V_strb_V_pc_buffer_Copy=out_9_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<32> > out_9_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_out_9_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > out_9_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "out_9");
  
            // push token into output port buffer
            if (AESL_token != "") {
              out_9_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "out_9" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_out_9_size=out_9_V_last_V_pc_buffer.size();
out_9_V_last_V_pc_buffer_Copy=out_9_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_out_9_size; j != e; ++j) {
int xlx_stream_elt_data;
((int*)&xlx_stream_elt_data)[0] = out_9_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<int>*)__xlx_apatb_param_out_9_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = out_9_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_9_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = out_9_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_out_9_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = out_9_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_out_9_V_last_V)->write(xlx_stream_elt_last);
}}
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_2_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_2_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_2_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_2_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_2_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_2_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_2_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_2_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_3_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_3_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_3_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_3_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_3_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_3_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_3_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_3_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_4_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_4_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_4_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_4_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_4_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_4_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_4_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_4_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_5_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_5_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_5_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_5_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_5_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_5_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_5_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_5_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_6_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_6_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_6_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_6_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_6_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_6_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_6_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_6_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_7_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_7_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_7_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_7_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_7_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_7_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_7_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_7_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_8_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_8_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_8_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_8_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_8_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_8_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_8_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_8_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_9_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_9_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_9_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_9_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_9_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_9_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_in_9_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_in_9_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_0_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_0_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_0_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_0_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_1_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_1_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_1_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_1_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_2_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_2_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_2_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_2_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_2_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_2_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_2_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_2_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_3_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_3_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_3_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_3_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_3_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_3_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_3_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_3_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_4_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_4_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_4_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_4_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_4_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_4_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_4_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_4_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_5_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_5_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_5_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_5_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_5_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_5_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_5_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_5_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_6_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_6_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_6_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_6_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_6_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_6_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_6_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_6_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_7_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_7_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_7_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_7_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_7_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_7_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_7_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_7_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_8_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_8_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_8_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_8_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_8_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_8_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_8_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_8_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_9_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_9_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_9_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_9_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_9_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_9_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_out_9_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_out_9_V_last_V);
CodeState = DUMP_INPUTS;
// data
std::vector<int> __xlx_apatb_param_in_0_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_0_V_data_V)->empty())
    __xlx_apatb_param_in_0_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_0_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_0_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_0_V_data_V)->write(__xlx_apatb_param_in_0_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_0_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_0_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_0_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_0_V_keep_V)->empty())
    __xlx_apatb_param_in_0_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_0_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_0_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_0_V_keep_V)->write(__xlx_apatb_param_in_0_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_0_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_0_V_strb_V)->empty())
    __xlx_apatb_param_in_0_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_0_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_0_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_0_V_strb_V)->write(__xlx_apatb_param_in_0_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_0_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_0_V_last_V)->empty())
    __xlx_apatb_param_in_0_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_0_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_0_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_0_V_last_V)->write(__xlx_apatb_param_in_0_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_1_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_1_V_data_V)->empty())
    __xlx_apatb_param_in_1_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_1_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_1_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_1_V_data_V)->write(__xlx_apatb_param_in_1_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_1_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_1_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_1_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_1_V_keep_V)->empty())
    __xlx_apatb_param_in_1_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_1_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_1_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_1_V_keep_V)->write(__xlx_apatb_param_in_1_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_1_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_1_V_strb_V)->empty())
    __xlx_apatb_param_in_1_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_1_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_1_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_1_V_strb_V)->write(__xlx_apatb_param_in_1_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_1_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_1_V_last_V)->empty())
    __xlx_apatb_param_in_1_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_1_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_1_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_1_V_last_V)->write(__xlx_apatb_param_in_1_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_2_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_2_V_data_V)->empty())
    __xlx_apatb_param_in_2_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_2_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_2_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_2_V_data_V)->write(__xlx_apatb_param_in_2_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_2_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_2_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_2_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_2_V_keep_V)->empty())
    __xlx_apatb_param_in_2_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_2_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_2_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_2_V_keep_V)->write(__xlx_apatb_param_in_2_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_2_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_2_V_strb_V)->empty())
    __xlx_apatb_param_in_2_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_2_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_2_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_2_V_strb_V)->write(__xlx_apatb_param_in_2_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_2_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_2_V_last_V)->empty())
    __xlx_apatb_param_in_2_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_2_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_2_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_2_V_last_V)->write(__xlx_apatb_param_in_2_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_3_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_3_V_data_V)->empty())
    __xlx_apatb_param_in_3_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_3_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_3_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_3_V_data_V)->write(__xlx_apatb_param_in_3_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_3_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_3_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_3_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_3_V_keep_V)->empty())
    __xlx_apatb_param_in_3_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_3_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_3_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_3_V_keep_V)->write(__xlx_apatb_param_in_3_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_3_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_3_V_strb_V)->empty())
    __xlx_apatb_param_in_3_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_3_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_3_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_3_V_strb_V)->write(__xlx_apatb_param_in_3_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_3_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_3_V_last_V)->empty())
    __xlx_apatb_param_in_3_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_3_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_3_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_3_V_last_V)->write(__xlx_apatb_param_in_3_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_4_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_4_V_data_V)->empty())
    __xlx_apatb_param_in_4_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_4_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_4_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_4_V_data_V)->write(__xlx_apatb_param_in_4_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_4_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_4_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_4_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_4_V_keep_V)->empty())
    __xlx_apatb_param_in_4_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_4_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_4_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_4_V_keep_V)->write(__xlx_apatb_param_in_4_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_4_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_4_V_strb_V)->empty())
    __xlx_apatb_param_in_4_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_4_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_4_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_4_V_strb_V)->write(__xlx_apatb_param_in_4_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_4_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_4_V_last_V)->empty())
    __xlx_apatb_param_in_4_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_4_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_4_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_4_V_last_V)->write(__xlx_apatb_param_in_4_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_5_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_5_V_data_V)->empty())
    __xlx_apatb_param_in_5_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_5_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_5_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_5_V_data_V)->write(__xlx_apatb_param_in_5_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_5_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_5_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_5_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_5_V_keep_V)->empty())
    __xlx_apatb_param_in_5_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_5_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_5_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_5_V_keep_V)->write(__xlx_apatb_param_in_5_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_5_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_5_V_strb_V)->empty())
    __xlx_apatb_param_in_5_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_5_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_5_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_5_V_strb_V)->write(__xlx_apatb_param_in_5_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_5_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_5_V_last_V)->empty())
    __xlx_apatb_param_in_5_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_5_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_5_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_5_V_last_V)->write(__xlx_apatb_param_in_5_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_6_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_6_V_data_V)->empty())
    __xlx_apatb_param_in_6_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_6_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_6_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_6_V_data_V)->write(__xlx_apatb_param_in_6_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_6_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_6_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_6_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_6_V_keep_V)->empty())
    __xlx_apatb_param_in_6_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_6_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_6_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_6_V_keep_V)->write(__xlx_apatb_param_in_6_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_6_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_6_V_strb_V)->empty())
    __xlx_apatb_param_in_6_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_6_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_6_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_6_V_strb_V)->write(__xlx_apatb_param_in_6_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_6_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_6_V_last_V)->empty())
    __xlx_apatb_param_in_6_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_6_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_6_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_6_V_last_V)->write(__xlx_apatb_param_in_6_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_7_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_7_V_data_V)->empty())
    __xlx_apatb_param_in_7_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_7_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_7_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_7_V_data_V)->write(__xlx_apatb_param_in_7_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_7_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_7_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_7_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_7_V_keep_V)->empty())
    __xlx_apatb_param_in_7_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_7_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_7_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_7_V_keep_V)->write(__xlx_apatb_param_in_7_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_7_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_7_V_strb_V)->empty())
    __xlx_apatb_param_in_7_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_7_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_7_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_7_V_strb_V)->write(__xlx_apatb_param_in_7_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_7_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_7_V_last_V)->empty())
    __xlx_apatb_param_in_7_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_7_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_7_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_7_V_last_V)->write(__xlx_apatb_param_in_7_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_8_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_8_V_data_V)->empty())
    __xlx_apatb_param_in_8_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_8_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_8_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_8_V_data_V)->write(__xlx_apatb_param_in_8_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_8_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_8_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_8_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_8_V_keep_V)->empty())
    __xlx_apatb_param_in_8_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_8_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_8_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_8_V_keep_V)->write(__xlx_apatb_param_in_8_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_8_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_8_V_strb_V)->empty())
    __xlx_apatb_param_in_8_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_8_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_8_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_8_V_strb_V)->write(__xlx_apatb_param_in_8_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_8_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_8_V_last_V)->empty())
    __xlx_apatb_param_in_8_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_8_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_8_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_8_V_last_V)->write(__xlx_apatb_param_in_8_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_in_9_V_data_V_stream_buf;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_in_9_V_data_V)->empty())
    __xlx_apatb_param_in_9_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_in_9_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_9_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_in_9_V_data_V)->write(__xlx_apatb_param_in_9_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_in_9_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_in_9_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_in_9_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_9_V_keep_V)->empty())
    __xlx_apatb_param_in_9_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_9_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_9_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_9_V_keep_V)->write(__xlx_apatb_param_in_9_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_in_9_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_9_V_strb_V)->empty())
    __xlx_apatb_param_in_9_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_9_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_9_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_9_V_strb_V)->write(__xlx_apatb_param_in_9_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_in_9_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_in_9_V_last_V)->empty())
    __xlx_apatb_param_in_9_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_in_9_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_in_9_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_in_9_V_last_V)->write(__xlx_apatb_param_in_9_V_last_V_stream_buf[i]);
  }
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_0_V_data_V_stream_buf;
long __xlx_apatb_param_out_0_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_0_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_0_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_0_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_0_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_1_V_data_V_stream_buf;
long __xlx_apatb_param_out_1_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_1_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_1_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_1_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_1_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_2_V_data_V_stream_buf;
long __xlx_apatb_param_out_2_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_2_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_2_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_2_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_2_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_3_V_data_V_stream_buf;
long __xlx_apatb_param_out_3_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_3_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_3_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_3_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_3_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_4_V_data_V_stream_buf;
long __xlx_apatb_param_out_4_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_4_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_4_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_4_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_4_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_5_V_data_V_stream_buf;
long __xlx_apatb_param_out_5_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_5_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_5_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_5_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_5_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_6_V_data_V_stream_buf;
long __xlx_apatb_param_out_6_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_6_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_6_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_6_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_6_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_7_V_data_V_stream_buf;
long __xlx_apatb_param_out_7_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_7_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_7_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_7_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_7_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_8_V_data_V_stream_buf;
long __xlx_apatb_param_out_8_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_8_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_8_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_8_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_8_V_last_V_stream_buf;
// id
// dest
// data
std::vector<int> __xlx_apatb_param_out_9_V_data_V_stream_buf;
long __xlx_apatb_param_out_9_stream_buf_size = ((hls::stream<int>*)__xlx_apatb_param_out_9_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_out_9_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_out_9_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_out_9_V_last_V_stream_buf;
// id
// dest
CodeState = CALL_C_DUT;
myproject_axi_hw_stub_wrapper(__xlx_apatb_param_in_0_V_data_V, __xlx_apatb_param_in_0_V_keep_V, __xlx_apatb_param_in_0_V_strb_V, __xlx_apatb_param_in_0_V_last_V, __xlx_apatb_param_in_1_V_data_V, __xlx_apatb_param_in_1_V_keep_V, __xlx_apatb_param_in_1_V_strb_V, __xlx_apatb_param_in_1_V_last_V, __xlx_apatb_param_in_2_V_data_V, __xlx_apatb_param_in_2_V_keep_V, __xlx_apatb_param_in_2_V_strb_V, __xlx_apatb_param_in_2_V_last_V, __xlx_apatb_param_in_3_V_data_V, __xlx_apatb_param_in_3_V_keep_V, __xlx_apatb_param_in_3_V_strb_V, __xlx_apatb_param_in_3_V_last_V, __xlx_apatb_param_in_4_V_data_V, __xlx_apatb_param_in_4_V_keep_V, __xlx_apatb_param_in_4_V_strb_V, __xlx_apatb_param_in_4_V_last_V, __xlx_apatb_param_in_5_V_data_V, __xlx_apatb_param_in_5_V_keep_V, __xlx_apatb_param_in_5_V_strb_V, __xlx_apatb_param_in_5_V_last_V, __xlx_apatb_param_in_6_V_data_V, __xlx_apatb_param_in_6_V_keep_V, __xlx_apatb_param_in_6_V_strb_V, __xlx_apatb_param_in_6_V_last_V, __xlx_apatb_param_in_7_V_data_V, __xlx_apatb_param_in_7_V_keep_V, __xlx_apatb_param_in_7_V_strb_V, __xlx_apatb_param_in_7_V_last_V, __xlx_apatb_param_in_8_V_data_V, __xlx_apatb_param_in_8_V_keep_V, __xlx_apatb_param_in_8_V_strb_V, __xlx_apatb_param_in_8_V_last_V, __xlx_apatb_param_in_9_V_data_V, __xlx_apatb_param_in_9_V_keep_V, __xlx_apatb_param_in_9_V_strb_V, __xlx_apatb_param_in_9_V_last_V, __xlx_apatb_param_out_0_V_data_V, __xlx_apatb_param_out_0_V_keep_V, __xlx_apatb_param_out_0_V_strb_V, __xlx_apatb_param_out_0_V_last_V, __xlx_apatb_param_out_1_V_data_V, __xlx_apatb_param_out_1_V_keep_V, __xlx_apatb_param_out_1_V_strb_V, __xlx_apatb_param_out_1_V_last_V, __xlx_apatb_param_out_2_V_data_V, __xlx_apatb_param_out_2_V_keep_V, __xlx_apatb_param_out_2_V_strb_V, __xlx_apatb_param_out_2_V_last_V, __xlx_apatb_param_out_3_V_data_V, __xlx_apatb_param_out_3_V_keep_V, __xlx_apatb_param_out_3_V_strb_V, __xlx_apatb_param_out_3_V_last_V, __xlx_apatb_param_out_4_V_data_V, __xlx_apatb_param_out_4_V_keep_V, __xlx_apatb_param_out_4_V_strb_V, __xlx_apatb_param_out_4_V_last_V, __xlx_apatb_param_out_5_V_data_V, __xlx_apatb_param_out_5_V_keep_V, __xlx_apatb_param_out_5_V_strb_V, __xlx_apatb_param_out_5_V_last_V, __xlx_apatb_param_out_6_V_data_V, __xlx_apatb_param_out_6_V_keep_V, __xlx_apatb_param_out_6_V_strb_V, __xlx_apatb_param_out_6_V_last_V, __xlx_apatb_param_out_7_V_data_V, __xlx_apatb_param_out_7_V_keep_V, __xlx_apatb_param_out_7_V_strb_V, __xlx_apatb_param_out_7_V_last_V, __xlx_apatb_param_out_8_V_data_V, __xlx_apatb_param_out_8_V_keep_V, __xlx_apatb_param_out_8_V_strb_V, __xlx_apatb_param_out_8_V_last_V, __xlx_apatb_param_out_9_V_data_V, __xlx_apatb_param_out_9_V_keep_V, __xlx_apatb_param_out_9_V_strb_V, __xlx_apatb_param_out_9_V_last_V);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_in_0_stream_buf_final_size = __xlx_apatb_param_in_0_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_0_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_0_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_0_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_0_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_0_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_0_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_0_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_0_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_0_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_0_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_0_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_0_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_0_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_0_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_0_stream_buf_final_size, &tcl_file.in_0_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_0_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_0_stream_buf_final_size, &tcl_file.in_0_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_0_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_0_stream_buf_final_size, &tcl_file.in_0_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_0_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_0_stream_buf_final_size, &tcl_file.in_0_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_0_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_0_stream_buf_final_size > 0) {
  long in_0_V_data_V_stream_ingress_size = __xlx_apatb_param_in_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_0_stream_buf_final_size; j != e; j++) {
    in_0_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_0_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_0_stream_buf_final_size > 0) {
  long in_0_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_0_stream_buf_final_size; j != e; j++) {
    in_0_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_0_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_0_stream_buf_final_size > 0) {
  long in_0_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_0_stream_buf_final_size; j != e; j++) {
    in_0_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_0_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_0_stream_buf_final_size > 0) {
  long in_0_V_last_V_stream_ingress_size = __xlx_apatb_param_in_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_0_stream_buf_final_size; j != e; j++) {
    in_0_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_0_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_0_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_0_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_0_V_last_V, end_str());
}
long __xlx_apatb_param_in_1_stream_buf_final_size = __xlx_apatb_param_in_1_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_1_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_1_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_1_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_1_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_1_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_1_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_1_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_1_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_1_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_1_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_1_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_1_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_1_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_1_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_1_stream_buf_final_size, &tcl_file.in_1_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_1_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_1_stream_buf_final_size, &tcl_file.in_1_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_1_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_1_stream_buf_final_size, &tcl_file.in_1_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_1_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_1_stream_buf_final_size, &tcl_file.in_1_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_1_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_1_stream_buf_final_size > 0) {
  long in_1_V_data_V_stream_ingress_size = __xlx_apatb_param_in_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_1_stream_buf_final_size; j != e; j++) {
    in_1_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_1_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_1_stream_buf_final_size > 0) {
  long in_1_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_1_stream_buf_final_size; j != e; j++) {
    in_1_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_1_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_1_stream_buf_final_size > 0) {
  long in_1_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_1_stream_buf_final_size; j != e; j++) {
    in_1_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_1_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_1_stream_buf_final_size > 0) {
  long in_1_V_last_V_stream_ingress_size = __xlx_apatb_param_in_1_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_1_stream_buf_final_size; j != e; j++) {
    in_1_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_1_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_1_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_1_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_1_V_last_V, end_str());
}
long __xlx_apatb_param_in_2_stream_buf_final_size = __xlx_apatb_param_in_2_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_2_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_2_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_2_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_2_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_2_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_2_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_2_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_2_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_2_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_2_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_2_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_2_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_2_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_2_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_2_stream_buf_final_size, &tcl_file.in_2_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_2_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_2_stream_buf_final_size, &tcl_file.in_2_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_2_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_2_stream_buf_final_size, &tcl_file.in_2_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_2_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_2_stream_buf_final_size, &tcl_file.in_2_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_2_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_2_stream_buf_final_size > 0) {
  long in_2_V_data_V_stream_ingress_size = __xlx_apatb_param_in_2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_2_stream_buf_final_size; j != e; j++) {
    in_2_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_2_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_2_stream_buf_final_size > 0) {
  long in_2_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_2_stream_buf_final_size; j != e; j++) {
    in_2_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_2_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_2_stream_buf_final_size > 0) {
  long in_2_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_2_stream_buf_final_size; j != e; j++) {
    in_2_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_2_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_2_stream_buf_final_size > 0) {
  long in_2_V_last_V_stream_ingress_size = __xlx_apatb_param_in_2_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_2_stream_buf_final_size; j != e; j++) {
    in_2_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_2_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_2_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_2_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_2_V_last_V, end_str());
}
long __xlx_apatb_param_in_3_stream_buf_final_size = __xlx_apatb_param_in_3_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_3_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_3_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_3_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_3_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_3_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_3_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_3_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_3_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_3_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_3_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_3_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_3_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_3_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_3_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_3_stream_buf_final_size, &tcl_file.in_3_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_3_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_3_stream_buf_final_size, &tcl_file.in_3_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_3_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_3_stream_buf_final_size, &tcl_file.in_3_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_3_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_3_stream_buf_final_size, &tcl_file.in_3_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_3_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_3_stream_buf_final_size > 0) {
  long in_3_V_data_V_stream_ingress_size = __xlx_apatb_param_in_3_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_3_stream_buf_final_size; j != e; j++) {
    in_3_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_3_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_3_stream_buf_final_size > 0) {
  long in_3_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_3_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_3_stream_buf_final_size; j != e; j++) {
    in_3_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_3_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_3_stream_buf_final_size > 0) {
  long in_3_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_3_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_3_stream_buf_final_size; j != e; j++) {
    in_3_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_3_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_3_stream_buf_final_size > 0) {
  long in_3_V_last_V_stream_ingress_size = __xlx_apatb_param_in_3_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_3_stream_buf_final_size; j != e; j++) {
    in_3_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_3_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_3_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_3_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_3_V_last_V, end_str());
}
long __xlx_apatb_param_in_4_stream_buf_final_size = __xlx_apatb_param_in_4_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_4_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_4_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_4_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_4_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_4_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_4_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_4_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_4_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_4_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_4_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_4_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_4_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_4_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_4_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_4_stream_buf_final_size, &tcl_file.in_4_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_4_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_4_stream_buf_final_size, &tcl_file.in_4_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_4_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_4_stream_buf_final_size, &tcl_file.in_4_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_4_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_4_stream_buf_final_size, &tcl_file.in_4_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_4_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_4_stream_buf_final_size > 0) {
  long in_4_V_data_V_stream_ingress_size = __xlx_apatb_param_in_4_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_4_stream_buf_final_size; j != e; j++) {
    in_4_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_4_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_4_stream_buf_final_size > 0) {
  long in_4_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_4_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_4_stream_buf_final_size; j != e; j++) {
    in_4_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_4_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_4_stream_buf_final_size > 0) {
  long in_4_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_4_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_4_stream_buf_final_size; j != e; j++) {
    in_4_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_4_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_4_stream_buf_final_size > 0) {
  long in_4_V_last_V_stream_ingress_size = __xlx_apatb_param_in_4_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_4_stream_buf_final_size; j != e; j++) {
    in_4_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_4_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_4_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_4_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_4_V_last_V, end_str());
}
long __xlx_apatb_param_in_5_stream_buf_final_size = __xlx_apatb_param_in_5_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_5_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_5_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_5_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_5_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_5_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_5_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_5_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_5_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_5_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_5_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_5_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_5_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_5_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_5_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_5_stream_buf_final_size, &tcl_file.in_5_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_5_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_5_stream_buf_final_size, &tcl_file.in_5_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_5_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_5_stream_buf_final_size, &tcl_file.in_5_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_5_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_5_stream_buf_final_size, &tcl_file.in_5_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_5_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_5_stream_buf_final_size > 0) {
  long in_5_V_data_V_stream_ingress_size = __xlx_apatb_param_in_5_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_5_stream_buf_final_size; j != e; j++) {
    in_5_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_5_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_5_stream_buf_final_size > 0) {
  long in_5_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_5_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_5_stream_buf_final_size; j != e; j++) {
    in_5_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_5_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_5_stream_buf_final_size > 0) {
  long in_5_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_5_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_5_stream_buf_final_size; j != e; j++) {
    in_5_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_5_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_5_stream_buf_final_size > 0) {
  long in_5_V_last_V_stream_ingress_size = __xlx_apatb_param_in_5_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_5_stream_buf_final_size; j != e; j++) {
    in_5_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_5_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_5_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_5_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_5_V_last_V, end_str());
}
long __xlx_apatb_param_in_6_stream_buf_final_size = __xlx_apatb_param_in_6_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_6_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_6_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_6_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_6_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_6_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_6_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_6_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_6_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_6_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_6_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_6_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_6_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_6_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_6_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_6_stream_buf_final_size, &tcl_file.in_6_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_6_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_6_stream_buf_final_size, &tcl_file.in_6_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_6_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_6_stream_buf_final_size, &tcl_file.in_6_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_6_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_6_stream_buf_final_size, &tcl_file.in_6_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_6_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_6_stream_buf_final_size > 0) {
  long in_6_V_data_V_stream_ingress_size = __xlx_apatb_param_in_6_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_6_stream_buf_final_size; j != e; j++) {
    in_6_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_6_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_6_stream_buf_final_size > 0) {
  long in_6_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_6_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_6_stream_buf_final_size; j != e; j++) {
    in_6_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_6_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_6_stream_buf_final_size > 0) {
  long in_6_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_6_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_6_stream_buf_final_size; j != e; j++) {
    in_6_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_6_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_6_stream_buf_final_size > 0) {
  long in_6_V_last_V_stream_ingress_size = __xlx_apatb_param_in_6_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_6_stream_buf_final_size; j != e; j++) {
    in_6_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_6_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_6_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_6_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_6_V_last_V, end_str());
}
long __xlx_apatb_param_in_7_stream_buf_final_size = __xlx_apatb_param_in_7_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_7_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_7_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_7_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_7_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_7_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_7_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_7_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_7_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_7_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_7_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_7_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_7_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_7_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_7_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_7_stream_buf_final_size, &tcl_file.in_7_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_7_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_7_stream_buf_final_size, &tcl_file.in_7_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_7_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_7_stream_buf_final_size, &tcl_file.in_7_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_7_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_7_stream_buf_final_size, &tcl_file.in_7_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_7_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_7_stream_buf_final_size > 0) {
  long in_7_V_data_V_stream_ingress_size = __xlx_apatb_param_in_7_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_7_stream_buf_final_size; j != e; j++) {
    in_7_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_7_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_7_stream_buf_final_size > 0) {
  long in_7_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_7_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_7_stream_buf_final_size; j != e; j++) {
    in_7_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_7_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_7_stream_buf_final_size > 0) {
  long in_7_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_7_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_7_stream_buf_final_size; j != e; j++) {
    in_7_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_7_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_7_stream_buf_final_size > 0) {
  long in_7_V_last_V_stream_ingress_size = __xlx_apatb_param_in_7_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_7_stream_buf_final_size; j != e; j++) {
    in_7_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_7_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_7_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_7_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_7_V_last_V, end_str());
}
long __xlx_apatb_param_in_8_stream_buf_final_size = __xlx_apatb_param_in_8_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_8_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_8_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_8_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_8_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_8_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_8_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_8_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_8_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_8_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_8_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_8_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_8_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_8_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_8_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_8_stream_buf_final_size, &tcl_file.in_8_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_8_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_8_stream_buf_final_size, &tcl_file.in_8_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_8_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_8_stream_buf_final_size, &tcl_file.in_8_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_8_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_8_stream_buf_final_size, &tcl_file.in_8_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_8_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_8_stream_buf_final_size > 0) {
  long in_8_V_data_V_stream_ingress_size = __xlx_apatb_param_in_8_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_8_stream_buf_final_size; j != e; j++) {
    in_8_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_8_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_8_stream_buf_final_size > 0) {
  long in_8_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_8_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_8_stream_buf_final_size; j != e; j++) {
    in_8_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_8_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_8_stream_buf_final_size > 0) {
  long in_8_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_8_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_8_stream_buf_final_size; j != e; j++) {
    in_8_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_8_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_8_stream_buf_final_size > 0) {
  long in_8_V_last_V_stream_ingress_size = __xlx_apatb_param_in_8_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_8_stream_buf_final_size; j != e; j++) {
    in_8_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_8_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_8_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_8_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_8_V_last_V, end_str());
}
long __xlx_apatb_param_in_9_stream_buf_final_size = __xlx_apatb_param_in_9_stream_buf_size - ((hls::stream<int>*)__xlx_apatb_param_in_9_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_in_9_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_9_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_9_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_in_9_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_in_9_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_in_9_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_9_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_in_9_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_9_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_in_9_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_9_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_in_9_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_in_9_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_in_9_stream_buf_final_size, &tcl_file.in_9_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_9_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_9_stream_buf_final_size, &tcl_file.in_9_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_9_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_9_stream_buf_final_size, &tcl_file.in_9_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_9_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_in_9_stream_buf_final_size, &tcl_file.in_9_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_in_9_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_9_stream_buf_final_size > 0) {
  long in_9_V_data_V_stream_ingress_size = __xlx_apatb_param_in_9_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_9_stream_buf_final_size; j != e; j++) {
    in_9_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_9_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_9_stream_buf_final_size > 0) {
  long in_9_V_keep_V_stream_ingress_size = __xlx_apatb_param_in_9_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_9_stream_buf_final_size; j != e; j++) {
    in_9_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_9_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_9_stream_buf_final_size > 0) {
  long in_9_V_strb_V_stream_ingress_size = __xlx_apatb_param_in_9_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_9_stream_buf_final_size; j != e; j++) {
    in_9_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_9_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_in_9_stream_buf_final_size > 0) {
  long in_9_V_last_V_stream_ingress_size = __xlx_apatb_param_in_9_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_in_9_stream_buf_final_size; j != e; j++) {
    in_9_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long in_9_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", in_9_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_in_9_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_in_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_in_9_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_0_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_0_V_data_V)->size() - __xlx_apatb_param_out_0_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_0_V_data_V)->empty())
    __xlx_apatb_param_out_0_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_0_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_0_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_0_V_data_V)->write(__xlx_apatb_param_out_0_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_0_V_keep_V)->empty())
    __xlx_apatb_param_out_0_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_0_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_0_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_0_V_keep_V)->write(__xlx_apatb_param_out_0_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_0_V_strb_V)->empty())
    __xlx_apatb_param_out_0_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_0_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_0_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_0_V_strb_V)->write(__xlx_apatb_param_out_0_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_0_V_last_V)->empty())
    __xlx_apatb_param_out_0_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_0_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_0_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_0_V_last_V)->write(__xlx_apatb_param_out_0_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_0_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_0_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_0_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_0_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_0_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_0_V_data_V_stream_buf[__xlx_apatb_param_out_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_0_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_0_V_keep_V_stream_buf[__xlx_apatb_param_out_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_0_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_0_V_strb_V_stream_buf[__xlx_apatb_param_out_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_0_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_0_V_last_V_stream_buf[__xlx_apatb_param_out_0_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_0_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_0_stream_buf_final_size, &tcl_file.out_0_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_0_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_0_stream_buf_final_size, &tcl_file.out_0_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_0_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_0_stream_buf_final_size, &tcl_file.out_0_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_0_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_0_stream_buf_final_size, &tcl_file.out_0_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_0_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_0_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_1_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_1_V_data_V)->size() - __xlx_apatb_param_out_1_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_1_V_data_V)->empty())
    __xlx_apatb_param_out_1_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_1_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_1_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_1_V_data_V)->write(__xlx_apatb_param_out_1_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_1_V_keep_V)->empty())
    __xlx_apatb_param_out_1_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_1_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_1_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_1_V_keep_V)->write(__xlx_apatb_param_out_1_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_1_V_strb_V)->empty())
    __xlx_apatb_param_out_1_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_1_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_1_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_1_V_strb_V)->write(__xlx_apatb_param_out_1_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_1_V_last_V)->empty())
    __xlx_apatb_param_out_1_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_1_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_1_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_1_V_last_V)->write(__xlx_apatb_param_out_1_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_1_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_1_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_1_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_1_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_1_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_1_V_data_V_stream_buf[__xlx_apatb_param_out_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_1_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_1_V_keep_V_stream_buf[__xlx_apatb_param_out_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_1_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_1_V_strb_V_stream_buf[__xlx_apatb_param_out_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_1_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_1_V_last_V_stream_buf[__xlx_apatb_param_out_1_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_1_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_1_stream_buf_final_size, &tcl_file.out_1_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_1_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_1_stream_buf_final_size, &tcl_file.out_1_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_1_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_1_stream_buf_final_size, &tcl_file.out_1_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_1_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_1_stream_buf_final_size, &tcl_file.out_1_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_1_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_1_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_2_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_2_V_data_V)->size() - __xlx_apatb_param_out_2_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_2_V_data_V)->empty())
    __xlx_apatb_param_out_2_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_2_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_2_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_2_V_data_V)->write(__xlx_apatb_param_out_2_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_2_V_keep_V)->empty())
    __xlx_apatb_param_out_2_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_2_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_2_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_2_V_keep_V)->write(__xlx_apatb_param_out_2_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_2_V_strb_V)->empty())
    __xlx_apatb_param_out_2_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_2_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_2_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_2_V_strb_V)->write(__xlx_apatb_param_out_2_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_2_V_last_V)->empty())
    __xlx_apatb_param_out_2_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_2_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_2_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_2_V_last_V)->write(__xlx_apatb_param_out_2_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_2_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_2_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_2_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_2_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_2_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_2_V_data_V_stream_buf[__xlx_apatb_param_out_2_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_2_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_2_V_keep_V_stream_buf[__xlx_apatb_param_out_2_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_2_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_2_V_strb_V_stream_buf[__xlx_apatb_param_out_2_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_2_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_2_V_last_V_stream_buf[__xlx_apatb_param_out_2_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_2_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_2_stream_buf_final_size, &tcl_file.out_2_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_2_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_2_stream_buf_final_size, &tcl_file.out_2_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_2_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_2_stream_buf_final_size, &tcl_file.out_2_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_2_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_2_stream_buf_final_size, &tcl_file.out_2_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_2_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_2_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_3_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_3_V_data_V)->size() - __xlx_apatb_param_out_3_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_3_V_data_V)->empty())
    __xlx_apatb_param_out_3_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_3_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_3_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_3_V_data_V)->write(__xlx_apatb_param_out_3_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_3_V_keep_V)->empty())
    __xlx_apatb_param_out_3_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_3_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_3_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_3_V_keep_V)->write(__xlx_apatb_param_out_3_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_3_V_strb_V)->empty())
    __xlx_apatb_param_out_3_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_3_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_3_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_3_V_strb_V)->write(__xlx_apatb_param_out_3_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_3_V_last_V)->empty())
    __xlx_apatb_param_out_3_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_3_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_3_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_3_V_last_V)->write(__xlx_apatb_param_out_3_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_3_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_3_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_3_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_3_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_3_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_3_V_data_V_stream_buf[__xlx_apatb_param_out_3_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_3_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_3_V_keep_V_stream_buf[__xlx_apatb_param_out_3_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_3_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_3_V_strb_V_stream_buf[__xlx_apatb_param_out_3_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_3_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_3_V_last_V_stream_buf[__xlx_apatb_param_out_3_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_3_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_3_stream_buf_final_size, &tcl_file.out_3_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_3_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_3_stream_buf_final_size, &tcl_file.out_3_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_3_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_3_stream_buf_final_size, &tcl_file.out_3_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_3_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_3_stream_buf_final_size, &tcl_file.out_3_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_3_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_3_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_4_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_4_V_data_V)->size() - __xlx_apatb_param_out_4_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_4_V_data_V)->empty())
    __xlx_apatb_param_out_4_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_4_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_4_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_4_V_data_V)->write(__xlx_apatb_param_out_4_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_4_V_keep_V)->empty())
    __xlx_apatb_param_out_4_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_4_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_4_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_4_V_keep_V)->write(__xlx_apatb_param_out_4_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_4_V_strb_V)->empty())
    __xlx_apatb_param_out_4_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_4_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_4_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_4_V_strb_V)->write(__xlx_apatb_param_out_4_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_4_V_last_V)->empty())
    __xlx_apatb_param_out_4_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_4_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_4_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_4_V_last_V)->write(__xlx_apatb_param_out_4_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_4_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_4_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_4_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_4_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_4_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_4_V_data_V_stream_buf[__xlx_apatb_param_out_4_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_4_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_4_V_keep_V_stream_buf[__xlx_apatb_param_out_4_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_4_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_4_V_strb_V_stream_buf[__xlx_apatb_param_out_4_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_4_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_4_V_last_V_stream_buf[__xlx_apatb_param_out_4_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_4_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_4_stream_buf_final_size, &tcl_file.out_4_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_4_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_4_stream_buf_final_size, &tcl_file.out_4_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_4_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_4_stream_buf_final_size, &tcl_file.out_4_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_4_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_4_stream_buf_final_size, &tcl_file.out_4_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_4_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_4_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_5_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_5_V_data_V)->size() - __xlx_apatb_param_out_5_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_5_V_data_V)->empty())
    __xlx_apatb_param_out_5_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_5_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_5_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_5_V_data_V)->write(__xlx_apatb_param_out_5_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_5_V_keep_V)->empty())
    __xlx_apatb_param_out_5_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_5_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_5_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_5_V_keep_V)->write(__xlx_apatb_param_out_5_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_5_V_strb_V)->empty())
    __xlx_apatb_param_out_5_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_5_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_5_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_5_V_strb_V)->write(__xlx_apatb_param_out_5_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_5_V_last_V)->empty())
    __xlx_apatb_param_out_5_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_5_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_5_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_5_V_last_V)->write(__xlx_apatb_param_out_5_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_5_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_5_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_5_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_5_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_5_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_5_V_data_V_stream_buf[__xlx_apatb_param_out_5_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_5_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_5_V_keep_V_stream_buf[__xlx_apatb_param_out_5_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_5_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_5_V_strb_V_stream_buf[__xlx_apatb_param_out_5_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_5_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_5_V_last_V_stream_buf[__xlx_apatb_param_out_5_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_5_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_5_stream_buf_final_size, &tcl_file.out_5_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_5_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_5_stream_buf_final_size, &tcl_file.out_5_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_5_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_5_stream_buf_final_size, &tcl_file.out_5_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_5_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_5_stream_buf_final_size, &tcl_file.out_5_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_5_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_5_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_6_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_6_V_data_V)->size() - __xlx_apatb_param_out_6_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_6_V_data_V)->empty())
    __xlx_apatb_param_out_6_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_6_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_6_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_6_V_data_V)->write(__xlx_apatb_param_out_6_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_6_V_keep_V)->empty())
    __xlx_apatb_param_out_6_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_6_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_6_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_6_V_keep_V)->write(__xlx_apatb_param_out_6_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_6_V_strb_V)->empty())
    __xlx_apatb_param_out_6_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_6_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_6_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_6_V_strb_V)->write(__xlx_apatb_param_out_6_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_6_V_last_V)->empty())
    __xlx_apatb_param_out_6_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_6_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_6_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_6_V_last_V)->write(__xlx_apatb_param_out_6_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_6_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_6_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_6_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_6_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_6_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_6_V_data_V_stream_buf[__xlx_apatb_param_out_6_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_6_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_6_V_keep_V_stream_buf[__xlx_apatb_param_out_6_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_6_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_6_V_strb_V_stream_buf[__xlx_apatb_param_out_6_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_6_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_6_V_last_V_stream_buf[__xlx_apatb_param_out_6_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_6_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_6_stream_buf_final_size, &tcl_file.out_6_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_6_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_6_stream_buf_final_size, &tcl_file.out_6_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_6_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_6_stream_buf_final_size, &tcl_file.out_6_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_6_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_6_stream_buf_final_size, &tcl_file.out_6_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_6_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_6_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_7_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_7_V_data_V)->size() - __xlx_apatb_param_out_7_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_7_V_data_V)->empty())
    __xlx_apatb_param_out_7_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_7_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_7_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_7_V_data_V)->write(__xlx_apatb_param_out_7_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_7_V_keep_V)->empty())
    __xlx_apatb_param_out_7_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_7_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_7_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_7_V_keep_V)->write(__xlx_apatb_param_out_7_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_7_V_strb_V)->empty())
    __xlx_apatb_param_out_7_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_7_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_7_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_7_V_strb_V)->write(__xlx_apatb_param_out_7_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_7_V_last_V)->empty())
    __xlx_apatb_param_out_7_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_7_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_7_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_7_V_last_V)->write(__xlx_apatb_param_out_7_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_7_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_7_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_7_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_7_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_7_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_7_V_data_V_stream_buf[__xlx_apatb_param_out_7_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_7_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_7_V_keep_V_stream_buf[__xlx_apatb_param_out_7_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_7_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_7_V_strb_V_stream_buf[__xlx_apatb_param_out_7_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_7_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_7_V_last_V_stream_buf[__xlx_apatb_param_out_7_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_7_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_7_stream_buf_final_size, &tcl_file.out_7_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_7_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_7_stream_buf_final_size, &tcl_file.out_7_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_7_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_7_stream_buf_final_size, &tcl_file.out_7_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_7_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_7_stream_buf_final_size, &tcl_file.out_7_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_7_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_7_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_8_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_8_V_data_V)->size() - __xlx_apatb_param_out_8_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_8_V_data_V)->empty())
    __xlx_apatb_param_out_8_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_8_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_8_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_8_V_data_V)->write(__xlx_apatb_param_out_8_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_8_V_keep_V)->empty())
    __xlx_apatb_param_out_8_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_8_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_8_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_8_V_keep_V)->write(__xlx_apatb_param_out_8_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_8_V_strb_V)->empty())
    __xlx_apatb_param_out_8_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_8_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_8_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_8_V_strb_V)->write(__xlx_apatb_param_out_8_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_8_V_last_V)->empty())
    __xlx_apatb_param_out_8_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_8_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_8_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_8_V_last_V)->write(__xlx_apatb_param_out_8_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_8_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_8_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_8_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_8_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_8_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_8_V_data_V_stream_buf[__xlx_apatb_param_out_8_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_8_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_8_V_keep_V_stream_buf[__xlx_apatb_param_out_8_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_8_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_8_V_strb_V_stream_buf[__xlx_apatb_param_out_8_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_8_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_8_V_last_V_stream_buf[__xlx_apatb_param_out_8_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_8_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_8_stream_buf_final_size, &tcl_file.out_8_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_8_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_8_stream_buf_final_size, &tcl_file.out_8_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_8_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_8_stream_buf_final_size, &tcl_file.out_8_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_8_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_8_stream_buf_final_size, &tcl_file.out_8_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_8_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_8_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_8_V_last_V, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_out_9_stream_buf_final_size = ((hls::stream<int>*)__xlx_apatb_param_out_9_V_data_V)->size() - __xlx_apatb_param_out_9_stream_buf_size;
{
  while (!((hls::stream<int>*)__xlx_apatb_param_out_9_V_data_V)->empty())
    __xlx_apatb_param_out_9_V_data_V_stream_buf.push_back(((hls::stream<int>*)__xlx_apatb_param_out_9_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_9_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<int>*)__xlx_apatb_param_out_9_V_data_V)->write(__xlx_apatb_param_out_9_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_9_V_keep_V)->empty())
    __xlx_apatb_param_out_9_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_9_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_9_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_9_V_keep_V)->write(__xlx_apatb_param_out_9_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_9_V_strb_V)->empty())
    __xlx_apatb_param_out_9_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_9_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_9_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_9_V_strb_V)->write(__xlx_apatb_param_out_9_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_out_9_V_last_V)->empty())
    __xlx_apatb_param_out_9_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_out_9_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_out_9_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_out_9_V_last_V)->write(__xlx_apatb_param_out_9_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_out_9_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_9_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_9_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_out_9_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_out_9_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_0_lv = ((int*)&__xlx_apatb_param_out_9_V_data_V_stream_buf[__xlx_apatb_param_out_9_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_9_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_out_9_V_keep_V_stream_buf[__xlx_apatb_param_out_9_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_9_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<4> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_out_9_V_strb_V_stream_buf[__xlx_apatb_param_out_9_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_9_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_out_9_V_last_V_stream_buf[__xlx_apatb_param_out_9_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_out_9_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_out_9_stream_buf_final_size, &tcl_file.out_9_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_9_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_9_stream_buf_final_size, &tcl_file.out_9_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_9_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_9_stream_buf_final_size, &tcl_file.out_9_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_9_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_out_9_stream_buf_final_size, &tcl_file.out_9_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_out_9_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_out_9_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_out_9_V_last_V, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
