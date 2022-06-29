set SynModuleInfo {
  {SRCNAME decision_function.7 MODELNAME decision_function_7 RTLNAME myproject_axi_decision_function_7
    SUBMODULES {
      {MODELNAME myproject_axi_mux_325_32_1_0 RTLNAME myproject_axi_mux_325_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decision_function.6 MODELNAME decision_function_6 RTLNAME myproject_axi_decision_function_6
    SUBMODULES {
      {MODELNAME myproject_axi_mux_185_32_1_0 RTLNAME myproject_axi_mux_185_32_1_0 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decision_function.5 MODELNAME decision_function_5 RTLNAME myproject_axi_decision_function_5
    SUBMODULES {
      {MODELNAME myproject_axi_mux_94_32_1_1 RTLNAME myproject_axi_mux_94_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decision_function.4 MODELNAME decision_function_4 RTLNAME myproject_axi_decision_function_4
    SUBMODULES {
      {MODELNAME myproject_axi_mux_114_32_1_1 RTLNAME myproject_axi_mux_114_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decision_function.3 MODELNAME decision_function_3 RTLNAME myproject_axi_decision_function_3
    SUBMODULES {
      {MODELNAME myproject_axi_mux_94_32_1_1_x RTLNAME myproject_axi_mux_94_32_1_1_x BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decision_function.2 MODELNAME decision_function_2 RTLNAME myproject_axi_decision_function_2
    SUBMODULES {
      {MODELNAME myproject_axi_mux_63_32_1_1 RTLNAME myproject_axi_mux_63_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decision_function.1 MODELNAME decision_function_1 RTLNAME myproject_axi_decision_function_1
    SUBMODULES {
      {MODELNAME myproject_axi_mux_73_32_1_1 RTLNAME myproject_axi_mux_73_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME decision_function MODELNAME decision_function RTLNAME myproject_axi_decision_function
    SUBMODULES {
      {MODELNAME myproject_axi_mux_21_32_1_1 RTLNAME myproject_axi_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject_axi_myproject}
  {SRCNAME myproject_axi MODELNAME myproject_axi RTLNAME myproject_axi IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_axi_fpext_32ns_64_2_no_dsp_1 RTLNAME myproject_axi_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME myproject_axi_regslice_both RTLNAME myproject_axi_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME myproject_axi_regslice_both_U}
    }
  }
}
