# This script segment is generated automatically by AutoPilot

set name krnl_mmult_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name localA_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_7 \
    op interface \
    ports { localA_7_address0 { O 12 vector } localA_7_ce0 { O 1 bit } localA_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name localA_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_6 \
    op interface \
    ports { localA_6_address0 { O 12 vector } localA_6_ce0 { O 1 bit } localA_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name localA_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_5 \
    op interface \
    ports { localA_5_address0 { O 12 vector } localA_5_ce0 { O 1 bit } localA_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name localA_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_4 \
    op interface \
    ports { localA_4_address0 { O 12 vector } localA_4_ce0 { O 1 bit } localA_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name localA_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_3 \
    op interface \
    ports { localA_3_address0 { O 12 vector } localA_3_ce0 { O 1 bit } localA_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name localA_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_2 \
    op interface \
    ports { localA_2_address0 { O 12 vector } localA_2_ce0 { O 1 bit } localA_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name localA_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_1 \
    op interface \
    ports { localA_1_address0 { O 12 vector } localA_1_ce0 { O 1 bit } localA_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name localA_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localA_0 \
    op interface \
    ports { localA_0_address0 { O 12 vector } localA_0_ce0 { O 1 bit } localA_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localA_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name localB_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_7 \
    op interface \
    ports { localB_7_address0 { O 12 vector } localB_7_ce0 { O 1 bit } localB_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name localB_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_6 \
    op interface \
    ports { localB_6_address0 { O 12 vector } localB_6_ce0 { O 1 bit } localB_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name localB_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_5 \
    op interface \
    ports { localB_5_address0 { O 12 vector } localB_5_ce0 { O 1 bit } localB_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name localB_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_4 \
    op interface \
    ports { localB_4_address0 { O 12 vector } localB_4_ce0 { O 1 bit } localB_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name localB_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_3 \
    op interface \
    ports { localB_3_address0 { O 12 vector } localB_3_ce0 { O 1 bit } localB_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name localB_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_2 \
    op interface \
    ports { localB_2_address0 { O 12 vector } localB_2_ce0 { O 1 bit } localB_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name localB_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_1 \
    op interface \
    ports { localB_1_address0 { O 12 vector } localB_1_ce0 { O 1 bit } localB_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name localB_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename localB_0 \
    op interface \
    ports { localB_0_address0 { O 12 vector } localB_0_ce0 { O 1 bit } localB_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'localB_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name localC_7_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_7_4 \
    op interface \
    ports { localC_7_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name localC_7_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_6_4 \
    op interface \
    ports { localC_7_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name localC_7_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_5_4 \
    op interface \
    ports { localC_7_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name localC_7_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_4_4 \
    op interface \
    ports { localC_7_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name localC_7_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_3_4 \
    op interface \
    ports { localC_7_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name localC_7_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_2_4 \
    op interface \
    ports { localC_7_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name localC_7_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_1_4 \
    op interface \
    ports { localC_7_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name localC_7_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_0_4 \
    op interface \
    ports { localC_7_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name localC_6_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_7_4 \
    op interface \
    ports { localC_6_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name localC_6_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_6_4 \
    op interface \
    ports { localC_6_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name localC_6_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_5_4 \
    op interface \
    ports { localC_6_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name localC_6_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_4_4 \
    op interface \
    ports { localC_6_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name localC_6_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_3_4 \
    op interface \
    ports { localC_6_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name localC_6_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_2_4 \
    op interface \
    ports { localC_6_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name localC_6_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_1_4 \
    op interface \
    ports { localC_6_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name localC_6_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_0_4 \
    op interface \
    ports { localC_6_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name localC_5_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_7_4 \
    op interface \
    ports { localC_5_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name localC_5_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_6_4 \
    op interface \
    ports { localC_5_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name localC_5_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_5_4 \
    op interface \
    ports { localC_5_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name localC_5_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_4_4 \
    op interface \
    ports { localC_5_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name localC_5_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_3_4 \
    op interface \
    ports { localC_5_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name localC_5_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_2_4 \
    op interface \
    ports { localC_5_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name localC_5_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_1_4 \
    op interface \
    ports { localC_5_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name localC_5_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_0_4 \
    op interface \
    ports { localC_5_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name localC_4_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_7_4 \
    op interface \
    ports { localC_4_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name localC_4_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_6_4 \
    op interface \
    ports { localC_4_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name localC_4_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_5_4 \
    op interface \
    ports { localC_4_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name localC_4_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_4_4 \
    op interface \
    ports { localC_4_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name localC_4_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_3_4 \
    op interface \
    ports { localC_4_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name localC_4_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_2_4 \
    op interface \
    ports { localC_4_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name localC_4_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_1_4 \
    op interface \
    ports { localC_4_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name localC_4_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_0_4 \
    op interface \
    ports { localC_4_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name localC_3_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_7_4 \
    op interface \
    ports { localC_3_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name localC_3_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_6_4 \
    op interface \
    ports { localC_3_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name localC_3_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_5_4 \
    op interface \
    ports { localC_3_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name localC_3_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_4_4 \
    op interface \
    ports { localC_3_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name localC_3_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_3_4 \
    op interface \
    ports { localC_3_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name localC_3_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_2_4 \
    op interface \
    ports { localC_3_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name localC_3_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_1_4 \
    op interface \
    ports { localC_3_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name localC_3_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_0_4 \
    op interface \
    ports { localC_3_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name localC_2_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_7_4 \
    op interface \
    ports { localC_2_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name localC_2_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_6_4 \
    op interface \
    ports { localC_2_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name localC_2_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_5_4 \
    op interface \
    ports { localC_2_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name localC_2_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_4_4 \
    op interface \
    ports { localC_2_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name localC_2_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_3_4 \
    op interface \
    ports { localC_2_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name localC_2_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_2_4 \
    op interface \
    ports { localC_2_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name localC_2_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_1_4 \
    op interface \
    ports { localC_2_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name localC_2_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_0_4 \
    op interface \
    ports { localC_2_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name localC_1_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_7_4 \
    op interface \
    ports { localC_1_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name localC_1_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_6_4 \
    op interface \
    ports { localC_1_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name localC_1_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_5_4 \
    op interface \
    ports { localC_1_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name localC_1_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_4_4 \
    op interface \
    ports { localC_1_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name localC_1_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_3_4 \
    op interface \
    ports { localC_1_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name localC_1_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_2_4 \
    op interface \
    ports { localC_1_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name localC_1_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_1_4 \
    op interface \
    ports { localC_1_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name localC_1_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_0_4 \
    op interface \
    ports { localC_1_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name localC_0_7_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_7_2 \
    op interface \
    ports { localC_0_7_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name localC_0_6_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_6_2 \
    op interface \
    ports { localC_0_6_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name localC_0_5_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_5_2 \
    op interface \
    ports { localC_0_5_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name localC_0_4_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_4_2 \
    op interface \
    ports { localC_0_4_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name localC_0_3_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_3_2 \
    op interface \
    ports { localC_0_3_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name localC_0_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_2_2 \
    op interface \
    ports { localC_0_2_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name localC_0_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_1_2 \
    op interface \
    ports { localC_0_1_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name localC_0_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_0_2 \
    op interface \
    ports { localC_0_0_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name localC_7_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_7_2_out \
    op interface \
    ports { localC_7_7_2_out { O 32 vector } localC_7_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name localC_7_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_6_2_out \
    op interface \
    ports { localC_7_6_2_out { O 32 vector } localC_7_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name localC_7_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_5_2_out \
    op interface \
    ports { localC_7_5_2_out { O 32 vector } localC_7_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name localC_7_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_4_2_out \
    op interface \
    ports { localC_7_4_2_out { O 32 vector } localC_7_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name localC_7_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_3_2_out \
    op interface \
    ports { localC_7_3_2_out { O 32 vector } localC_7_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name localC_7_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_2_2_out \
    op interface \
    ports { localC_7_2_2_out { O 32 vector } localC_7_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name localC_7_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_1_2_out \
    op interface \
    ports { localC_7_1_2_out { O 32 vector } localC_7_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name localC_7_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_0_2_out \
    op interface \
    ports { localC_7_0_2_out { O 32 vector } localC_7_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name localC_6_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_7_2_out \
    op interface \
    ports { localC_6_7_2_out { O 32 vector } localC_6_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name localC_6_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_6_2_out \
    op interface \
    ports { localC_6_6_2_out { O 32 vector } localC_6_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name localC_6_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_5_2_out \
    op interface \
    ports { localC_6_5_2_out { O 32 vector } localC_6_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name localC_6_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_4_2_out \
    op interface \
    ports { localC_6_4_2_out { O 32 vector } localC_6_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name localC_6_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_3_2_out \
    op interface \
    ports { localC_6_3_2_out { O 32 vector } localC_6_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name localC_6_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_2_2_out \
    op interface \
    ports { localC_6_2_2_out { O 32 vector } localC_6_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name localC_6_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_1_2_out \
    op interface \
    ports { localC_6_1_2_out { O 32 vector } localC_6_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name localC_6_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_0_2_out \
    op interface \
    ports { localC_6_0_2_out { O 32 vector } localC_6_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name localC_5_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_7_2_out \
    op interface \
    ports { localC_5_7_2_out { O 32 vector } localC_5_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name localC_5_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_6_2_out \
    op interface \
    ports { localC_5_6_2_out { O 32 vector } localC_5_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name localC_5_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_5_2_out \
    op interface \
    ports { localC_5_5_2_out { O 32 vector } localC_5_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name localC_5_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_4_2_out \
    op interface \
    ports { localC_5_4_2_out { O 32 vector } localC_5_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name localC_5_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_3_2_out \
    op interface \
    ports { localC_5_3_2_out { O 32 vector } localC_5_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name localC_5_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_2_2_out \
    op interface \
    ports { localC_5_2_2_out { O 32 vector } localC_5_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name localC_5_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_1_2_out \
    op interface \
    ports { localC_5_1_2_out { O 32 vector } localC_5_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name localC_5_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_0_2_out \
    op interface \
    ports { localC_5_0_2_out { O 32 vector } localC_5_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name localC_4_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_7_2_out \
    op interface \
    ports { localC_4_7_2_out { O 32 vector } localC_4_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name localC_4_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_6_2_out \
    op interface \
    ports { localC_4_6_2_out { O 32 vector } localC_4_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name localC_4_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_5_2_out \
    op interface \
    ports { localC_4_5_2_out { O 32 vector } localC_4_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name localC_4_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_4_2_out \
    op interface \
    ports { localC_4_4_2_out { O 32 vector } localC_4_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name localC_4_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_3_2_out \
    op interface \
    ports { localC_4_3_2_out { O 32 vector } localC_4_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name localC_4_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_2_2_out \
    op interface \
    ports { localC_4_2_2_out { O 32 vector } localC_4_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name localC_4_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_1_2_out \
    op interface \
    ports { localC_4_1_2_out { O 32 vector } localC_4_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name localC_4_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_0_2_out \
    op interface \
    ports { localC_4_0_2_out { O 32 vector } localC_4_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name localC_3_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_7_2_out \
    op interface \
    ports { localC_3_7_2_out { O 32 vector } localC_3_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name localC_3_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_6_2_out \
    op interface \
    ports { localC_3_6_2_out { O 32 vector } localC_3_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name localC_3_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_5_2_out \
    op interface \
    ports { localC_3_5_2_out { O 32 vector } localC_3_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name localC_3_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_4_2_out \
    op interface \
    ports { localC_3_4_2_out { O 32 vector } localC_3_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name localC_3_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_3_2_out \
    op interface \
    ports { localC_3_3_2_out { O 32 vector } localC_3_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name localC_3_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_2_2_out \
    op interface \
    ports { localC_3_2_2_out { O 32 vector } localC_3_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name localC_3_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_1_2_out \
    op interface \
    ports { localC_3_1_2_out { O 32 vector } localC_3_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name localC_3_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_0_2_out \
    op interface \
    ports { localC_3_0_2_out { O 32 vector } localC_3_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name localC_2_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_7_2_out \
    op interface \
    ports { localC_2_7_2_out { O 32 vector } localC_2_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name localC_2_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_6_2_out \
    op interface \
    ports { localC_2_6_2_out { O 32 vector } localC_2_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name localC_2_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_5_2_out \
    op interface \
    ports { localC_2_5_2_out { O 32 vector } localC_2_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name localC_2_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_4_2_out \
    op interface \
    ports { localC_2_4_2_out { O 32 vector } localC_2_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name localC_2_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_3_2_out \
    op interface \
    ports { localC_2_3_2_out { O 32 vector } localC_2_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name localC_2_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_2_2_out \
    op interface \
    ports { localC_2_2_2_out { O 32 vector } localC_2_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name localC_2_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_1_2_out \
    op interface \
    ports { localC_2_1_2_out { O 32 vector } localC_2_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name localC_2_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_0_2_out \
    op interface \
    ports { localC_2_0_2_out { O 32 vector } localC_2_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name localC_1_7_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_7_2_out \
    op interface \
    ports { localC_1_7_2_out { O 32 vector } localC_1_7_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name localC_1_6_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_6_2_out \
    op interface \
    ports { localC_1_6_2_out { O 32 vector } localC_1_6_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name localC_1_5_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_5_2_out \
    op interface \
    ports { localC_1_5_2_out { O 32 vector } localC_1_5_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name localC_1_4_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_4_2_out \
    op interface \
    ports { localC_1_4_2_out { O 32 vector } localC_1_4_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name localC_1_3_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_3_2_out \
    op interface \
    ports { localC_1_3_2_out { O 32 vector } localC_1_3_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name localC_1_2_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_2_2_out \
    op interface \
    ports { localC_1_2_2_out { O 32 vector } localC_1_2_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name localC_1_1_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_1_2_out \
    op interface \
    ports { localC_1_1_2_out { O 32 vector } localC_1_1_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name localC_1_0_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_0_2_out \
    op interface \
    ports { localC_1_0_2_out { O 32 vector } localC_1_0_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name localC_0_7_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_7_4_out \
    op interface \
    ports { localC_0_7_4_out { O 32 vector } localC_0_7_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name localC_0_6_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_6_4_out \
    op interface \
    ports { localC_0_6_4_out { O 32 vector } localC_0_6_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name localC_0_5_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_5_4_out \
    op interface \
    ports { localC_0_5_4_out { O 32 vector } localC_0_5_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name localC_0_4_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_4_4_out \
    op interface \
    ports { localC_0_4_4_out { O 32 vector } localC_0_4_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name localC_0_3_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_3_4_out \
    op interface \
    ports { localC_0_3_4_out { O 32 vector } localC_0_3_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name localC_0_2_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_2_4_out \
    op interface \
    ports { localC_0_2_4_out { O 32 vector } localC_0_2_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name localC_0_1_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_1_4_out \
    op interface \
    ports { localC_0_1_4_out { O 32 vector } localC_0_1_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name localC_0_0_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_0_4_out \
    op interface \
    ports { localC_0_0_4_out { O 32 vector } localC_0_0_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName krnl_mmult_flow_control_loop_pipe_sequential_init_U
set CompName krnl_mmult_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix krnl_mmult_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


