" Vim script for testing colors
" Maintainer:   Bram Moolenaar <Bram@vim.org>
" Contributors: Rafael Garcia-Suarez, Charles Campbell
" Last Change:  2008 Jun 04

" edit this file, then do ":source %", and check if the colors match

"   1             1_on_white                white_on_1
"                 1_on_black                black_on_1
"   2             2_on_white                white_on_2
"                 2_on_black                black_on_2
"   3             3_on_white                white_on_3
"                 3_on_black                black_on_3
"   4             4_on_white                white_on_4
"                 4_on_black                black_on_4
"   5             5_on_white                white_on_5
"                 5_on_black                black_on_5
"   6             6_on_white                white_on_6
"                 6_on_black                black_on_6
"   7             7_on_white                white_on_7
"                 7_on_black                black_on_7
"   8             8_on_white                white_on_8
"                 8_on_black                black_on_8
"   9             9_on_white                white_on_9
"                 9_on_black                black_on_9
"  10            10_on_white                white_on_10
"                10_on_black                black_on_10
"  11            11_on_white                white_on_11
"                11_on_black                black_on_11
"  12            12_on_white                white_on_12
"                12_on_black                black_on_12
"  13            13_on_white                white_on_13
"                13_on_black                black_on_13
"  14            14_on_white                white_on_14
"                14_on_black                black_on_14
"  15            15_on_white                white_on_15
"                15_on_black                black_on_15
"  16            16_on_white                white_on_16
"                16_on_black                black_on_16
"  17            17_on_white                white_on_17
"                17_on_black                black_on_17
"  18            18_on_white                white_on_18
"                18_on_black                black_on_18
"  19            19_on_white                white_on_19
"                19_on_black                black_on_19
"  20            20_on_white                white_on_20
"                20_on_black                black_on_20
"  21            21_on_white                white_on_21
"                21_on_black                black_on_21
"  22            22_on_white                white_on_22
"                22_on_black                black_on_22
"  23            23_on_white                white_on_23
"                23_on_black                black_on_23
"  24            24_on_white                white_on_24
"                24_on_black                black_on_24
"  25            25_on_white                white_on_25
"                25_on_black                black_on_25
"  26            26_on_white                white_on_26
"                26_on_black                black_on_26
"  27            27_on_white                white_on_27
"                27_on_black                black_on_27
"  28            28_on_white                white_on_28
"                28_on_black                black_on_28
"  29            29_on_white                white_on_29
"                29_on_black                black_on_29
"  30            30_on_white                white_on_30
"                30_on_black                black_on_30
"  31            31_on_white                white_on_31
"                31_on_black                black_on_31
"  32            32_on_white                white_on_32
"                32_on_black                black_on_32
"  33            33_on_white                white_on_33
"                33_on_black                black_on_33
"  34            34_on_white                white_on_34
"                34_on_black                black_on_34
"  35            35_on_white                white_on_35
"                35_on_black                black_on_35
"  36            36_on_white                white_on_36
"                36_on_black                black_on_36
"  37            37_on_white                white_on_37
"                37_on_black                black_on_37
"  38            38_on_white                white_on_38
"                38_on_black                black_on_38
"  39            39_on_white                white_on_39
"                39_on_black                black_on_39
"  40            40_on_white                white_on_40
"                40_on_black                black_on_40
"  41            41_on_white                white_on_41
"                41_on_black                black_on_41
"  42            42_on_white                white_on_42
"                42_on_black                black_on_42
"  43            43_on_white                white_on_43
"                43_on_black                black_on_43
"  44            44_on_white                white_on_44
"                44_on_black                black_on_44
"  45            45_on_white                white_on_45
"                45_on_black                black_on_45
"  46            46_on_white                white_on_46
"                46_on_black                black_on_46
"  47            47_on_white                white_on_47
"                47_on_black                black_on_47
"  48            48_on_white                white_on_48
"                48_on_black                black_on_48
"  49            49_on_white                white_on_49
"                49_on_black                black_on_49
"  50            50_on_white                white_on_50
"                50_on_black                black_on_50
"  51            51_on_white                white_on_51
"                51_on_black                black_on_51
"  52            52_on_white                white_on_52
"                52_on_black                black_on_52
"  53            53_on_white                white_on_53
"                53_on_black                black_on_53
"  54            54_on_white                white_on_54
"                54_on_black                black_on_54
"  55            55_on_white                white_on_55
"                55_on_black                black_on_55
"  56            56_on_white                white_on_56
"                56_on_black                black_on_56
"  57            57_on_white                white_on_57
"                57_on_black                black_on_57
"  58            58_on_white                white_on_58
"                58_on_black                black_on_58
"  59            59_on_white                white_on_59
"                59_on_black                black_on_59
"  60            60_on_white                white_on_60
"                60_on_black                black_on_60
"  61            61_on_white                white_on_61
"                61_on_black                black_on_61
"  62            62_on_white                white_on_62
"                62_on_black                black_on_62
"  63            63_on_white                white_on_63
"                63_on_black                black_on_63
"  64            64_on_white                white_on_64
"                64_on_black                black_on_64
"  65            65_on_white                white_on_65
"                65_on_black                black_on_65
"  66            66_on_white                white_on_66
"                66_on_black                black_on_66
"  67            67_on_white                white_on_67
"                67_on_black                black_on_67
"  68            68_on_white                white_on_68
"                68_on_black                black_on_68
"  69            69_on_white                white_on_69
"                69_on_black                black_on_69
"  70            70_on_white                white_on_70
"                70_on_black                black_on_70
"  71            71_on_white                white_on_71
"                71_on_black                black_on_71
"  72            72_on_white                white_on_72
"                72_on_black                black_on_72
"  73            73_on_white                white_on_73
"                73_on_black                black_on_73
"  74            74_on_white                white_on_74
"                74_on_black                black_on_74
"  75            75_on_white                white_on_75
"                75_on_black                black_on_75
"  76            76_on_white                white_on_76
"                76_on_black                black_on_76
"  77            77_on_white                white_on_77
"                77_on_black                black_on_77
"  78            78_on_white                white_on_78
"                78_on_black                black_on_78
"  79            79_on_white                white_on_79
"                79_on_black                black_on_79
"  80            80_on_white                white_on_80
"                80_on_black                black_on_80
"  81            81_on_white                white_on_81
"                81_on_black                black_on_81
"  82            82_on_white                white_on_82
"                82_on_black                black_on_82
"  83            83_on_white                white_on_83
"                83_on_black                black_on_83
"  84            84_on_white                white_on_84
"                84_on_black                black_on_84
"  85            85_on_white                white_on_85
"                85_on_black                black_on_85
"  86            86_on_white                white_on_86
"                86_on_black                black_on_86
"  87            87_on_white                white_on_87
"                87_on_black                black_on_87
"  88            88_on_white                white_on_88
"                88_on_black                black_on_88
"  89            89_on_white                white_on_89
"                89_on_black                black_on_89
"  90            90_on_white                white_on_90
"                90_on_black                black_on_90
"  91            91_on_white                white_on_91
"                91_on_black                black_on_91
"  92            92_on_white                white_on_92
"                92_on_black                black_on_92
"  93            93_on_white                white_on_93
"                93_on_black                black_on_93
"  94            94_on_white                white_on_94
"                94_on_black                black_on_94
"  95            95_on_white                white_on_95
"                95_on_black                black_on_95
"  96            96_on_white                white_on_96
"                96_on_black                black_on_96
"  97            97_on_white                white_on_97
"                97_on_black                black_on_97
"  98            98_on_white                white_on_98
"                98_on_black                black_on_98
"  99            99_on_white                white_on_99
"                99_on_black                black_on_99
" 100           100_on_white                white_on_100
"               100_on_black                black_on_100
" 101           101_on_white                white_on_101
"               101_on_black                black_on_101
" 102           102_on_white                white_on_102
"               102_on_black                black_on_102
" 103           103_on_white                white_on_103
"               103_on_black                black_on_103
" 104           104_on_white                white_on_104
"               104_on_black                black_on_104
" 105           105_on_white                white_on_105
"               105_on_black                black_on_105
" 106           106_on_white                white_on_106
"               106_on_black                black_on_106
" 107           107_on_white                white_on_107
"               107_on_black                black_on_107
" 108           108_on_white                white_on_108
"               108_on_black                black_on_108
" 109           109_on_white                white_on_109
"               109_on_black                black_on_109
" 110           110_on_white                white_on_110
"               110_on_black                black_on_110
" 111           111_on_white                white_on_111
"               111_on_black                black_on_111
" 112           112_on_white                white_on_112
"               112_on_black                black_on_112
" 113           113_on_white                white_on_113
"               113_on_black                black_on_113
" 114           114_on_white                white_on_114
"               114_on_black                black_on_114
" 115           115_on_white                white_on_115
"               115_on_black                black_on_115
" 116           116_on_white                white_on_116
"               116_on_black                black_on_116
" 117           117_on_white                white_on_117
"               117_on_black                black_on_117
" 118           118_on_white                white_on_118
"               118_on_black                black_on_118
" 119           119_on_white                white_on_119
"               119_on_black                black_on_119
" 120           120_on_white                white_on_120
"               120_on_black                black_on_120
" 121           121_on_white                white_on_121
"               121_on_black                black_on_121
" 122           122_on_white                white_on_122
"               122_on_black                black_on_122
" 123           123_on_white                white_on_123
"               123_on_black                black_on_123
" 124           124_on_white                white_on_124
"               124_on_black                black_on_124
" 125           125_on_white                white_on_125
"               125_on_black                black_on_125
" 126           126_on_white                white_on_126
"               126_on_black                black_on_126
" 127           127_on_white                white_on_127
"               127_on_black                black_on_127
" 128           128_on_white                white_on_128
"               128_on_black                black_on_128
" 129           129_on_white                white_on_129
"               129_on_black                black_on_129
" 130           130_on_white                white_on_130
"               130_on_black                black_on_130
" 131           131_on_white                white_on_131
"               131_on_black                black_on_131
" 132           132_on_white                white_on_132
"               132_on_black                black_on_132
" 133           133_on_white                white_on_133
"               133_on_black                black_on_133
" 134           134_on_white                white_on_134
"               134_on_black                black_on_134
" 135           135_on_white                white_on_135
"               135_on_black                black_on_135
" 136           136_on_white                white_on_136
"               136_on_black                black_on_136
" 137           137_on_white                white_on_137
"               137_on_black                black_on_137
" 138           138_on_white                white_on_138
"               138_on_black                black_on_138
" 139           139_on_white                white_on_139
"               139_on_black                black_on_139
" 140           140_on_white                white_on_140
"               140_on_black                black_on_140
" 141           141_on_white                white_on_141
"               141_on_black                black_on_141
" 142           142_on_white                white_on_142
"               142_on_black                black_on_142
" 143           143_on_white                white_on_143
"               143_on_black                black_on_143
" 144           144_on_white                white_on_144
"               144_on_black                black_on_144
" 145           145_on_white                white_on_145
"               145_on_black                black_on_145
" 146           146_on_white                white_on_146
"               146_on_black                black_on_146
" 147           147_on_white                white_on_147
"               147_on_black                black_on_147
" 148           148_on_white                white_on_148
"               148_on_black                black_on_148
" 149           149_on_white                white_on_149
"               149_on_black                black_on_149
" 150           150_on_white                white_on_150
"               150_on_black                black_on_150
" 151           151_on_white                white_on_151
"               151_on_black                black_on_151
" 152           152_on_white                white_on_152
"               152_on_black                black_on_152
" 153           153_on_white                white_on_153
"               153_on_black                black_on_153
" 154           154_on_white                white_on_154
"               154_on_black                black_on_154
" 155           155_on_white                white_on_155
"               155_on_black                black_on_155
" 156           156_on_white                white_on_156
"               156_on_black                black_on_156
" 157           157_on_white                white_on_157
"               157_on_black                black_on_157
" 158           158_on_white                white_on_158
"               158_on_black                black_on_158
" 159           159_on_white                white_on_159
"               159_on_black                black_on_159
" 160           160_on_white                white_on_160
"               160_on_black                black_on_160
" 161           161_on_white                white_on_161
"               161_on_black                black_on_161
" 162           162_on_white                white_on_162
"               162_on_black                black_on_162
" 163           163_on_white                white_on_163
"               163_on_black                black_on_163
" 164           164_on_white                white_on_164
"               164_on_black                black_on_164
" 165           165_on_white                white_on_165
"               165_on_black                black_on_165
" 166           166_on_white                white_on_166
"               166_on_black                black_on_166
" 167           167_on_white                white_on_167
"               167_on_black                black_on_167
" 168           168_on_white                white_on_168
"               168_on_black                black_on_168
" 169           169_on_white                white_on_169
"               169_on_black                black_on_169
" 170           170_on_white                white_on_170
"               170_on_black                black_on_170
" 171           171_on_white                white_on_171
"               171_on_black                black_on_171
" 172           172_on_white                white_on_172
"               172_on_black                black_on_172
" 173           173_on_white                white_on_173
"               173_on_black                black_on_173
" 174           174_on_white                white_on_174
"               174_on_black                black_on_174
" 175           175_on_white                white_on_175
"               175_on_black                black_on_175
" 176           176_on_white                white_on_176
"               176_on_black                black_on_176
" 177           177_on_white                white_on_177
"               177_on_black                black_on_177
" 178           178_on_white                white_on_178
"               178_on_black                black_on_178
" 179           179_on_white                white_on_179
"               179_on_black                black_on_179
" 180           180_on_white                white_on_180
"               180_on_black                black_on_180
" 181           181_on_white                white_on_181
"               181_on_black                black_on_181
" 182           182_on_white                white_on_182
"               182_on_black                black_on_182
" 183           183_on_white                white_on_183
"               183_on_black                black_on_183
" 184           184_on_white                white_on_184
"               184_on_black                black_on_184
" 185           185_on_white                white_on_185
"               185_on_black                black_on_185
" 186           186_on_white                white_on_186
"               186_on_black                black_on_186
" 187           187_on_white                white_on_187
"               187_on_black                black_on_187
" 188           188_on_white                white_on_188
"               188_on_black                black_on_188
" 189           189_on_white                white_on_189
"               189_on_black                black_on_189
" 190           190_on_white                white_on_190
"               190_on_black                black_on_190
" 191           191_on_white                white_on_191
"               191_on_black                black_on_191
" 192           192_on_white                white_on_192
"               192_on_black                black_on_192
" 193           193_on_white                white_on_193
"               193_on_black                black_on_193
" 194           194_on_white                white_on_194
"               194_on_black                black_on_194
" 195           195_on_white                white_on_195
"               195_on_black                black_on_195
" 196           196_on_white                white_on_196
"               196_on_black                black_on_196
" 197           197_on_white                white_on_197
"               197_on_black                black_on_197
" 198           198_on_white                white_on_198
"               198_on_black                black_on_198
" 199           199_on_white                white_on_199
"               199_on_black                black_on_199
" 200           200_on_white                white_on_200
"               200_on_black                black_on_200
" 201           201_on_white                white_on_201
"               201_on_black                black_on_201
" 202           202_on_white                white_on_202
"               202_on_black                black_on_202
" 203           203_on_white                white_on_203
"               203_on_black                black_on_203
" 204           204_on_white                white_on_204
"               204_on_black                black_on_204
" 205           205_on_white                white_on_205
"               205_on_black                black_on_205
" 206           206_on_white                white_on_206
"               206_on_black                black_on_206
" 207           207_on_white                white_on_207
"               207_on_black                black_on_207
" 208           208_on_white                white_on_208
"               208_on_black                black_on_208
" 209           209_on_white                white_on_209
"               209_on_black                black_on_209
" 210           210_on_white                white_on_210
"               210_on_black                black_on_210
" 211           211_on_white                white_on_211
"               211_on_black                black_on_211
" 212           212_on_white                white_on_212
"               212_on_black                black_on_212
" 213           213_on_white                white_on_213
"               213_on_black                black_on_213
" 214           214_on_white                white_on_214
"               214_on_black                black_on_214
" 215           215_on_white                white_on_215
"               215_on_black                black_on_215
" 216           216_on_white                white_on_216
"               216_on_black                black_on_216
" 217           217_on_white                white_on_217
"               217_on_black                black_on_217
" 218           218_on_white                white_on_218
"               218_on_black                black_on_218
" 219           219_on_white                white_on_219
"               219_on_black                black_on_219
" 220           220_on_white                white_on_220
"               220_on_black                black_on_220
" 221           221_on_white                white_on_221
"               221_on_black                black_on_221
" 222           222_on_white                white_on_222
"               222_on_black                black_on_222
" 223           223_on_white                white_on_223
"               223_on_black                black_on_223
" 224           224_on_white                white_on_224
"               224_on_black                black_on_224
" 225           225_on_white                white_on_225
"               225_on_black                black_on_225
" 226           226_on_white                white_on_226
"               226_on_black                black_on_226
" 227           227_on_white                white_on_227
"               227_on_black                black_on_227
" 228           228_on_white                white_on_228
"               228_on_black                black_on_228
" 229           229_on_white                white_on_229
"               229_on_black                black_on_229
" 230           230_on_white                white_on_230
"               230_on_black                black_on_230
" 231           231_on_white                white_on_231
"               231_on_black                black_on_231
" 232           232_on_white                white_on_232
"               232_on_black                black_on_232
" 233           233_on_white                white_on_233
"               233_on_black                black_on_233
" 234           234_on_white                white_on_234
"               234_on_black                black_on_234
" 235           235_on_white                white_on_235
"               235_on_black                black_on_235
" 236           236_on_white                white_on_236
"               236_on_black                black_on_236
" 237           237_on_white                white_on_237
"               237_on_black                black_on_237
" 238           238_on_white                white_on_238
"               238_on_black                black_on_238
" 239           239_on_white                white_on_239
"               239_on_black                black_on_239
" 240           240_on_white                white_on_240
"               240_on_black                black_on_240
" 241           241_on_white                white_on_241
"               241_on_black                black_on_241
" 242           242_on_white                white_on_242
"               242_on_black                black_on_242
" 243           243_on_white                white_on_243
"               243_on_black                black_on_243
" 244           244_on_white                white_on_244
"               244_on_black                black_on_244
" 245           245_on_white                white_on_245
"               245_on_black                black_on_245
" 246           246_on_white                white_on_246
"               246_on_black                black_on_246
" 247           247_on_white                white_on_247
"               247_on_black                black_on_247
" 248           248_on_white                white_on_248
"               248_on_black                black_on_248
" 249           249_on_white                white_on_249
"               249_on_black                black_on_249
" 250           250_on_white                white_on_250
"               250_on_black                black_on_250
" 251           251_on_white                white_on_251
"               251_on_black                black_on_251
" 252           252_on_white                white_on_252
"               252_on_black                black_on_252
" 253           253_on_white                white_on_253
"               253_on_black                black_on_253
" 254           254_on_white                white_on_254
"               254_on_black                black_on_254
" 255           255_on_white                white_on_255
"               255_on_black                black_on_255
" black         black_on_white              white_on_black
"               black_on_black              black_on_black
" darkred       darkred_on_white            white_on_darkred
"               darkred_on_black            black_on_darkred
" darkgreen     darkgreen_on_white          white_on_darkgreen
"               darkgreen_on_black          black_on_darkgreen
" brown         brown_on_white              white_on_brown
"               brown_on_black              black_on_brown
" darkblue      darkblue_on_white           white_on_darkblue
"               darkblue_on_black           black_on_darkblue
" darkmagenta   darkmagenta_on_white        white_on_darkmagenta
"               darkmagenta_on_black        black_on_darkmagenta
" darkcyan      darkcyan_on_white           white_on_darkcyan
"               darkcyan_on_black           black_on_darkcyan
" lightgray     lightgray_on_white          white_on_lightgray
"               lightgray_on_black          black_on_lightgray
" darkgray      darkgray_on_white           white_on_darkgray
"               darkgray_on_black           black_on_darkgray
" red           red_on_white                white_on_red
"               red_on_black                black_on_red
" green         green_on_white              white_on_green
"               green_on_black              black_on_green
" yellow        yellow_on_white             white_on_yellow
"               yellow_on_black             black_on_yellow
" blue          blue_on_white               white_on_blue
"               blue_on_black               black_on_blue
" magenta       magenta_on_white            white_on_magenta
"               magenta_on_black            black_on_magenta
" cyan          cyan_on_white               white_on_cyan
"               cyan_on_black               black_on_cyan
" white         white_on_white              white_on_white
"               white_on_black              black_on_white
" grey          grey_on_white               white_on_grey
"               grey_on_black               black_on_grey
" lightred      lightred_on_white           white_on_lightred
"               lightred_on_black           black_on_lightred
" lightgreen    lightgreen_on_white         white_on_lightgreen
"               lightgreen_on_black         black_on_lightgreen
" lightyellow   lightyellow_on_white        white_on_lightyellow
"               lightyellow_on_black        black_on_lightyellow
" lightblue     lightblue_on_white          white_on_lightblue
"               lightblue_on_black          black_on_lightblue
" lightmagenta  lightmagenta_on_white       white_on_lightmagenta
"               lightmagenta_on_black       black_on_lightmagenta
" lightcyan     lightcyan_on_white          white_on_lightcyan
"               lightcyan_on_black          black_on_lightcyan

