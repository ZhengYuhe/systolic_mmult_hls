# This script segment is generated automatically by AutoPilot

set id 234
set name krnl_mmult_mux_647_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 32
set din16_signed 0
set din17_width 32
set din17_signed 0
set din18_width 32
set din18_signed 0
set din19_width 32
set din19_signed 0
set din20_width 32
set din20_signed 0
set din21_width 32
set din21_signed 0
set din22_width 32
set din22_signed 0
set din23_width 32
set din23_signed 0
set din24_width 32
set din24_signed 0
set din25_width 32
set din25_signed 0
set din26_width 32
set din26_signed 0
set din27_width 32
set din27_signed 0
set din28_width 32
set din28_signed 0
set din29_width 32
set din29_signed 0
set din30_width 32
set din30_signed 0
set din31_width 32
set din31_signed 0
set din32_width 32
set din32_signed 0
set din33_width 32
set din33_signed 0
set din34_width 32
set din34_signed 0
set din35_width 32
set din35_signed 0
set din36_width 32
set din36_signed 0
set din37_width 32
set din37_signed 0
set din38_width 32
set din38_signed 0
set din39_width 32
set din39_signed 0
set din40_width 32
set din40_signed 0
set din41_width 32
set din41_signed 0
set din42_width 32
set din42_signed 0
set din43_width 32
set din43_signed 0
set din44_width 32
set din44_signed 0
set din45_width 32
set din45_signed 0
set din46_width 32
set din46_signed 0
set din47_width 32
set din47_signed 0
set din48_width 32
set din48_signed 0
set din49_width 32
set din49_signed 0
set din50_width 32
set din50_signed 0
set din51_width 32
set din51_signed 0
set din52_width 32
set din52_signed 0
set din53_width 32
set din53_signed 0
set din54_width 32
set din54_signed 0
set din55_width 32
set din55_signed 0
set din56_width 32
set din56_signed 0
set din57_width 32
set din57_signed 0
set din58_width 32
set din58_signed 0
set din59_width 32
set din59_signed 0
set din60_width 32
set din60_signed 0
set din61_width 32
set din61_signed 0
set din62_width 32
set din62_signed 0
set din63_width 32
set din63_signed 0
set din64_width 7
set din64_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name zext_ln265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln265 \
    op interface \
    ports { zext_ln265 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name zext_ln212_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln212_1 \
    op interface \
    ports { zext_ln212_1 { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name zext_ln212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln212 \
    op interface \
    ports { zext_ln212 { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name tmp_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_10 \
    op interface \
    ports { tmp_10 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name bound66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bound66 \
    op interface \
    ports { bound66 { I 128 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name zext_ln212_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln212_2 \
    op interface \
    ports { zext_ln212_2 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name localC_0_0_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_0_4_reload \
    op interface \
    ports { localC_0_0_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name localC_0_1_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_1_4_reload \
    op interface \
    ports { localC_0_1_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name localC_0_2_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_2_4_reload \
    op interface \
    ports { localC_0_2_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name localC_0_3_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_3_4_reload \
    op interface \
    ports { localC_0_3_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name localC_0_4_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_4_4_reload \
    op interface \
    ports { localC_0_4_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name localC_0_5_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_5_4_reload \
    op interface \
    ports { localC_0_5_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name localC_0_6_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_6_4_reload \
    op interface \
    ports { localC_0_6_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name localC_0_7_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_0_7_4_reload \
    op interface \
    ports { localC_0_7_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name localC_1_0_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_0_2_reload \
    op interface \
    ports { localC_1_0_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name localC_1_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_1_2_reload \
    op interface \
    ports { localC_1_1_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name localC_1_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_2_2_reload \
    op interface \
    ports { localC_1_2_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name localC_1_3_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_3_2_reload \
    op interface \
    ports { localC_1_3_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name localC_1_4_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_4_2_reload \
    op interface \
    ports { localC_1_4_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name localC_1_5_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_5_2_reload \
    op interface \
    ports { localC_1_5_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name localC_1_6_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_6_2_reload \
    op interface \
    ports { localC_1_6_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name localC_1_7_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_1_7_2_reload \
    op interface \
    ports { localC_1_7_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name localC_2_0_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_0_2_reload \
    op interface \
    ports { localC_2_0_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name localC_2_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_1_2_reload \
    op interface \
    ports { localC_2_1_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name localC_2_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_2_2_reload \
    op interface \
    ports { localC_2_2_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name localC_2_3_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_3_2_reload \
    op interface \
    ports { localC_2_3_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name localC_2_4_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_4_2_reload \
    op interface \
    ports { localC_2_4_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name localC_2_5_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_5_2_reload \
    op interface \
    ports { localC_2_5_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name localC_2_6_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_6_2_reload \
    op interface \
    ports { localC_2_6_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name localC_2_7_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_2_7_2_reload \
    op interface \
    ports { localC_2_7_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name localC_3_0_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_0_2_reload \
    op interface \
    ports { localC_3_0_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name localC_3_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_1_2_reload \
    op interface \
    ports { localC_3_1_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name localC_3_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_2_2_reload \
    op interface \
    ports { localC_3_2_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name localC_3_3_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_3_2_reload \
    op interface \
    ports { localC_3_3_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name localC_3_4_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_4_2_reload \
    op interface \
    ports { localC_3_4_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name localC_3_5_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_5_2_reload \
    op interface \
    ports { localC_3_5_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name localC_3_6_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_6_2_reload \
    op interface \
    ports { localC_3_6_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name localC_3_7_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_3_7_2_reload \
    op interface \
    ports { localC_3_7_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name localC_4_0_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_0_2_reload \
    op interface \
    ports { localC_4_0_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name localC_4_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_1_2_reload \
    op interface \
    ports { localC_4_1_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name localC_4_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_2_2_reload \
    op interface \
    ports { localC_4_2_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name localC_4_3_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_3_2_reload \
    op interface \
    ports { localC_4_3_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name localC_4_4_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_4_2_reload \
    op interface \
    ports { localC_4_4_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name localC_4_5_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_5_2_reload \
    op interface \
    ports { localC_4_5_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name localC_4_6_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_6_2_reload \
    op interface \
    ports { localC_4_6_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name localC_4_7_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_4_7_2_reload \
    op interface \
    ports { localC_4_7_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name localC_5_0_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_0_2_reload \
    op interface \
    ports { localC_5_0_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name localC_5_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_1_2_reload \
    op interface \
    ports { localC_5_1_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name localC_5_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_2_2_reload \
    op interface \
    ports { localC_5_2_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name localC_5_3_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_3_2_reload \
    op interface \
    ports { localC_5_3_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name localC_5_4_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_4_2_reload \
    op interface \
    ports { localC_5_4_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name localC_5_5_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_5_2_reload \
    op interface \
    ports { localC_5_5_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name localC_5_6_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_6_2_reload \
    op interface \
    ports { localC_5_6_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name localC_5_7_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_5_7_2_reload \
    op interface \
    ports { localC_5_7_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name localC_6_0_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_0_2_reload \
    op interface \
    ports { localC_6_0_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name localC_6_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_1_2_reload \
    op interface \
    ports { localC_6_1_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name localC_6_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_2_2_reload \
    op interface \
    ports { localC_6_2_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name localC_6_3_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_3_2_reload \
    op interface \
    ports { localC_6_3_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name localC_6_4_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_4_2_reload \
    op interface \
    ports { localC_6_4_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name localC_6_5_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_5_2_reload \
    op interface \
    ports { localC_6_5_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name localC_6_6_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_6_2_reload \
    op interface \
    ports { localC_6_6_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name localC_6_7_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_6_7_2_reload \
    op interface \
    ports { localC_6_7_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name localC_7_0_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_0_2_reload \
    op interface \
    ports { localC_7_0_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name localC_7_1_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_1_2_reload \
    op interface \
    ports { localC_7_1_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name localC_7_2_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_2_2_reload \
    op interface \
    ports { localC_7_2_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name localC_7_3_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_3_2_reload \
    op interface \
    ports { localC_7_3_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name localC_7_4_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_4_2_reload \
    op interface \
    ports { localC_7_4_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name localC_7_5_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_5_2_reload \
    op interface \
    ports { localC_7_5_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name localC_7_6_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_6_2_reload \
    op interface \
    ports { localC_7_6_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name localC_7_7_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localC_7_7_2_reload \
    op interface \
    ports { localC_7_7_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name c \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c \
    op interface \
    ports { c { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name c_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_cast \
    op interface \
    ports { c_cast { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name gmem \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
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


