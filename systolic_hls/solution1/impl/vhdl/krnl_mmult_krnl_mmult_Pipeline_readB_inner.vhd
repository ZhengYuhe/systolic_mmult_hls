-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity krnl_mmult_krnl_mmult_Pipeline_readB_inner is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    zext_ln211_1 : IN STD_LOGIC_VECTOR (9 downto 0);
    sext_ln226 : IN STD_LOGIC_VECTOR (61 downto 0);
    indvars_iv_next56_cast : IN STD_LOGIC_VECTOR (10 downto 0);
    localB_0_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_0_ce0 : OUT STD_LOGIC;
    localB_0_we0 : OUT STD_LOGIC;
    localB_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    localB_1_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_1_ce0 : OUT STD_LOGIC;
    localB_1_we0 : OUT STD_LOGIC;
    localB_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    localB_2_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_2_ce0 : OUT STD_LOGIC;
    localB_2_we0 : OUT STD_LOGIC;
    localB_2_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    localB_3_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_3_ce0 : OUT STD_LOGIC;
    localB_3_we0 : OUT STD_LOGIC;
    localB_3_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    localB_4_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_4_ce0 : OUT STD_LOGIC;
    localB_4_we0 : OUT STD_LOGIC;
    localB_4_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    localB_5_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_5_ce0 : OUT STD_LOGIC;
    localB_5_we0 : OUT STD_LOGIC;
    localB_5_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    localB_6_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_6_ce0 : OUT STD_LOGIC;
    localB_6_we0 : OUT STD_LOGIC;
    localB_6_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    localB_7_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    localB_7_ce0 : OUT STD_LOGIC;
    localB_7_we0 : OUT STD_LOGIC;
    localB_7_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    trunc_ln7 : IN STD_LOGIC_VECTOR (2 downto 0) );
end;