" Open this file in a window if it isn't edited yet.
" Use the current window if it's empty.
if expand('%:p') != expand('<sfile>:p')
  let s:fname = expand('<sfile>')
  if exists('*fnameescape')
    let s:fname = fnameescape(s:fname)
  else
    let s:fname = escape(s:fname, ' \|')
  endif
  if &mod || line('$') != 1 || getline(1) != ''
    exe "new " . s:fname
  else
    exe "edit " . s:fname
  endif
  unlet s:fname
endif

syn clear
8
while search("_on_", "W") < 564
  let col1 = substitute(expand("<cword>"), '\([a-z0-9]\+\)_on_[a-z0-9]\+', '\1', "")
  let col2 = substitute(expand("<cword>"), '[a-z0-9]\+_on_\([a-z0-9]\+\)', '\1', "")
  exec 'hi col_'.col1.'_'.col2.' ctermfg='.col1.' guifg='.col1.' ctermbg='.col2.' guibg='.col2
  exec 'syn keyword col_'.col1.'_'.col2.' '.col1.'_on_'.col2
endwhile
8,564g/^" [a-z0-9]/exec 'hi col_'.expand("<cword>").' ctermfg='.expand("<cword>").' guifg='.expand("<cword>")| exec 'syn keyword col_'.expand("<cword>")." ".expand("<cword>")
nohlsearch
