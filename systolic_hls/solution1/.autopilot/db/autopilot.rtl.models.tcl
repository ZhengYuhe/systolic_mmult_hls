set SynModuleInfo {
  {SRCNAME krnl_mmult_Pipeline_readA_readA_i_readA_k MODELNAME krnl_mmult_Pipeline_readA_readA_i_readA_k RTLNAME krnl_mmult_krnl_mmult_Pipeline_readA_readA_i_readA_k
    SUBMODULES {
      {MODELNAME krnl_mmult_flow_control_loop_pipe_sequential_init RTLNAME krnl_mmult_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME krnl_mmult_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME krnl_mmult_Pipeline_fill_localC_fill_localC_inner MODELNAME krnl_mmult_Pipeline_fill_localC_fill_localC_inner RTLNAME krnl_mmult_krnl_mmult_Pipeline_fill_localC_fill_localC_inner}
  {SRCNAME krnl_mmult_Pipeline_readB_readB_j_readB_k MODELNAME krnl_mmult_Pipeline_readB_readB_j_readB_k RTLNAME krnl_mmult_krnl_mmult_Pipeline_readB_readB_j_readB_k}
  {SRCNAME krnl_mmult_Pipeline_systolick MODELNAME krnl_mmult_Pipeline_systolick RTLNAME krnl_mmult_krnl_mmult_Pipeline_systolick
    SUBMODULES {
      {MODELNAME krnl_mmult_mul_32s_32s_32_1_1 RTLNAME krnl_mmult_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_mmult_Pipeline_Accum_C MODELNAME krnl_mmult_Pipeline_Accum_C RTLNAME krnl_mmult_krnl_mmult_Pipeline_Accum_C
    SUBMODULES {
      {MODELNAME krnl_mmult_mux_42_32_1_1 RTLNAME krnl_mmult_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_mmult_Pipeline_writeC_writeC_inner MODELNAME krnl_mmult_Pipeline_writeC_writeC_inner RTLNAME krnl_mmult_krnl_mmult_Pipeline_writeC_writeC_inner
    SUBMODULES {
      {MODELNAME krnl_mmult_mux_165_32_1_1 RTLNAME krnl_mmult_mux_165_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_mmult MODELNAME krnl_mmult RTLNAME krnl_mmult IS_TOP 1
    SUBMODULES {
      {MODELNAME krnl_mmult_mul_64ns_64ns_128_1_1 RTLNAME krnl_mmult_mul_64ns_64ns_128_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME krnl_mmult_localA_0_0 RTLNAME krnl_mmult_localA_0_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_mmult_control_s_axi RTLNAME krnl_mmult_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME krnl_mmult_gmem_m_axi RTLNAME krnl_mmult_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
