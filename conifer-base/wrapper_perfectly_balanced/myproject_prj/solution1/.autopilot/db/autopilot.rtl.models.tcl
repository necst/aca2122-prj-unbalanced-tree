set SynModuleInfo {
  {SRCNAME myproject_axi_Pipeline_VITIS_LOOP_21_1 MODELNAME myproject_axi_Pipeline_VITIS_LOOP_21_1 RTLNAME myproject_axi_myproject_axi_Pipeline_VITIS_LOOP_21_1
    SUBMODULES {
      {MODELNAME myproject_axi_fpext_32ns_64_2_no_dsp_1 RTLNAME myproject_axi_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_flow_control_loop_pipe_sequential_init RTLNAME myproject_axi_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_axi_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME decision_function MODELNAME decision_function RTLNAME myproject_axi_decision_function
    SUBMODULES {
      {MODELNAME myproject_axi_mux_104_32_1_0 RTLNAME myproject_axi_mux_104_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_1032_32_1_0 RTLNAME myproject_axi_mux_1032_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_53_32_1_0 RTLNAME myproject_axi_mux_53_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_53_1_1_0 RTLNAME myproject_axi_mux_53_1_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_73_32_1_0 RTLNAME myproject_axi_mux_73_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_73_1_1_0 RTLNAME myproject_axi_mux_73_1_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_114_32_1_0 RTLNAME myproject_axi_mux_114_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_104_1_1_0 RTLNAME myproject_axi_mux_104_1_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_114_1_1_0 RTLNAME myproject_axi_mux_114_1_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_mux_83_32_1_0 RTLNAME myproject_axi_mux_83_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject_axi_myproject}
  {SRCNAME myproject_axi MODELNAME myproject_axi RTLNAME myproject_axi IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_axi_regslice_both RTLNAME myproject_axi_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME myproject_axi_regslice_both_U}
    }
  }
}