architecture behav of krnl_mmult_krnl_mmult_Pipeline_readB_inner is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal icmp_ln226_reg_297 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln226_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal trunc_ln7_read_reg_283 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal indvars_iv_next56_cast_cast_fu_219_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal indvars_iv_next56_cast_cast_reg_287 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_fu_244_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_301 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_301_pp0_iter2_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal gmem_addr_read_reg_306 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_condition_exit_pp0_iter2_stage0 : STD_LOGIC;
    signal zext_ln227_fu_265_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal k_fu_82 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln226_fu_248_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln211_1_cast_fu_227_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component krnl_mmult_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component krnl_mmult_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter2_stage0)) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    k_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    k_fu_82 <= zext_ln211_1_cast_fu_227_p1;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln226_fu_239_p2 = ap_const_lv1_1))) then 
                    k_fu_82 <= add_ln226_fu_248_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
                icmp_ln226_reg_297 <= icmp_ln226_fu_239_p2;
                    indvars_iv_next56_cast_cast_reg_287(10 downto 0) <= indvars_iv_next56_cast_cast_fu_219_p1(10 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln226_fu_239_p2 = ap_const_lv1_1))) then
                empty_reg_301 <= empty_fu_244_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                empty_reg_301_pp0_iter2_reg <= empty_reg_301;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln226_reg_297 = ap_const_lv1_1))) then
                gmem_addr_read_reg_306 <= m_axi_gmem_RDATA;
            end if;
        end if;
    end process;
    indvars_iv_next56_cast_cast_reg_287(63 downto 11) <= "00000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln226_fu_248_p2 <= std_logic_vector(unsigned(k_fu_82) + unsigned(ap_const_lv64_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, m_axi_gmem_RVALID, icmp_ln226_reg_297)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln226_reg_297 = ap_const_lv1_1) and (m_axi_gmem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, m_axi_gmem_RVALID, icmp_ln226_reg_297)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln226_reg_297 = ap_const_lv1_1) and (m_axi_gmem_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter2_assign_proc : process(m_axi_gmem_RVALID, icmp_ln226_reg_297)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((icmp_ln226_reg_297 = ap_const_lv1_1) and (m_axi_gmem_RVALID = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln226_fu_239_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln226_fu_239_p2 = ap_const_lv1_0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter2_stage0_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln226_reg_297, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln226_reg_297 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter2_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    empty_fu_244_p1 <= k_fu_82(3 - 1 downto 0);

    gmem_blk_n_R_assign_proc : process(ap_enable_reg_pp0_iter2, m_axi_gmem_RVALID, icmp_ln226_reg_297, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln226_reg_297 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            gmem_blk_n_R <= m_axi_gmem_RVALID;
        else 
            gmem_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln226_fu_239_p2 <= "1" when (signed(k_fu_82) < signed(indvars_iv_next56_cast_cast_reg_287)) else "0";
    indvars_iv_next56_cast_cast_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(indvars_iv_next56_cast),64));
    localB_0_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_0_ce0 <= ap_const_logic_1;
        else 
            localB_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_0_d0 <= gmem_addr_read_reg_306;

    localB_0_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_0))) then 
            localB_0_we0 <= ap_const_logic_1;
        else 
            localB_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_1_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_1_ce0 <= ap_const_logic_1;
        else 
            localB_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_1_d0 <= gmem_addr_read_reg_306;

    localB_1_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_1))) then 
            localB_1_we0 <= ap_const_logic_1;
        else 
            localB_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_2_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_2_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_2_ce0 <= ap_const_logic_1;
        else 
            localB_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_2_d0 <= gmem_addr_read_reg_306;

    localB_2_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_2))) then 
            localB_2_we0 <= ap_const_logic_1;
        else 
            localB_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_3_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_3_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_3_ce0 <= ap_const_logic_1;
        else 
            localB_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_3_d0 <= gmem_addr_read_reg_306;

    localB_3_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_3))) then 
            localB_3_we0 <= ap_const_logic_1;
        else 
            localB_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_4_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_4_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_4_ce0 <= ap_const_logic_1;
        else 
            localB_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_4_d0 <= gmem_addr_read_reg_306;

    localB_4_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_4))) then 
            localB_4_we0 <= ap_const_logic_1;
        else 
            localB_4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_5_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_5_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_5_ce0 <= ap_const_logic_1;
        else 
            localB_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_5_d0 <= gmem_addr_read_reg_306;

    localB_5_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_5))) then 
            localB_5_we0 <= ap_const_logic_1;
        else 
            localB_5_we0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_6_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_6_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_6_ce0 <= ap_const_logic_1;
        else 
            localB_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_6_d0 <= gmem_addr_read_reg_306;

    localB_6_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_6))) then 
            localB_6_we0 <= ap_const_logic_1;
        else 
            localB_6_we0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_7_address0 <= zext_ln227_fu_265_p1(3 - 1 downto 0);

    localB_7_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            localB_7_ce0 <= ap_const_logic_1;
        else 
            localB_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    localB_7_d0 <= gmem_addr_read_reg_306;

    localB_7_we0_assign_proc : process(ap_enable_reg_pp0_iter3, trunc_ln7_read_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (trunc_ln7_read_reg_283 = ap_const_lv3_7))) then 
            localB_7_we0 <= ap_const_logic_1;
        else 
            localB_7_we0 <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_ARADDR <= ap_const_lv64_0;
    m_axi_gmem_ARBURST <= ap_const_lv2_0;
    m_axi_gmem_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem_ARID <= ap_const_lv1_0;
    m_axi_gmem_ARLEN <= ap_const_lv32_0;
    m_axi_gmem_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem_ARPROT <= ap_const_lv3_0;
    m_axi_gmem_ARQOS <= ap_const_lv4_0;
    m_axi_gmem_ARREGION <= ap_const_lv4_0;
    m_axi_gmem_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem_ARUSER <= ap_const_lv1_0;
    m_axi_gmem_ARVALID <= ap_const_logic_0;
    m_axi_gmem_AWADDR <= ap_const_lv64_0;
    m_axi_gmem_AWBURST <= ap_const_lv2_0;
    m_axi_gmem_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem_AWID <= ap_const_lv1_0;
    m_axi_gmem_AWLEN <= ap_const_lv32_0;
    m_axi_gmem_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem_AWPROT <= ap_const_lv3_0;
    m_axi_gmem_AWQOS <= ap_const_lv4_0;
    m_axi_gmem_AWREGION <= ap_const_lv4_0;
    m_axi_gmem_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem_AWUSER <= ap_const_lv1_0;
    m_axi_gmem_AWVALID <= ap_const_logic_0;
    m_axi_gmem_BREADY <= ap_const_logic_0;

    m_axi_gmem_RREADY_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln226_reg_297, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln226_reg_297 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            m_axi_gmem_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem_WDATA <= ap_const_lv32_0;
    m_axi_gmem_WID <= ap_const_lv1_0;
    m_axi_gmem_WLAST <= ap_const_logic_0;
    m_axi_gmem_WSTRB <= ap_const_lv4_0;
    m_axi_gmem_WUSER <= ap_const_lv1_0;
    m_axi_gmem_WVALID <= ap_const_logic_0;
    trunc_ln7_read_reg_283 <= trunc_ln7;
    zext_ln211_1_cast_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln211_1),64));
    zext_ln227_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(empty_reg_301_pp0_iter2_reg),64));
end behav;
