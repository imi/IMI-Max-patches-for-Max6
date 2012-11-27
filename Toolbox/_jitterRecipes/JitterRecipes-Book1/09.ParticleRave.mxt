max v2;#N vpatcher 650 108 1501 605;#P window setfont "Sans Serif" 9.;#P comment 362 70 94 196617 number of particles;#P number 327 69 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 327 89 41 196617 dim \$1;#P flonum 598 311 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P comment 664 124 110 196617 scale x \, y \, z velocities;#P comment 530 64 184 196617 3. Generate Velocities for the particles;#P newex 451 332 157 196617 jit.op @op * * * pass @val 0.97;#P newex 451 353 101 196617 jit.matrix soundgrid;#P flonum 653 204 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 653 222 131 196617 slide_up \$1 \, slide_down \$1;#P flonum 558 76 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 511 92 58 196617 metro 100;#P toggle 511 65 20 0;#P comment 161 77 116 196617 reset particles to origin;#P button 145 75 15 0;#P button 161 169 15 0;#P flonum 736 139 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 700 139 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 664 139 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 664 158 120 196617 pak 1. 1. 1. 1.;#P newex 511 249 184 196617 jit.slide @slide_up 10 @slide_down 10;#N vpatcher 101 490 756 835;#P origin 0 2;#P inlet 87 21 15 0;#P window setfont "Sans Serif" 9.;#P newex 87 146 155 196617 jit.matrix 4 char 256 @interp 1;#P newex 87 123 94 196617 jit.noise 4 char 16;#P newex 18 178 62 196617 jit.charmap;#P newex 425 21 48 196617 loadbang;#P newex 259 57 97 196617 jit.noise 1 char 5 5;#P newex 259 163 65 196617 jit.op @op *;#P newex 425 133 164 196617 jit.matrix 1 char 30 30 @interp 1;#P newex 425 111 137 196617 jit.matrix mask1 1 char 4 4;#P newex 425 89 78 196617 jit.fill mask1 0;#P message 425 69 199 196617 0 0 0 0 0 255 255 0 0 255 255 0 0 0 0 0;#P newex 18 207 66 196617 jit.unpack 4;#P newex 104 271 53 196617 jit.pack 4;#P outlet 104 315 15 0;#P newex 259 136 66 196617 jit.rgb2luma;#P newex 259 115 112 196617 jit.brcosa @contrast 2;#P newex 259 89 164 196617 jit.matrix 4 char 30 30 @interp 1;#P newex 18 75 164 196617 jit.matrix 4 char 30 30 @interp 1;#P newex 18 51 97 196617 jit.noise 1 char 6 6;#P fasten 18 0 0 0 92 48 23 48;#P connect 0 0 1 0;#P connect 1 0 15 0;#P connect 15 0 7 0;#P connect 17 0 15 1;#P connect 18 0 16 0;#P connect 16 0 17 0;#P connect 12 0 6 0;#P connect 6 0 5 0;#P connect 7 1 6 1;#P connect 7 2 6 2;#P connect 7 3 6 3;#P fasten 18 0 13 0 92 48 264 48;#P connect 13 0 2 0;#P connect 2 0 3 0;#P connect 3 0 4 0;#P connect 4 0 12 0;#P fasten 11 0 12 1 430 156 319 156;#P connect 14 0 8 0;#P fasten 18 0 8 0 92 48 430 48;#P connect 8 0 9 0;#P connect 9 0 10 0;#P connect 10 0 11 0;#P pop 1;#P newobj 161 213 92 196617 p particle-texture;#P message 145 94 83 196617 setall 0. 0. 0. 1.;#P newex 511 193 138 196617 jit.op @op * @val 1. 1. 1. 1.;#P newex 511 161 151 196617 jit.op @op - - - pass @val 0.05;#P newex 511 138 151 196617 jit.op @op * * * pass @val 0.1;#P newex 511 115 101 196617 jit.noise 4 float32 6;#P newex 333 285 64 196617 jit.op @op +;#P newex 68 295 96 196617 jit.gl.handle flicker;#P newex 161 250 159 196617 jit.gl.texture flicker @dim 30 30;#P hidden newex 135 464 100 196617 bgcolor 150 150 20;#P flonum 92 66 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 376 343 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 60 404 68 196617 fullscreen \$1;#P toggle 43 404 15 0;#P newex 85 379 38 196617 sel 27;#P newex 43 379 40 196617 key;#P newex 60 423 158 196617 jit.window flicker @fsmenubar 0;#P window linecount 2;#P newex 42 316 248 196617 jit.gl.render flicker @blend_enable 1 @viewalign 1 @erase_color 0. 0. 0.1 1.;#P window linecount 1;#P newex 42 92 60 196617 qmetro 0.5;#P newex 333 250 101 196617 jit.matrix soundgrid;#P newex 42 113 84 196617 t b b b erase b;#P comment 59 51 107 196617 1. Turn on Rendering;#P newex 145 114 155 196617 jit.matrix soundgrid 4 float32 6;#P toggle 29 51 29 0;#N vpatcher 840 609 1459 862;#P origin 0 9;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P message 165 117 84 196617 color 1. 1. 1. \$4;#P message 186 41 78 196617 scale \$1 \$1 \$1;#P newex 51 117 20 196617 t b;#P message 73 117 90 196617 position \$1 \$2 \$3;#P newex 73 94 41 196617 jit.iter;#P window linecount 2;#P newex 50 158 348 196617 jit.gl.gridshape flicker @blend_enable 1 @automatic 0 @shape plane @color 1. 1. 1. 1. @lighting_enable 0 @scale 0.5 0.5 0.5 @dim 2 2 @displaylist 1;#P inlet 50 138 15 0;#P inlet 73 74 15 0;#P inlet 186 21 15 0;#P fasten 5 0 3 0 78 141 55 141;#P connect 6 0 3 0;#P fasten 7 0 3 0 191 146 55 146;#P connect 2 0 3 0;#P fasten 8 0 3 0 170 153 55 153;#P connect 4 0 6 0;#P connect 1 0 4 0;#P connect 4 0 5 0;#P fasten 4 0 8 0 78 113 170 113;#P connect 0 0 7 0;#P pop;#P newobj 290 361 97 196617 p sprite-generation;#P window linecount 3;#P comment 177 169 85 196617 2. Generate Random particle sprite;#P window linecount 1;#P comment 689 205 110 196617 smooth velocity shifts;#P window linecount 7;#P comment 635 309 57 196617 gravity--lower values draw particles back to origin;#P window setfont "Sans Serif" 24.;#P window linecount 1;#P comment 288 392 246 196632 Particle Rave-a-delic;#P fasten 5 0 10 0 34 86 47 86;#P connect 10 0 8 0;#P connect 21 0 11 0;#P fasten 8 1 11 0 65 269 47 269;#P fasten 8 3 11 0 101 273 47 273;#P fasten 14 0 15 0 90 401 48 401;#P fasten 15 0 16 0 59 419 59 404;#P connect 16 0 12 0;#P fasten 13 0 14 0 84 396 84 381;#P connect 18 0 10 1;#P connect 35 0 27 0;#P fasten 47 0 6 0 332 111 150 111;#P connect 27 0 6 0;#P connect 34 0 28 0;#P fasten 8 4 20 0 119 240 166 240;#P connect 28 0 20 0;#P fasten 20 0 4 0 166 271 295 271;#P connect 48 0 47 0;#P fasten 8 2 9 0 83 240 338 240;#P connect 9 0 22 0;#P connect 22 0 4 1;#P connect 17 0 4 2;#P fasten 29 0 22 1 516 273 392 273;#P fasten 22 0 43 0 338 328 456 328;#P connect 43 0 42 0;#P connect 37 0 38 0;#P connect 38 0 23 0;#P fasten 47 0 23 0 332 111 516 111;#P connect 23 0 24 0;#P connect 24 0 25 0;#P fasten 8 0 26 0 47 136 496 136 496 236 516 236;#P connect 25 0 26 0;#P fasten 40 0 29 0 658 243 516 243;#P connect 26 0 29 0;#P connect 39 0 38 1;#P connect 46 0 43 1;#P fasten 30 0 26 1 669 184 644 184;#P connect 41 0 40 0;#P connect 31 0 30 0;#P connect 32 0 30 1;#P connect 33 0 30 2;#P pop;