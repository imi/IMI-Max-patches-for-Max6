max v2;#N vpatcher 93 44 639 389;#P window setfont "Sans Serif" 9.;#P hidden newex 406 208 36 196617 s size;#P comment 432 164 82 196617 change # of text;#P user jit.fpsgui 46 200 60 196617 0;#P number 396 164 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden message 396 190 41 196617 dim \$1;#P hidden newex 152 54 94 196617 bgcolor 20 100 20;#P comment 169 198 125 196617 andrewb@cycling74.com;#P window setfont "Sans Serif" 24.;#P comment 135 164 157 196632 Tannenbaum;#P window setfont "Sans Serif" 9.;#P comment 318 42 116 196617 2. Choose your Greeting;#P user ubumenu 323 56 100 196617 0 1 1 0;#X add Happy Holidays;#X add Merry Xmas;#X add Merry Christmas;#X add Wassail;#X prefix_set 0 0 <none> 0;#P comment 390 122 47 196617 restart;#P newex 60 58 31 196617 dac~;#P newex 26 261 265 196617 jit.gl.handle xmas @inherit_transform 1 @auto_rotate 1;#N vpatcher 285 519 606 717;#P window setfont "Sans Serif" 9.;#P newex 50 144 236 196617 jit.gl.mesh xmas @color 1. 1. 1. 0.3 @draw_mode tri_strip @automatic 0 @blend_enable 1;#P inlet 37 89 15 0;#P inlet 50 32 15 0;#P connect 0 0 2 0;#P connect 1 0 2 0;#P pop;#P newobj 450 270 76 196617 p render_strip;#P message 390 136 33 196617 clear;#N vpatcher 737 409 1133 590;#P window setfont "Sans Serif" 9.;#P hidden newex 1 60 48 196617 loadbang;#P hidden message 1 83 43 196617 size 12;#P newex 190 71 84 196617 vexpr $f1*180.;#P message 190 95 83 196617 rotate \$5 \$6 \$7;#P message 97 71 90 196617 position \$1 \$2 \$3;#P newex 76 71 20 196617 t b;#P newex 76 39 41 196617 jit.iter;#P newex 50 144 361 196617 jit.gl.text2d xmas @automatic 0 @scale 1. 1. 1. @color 1. 0.1 0.1 1. @align 1;#P inlet 50 21 15 0;#P inlet 76 21 15 0;#P hidden connect 9 0 8 0;#P hidden connect 8 0 2 0;#P connect 1 0 2 0;#P fasten 6 0 2 0 195 137 55 137;#P fasten 5 0 2 0 102 105 55 105;#P fasten 4 0 2 0 81 96 55 96;#P connect 0 0 3 0;#P connect 3 0 4 0;#P fasten 3 0 5 0 81 64 102 64;#P fasten 3 0 7 0 81 64 195 64;#P connect 7 0 6 0;#P pop;#P newobj 305 270 73 196617 p render_text;#N vpatcher 485 420 777 696;#P inlet 23 19 15 0;#P window setfont "Sans Serif" 9.;#P message 168 105 65 196617 0.6 \, 0. 1000;#P newex 168 123 40 196617 line 0.;#P newex 50 196 64 196617 jit.op @op +;#P newex 168 47 56 196617 qlim 3000;#P newex 50 88 95 196617 jit.str.fromsymbol;#P outlet 50 218 15 0;#P fasten 6 0 1 0 28 86 55 86;#P connect 1 0 3 0;#P connect 3 0 0 0;#P fasten 4 0 3 1 173 173 109 173;#P fasten 6 0 2 0 28 43 173 43;#P connect 2 0 5 0;#P connect 5 0 4 0;#P pop;#P newobj 305 228 37 196617 p text;#N vpatcher 95 468 517 759;#P window setfont "Sans Serif" 9.;#P newex 283 28 36 196617 r size;#P newex 283 51 35 196617 * 1.5;#P newex 13 225 54 196617 rand~ 1.1;#P newex 12 185 54 196617 rand~ 1.1;#P newex 13 205 54 196617 rand~ 1.1;#P newex 68 224 101 196617 jit.poke~ season 1 6;#P newex 68 204 101 196617 jit.poke~ season 1 5;#P newex 68 184 101 196617 jit.poke~ season 1 4;#P newex 13 165 54 196617 rand~ 0.7;#P newex 69 164 101 196617 jit.poke~ season 1 3;#P newex 13 146 54 196617 rand~ 0.7;#P newex 12 106 54 196617 rand~ 0.8;#P newex 226 73 44 196617 *~ 400;#P newex 226 50 31 196617 abs~;#P newex 13 126 54 196617 rand~ 0.9;#P newex 226 28 54 196617 rand~ 0.1;#P newex 68 145 101 196617 jit.poke~ season 1 2;#P newex 68 125 101 196617 jit.poke~ season 1 1;#P newex 68 105 101 196617 jit.poke~ season 1 0;#P connect 7 0 0 0;#P connect 4 0 1 0;#P connect 8 0 2 0;#P connect 15 0 11 0;#P connect 14 0 12 0;#P connect 16 0 13 0;#P connect 10 0 9 0;#P connect 6 0 0 1;#P connect 6 0 1 1;#P connect 6 0 2 1;#P connect 6 0 11 1;#P connect 6 0 12 1;#P connect 6 0 13 1;#P connect 6 0 9 1;#P connect 3 0 5 0;#P connect 5 0 6 0;#P connect 17 0 6 1;#P connect 18 0 17 0;#P pop;#P newobj 116 84 48 196617 p motion;#N vpatcher 289 411 640 674;#P inlet 12 29 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 32 212 85 196617 jit.matrix cheer;#P window linecount 2;#P newex 32 180 157 196617 jit.expr @expr "in[0]*(in[0].p[3]>-1.)*(in[0].p[3]<1.)";#P window linecount 1;#P newex 175 90 154 196617 jit.matrix season 7 float32 145;#P newex 175 112 147 196617 jit.map @map -1 1 -0.02 0.02;#P newex 11 155 64 196617 jit.op @op +;#P newex 12 130 149 196617 jit.matrix cheer 7 float32 145;#P outlet 11 177 15 0;#P connect 1 0 2 0;#P connect 2 0 0 0;#P connect 7 0 1 0;#P fasten 2 0 5 0 16 176 37 176;#P connect 5 0 6 0;#P fasten 3 0 2 1 180 150 70 150;#P fasten 7 0 4 0 17 66 180 66;#P connect 4 0 3 0;#P pop;#P newobj 368 228 68 196617 p generator1;#P newex 167 84 195 196617 jit.window xmas @fsaa 1 @size 600 600;#P toggle 6 26 15 0;#P newex 6 84 109 196617 t erase b b b b;#P newex 6 298 300 196617 jit.gl.render xmas @blend_enable 1 @erase_color 0.1 0.4 0.1 1.;#P newex 6 58 51 196617 qmetro 5;#P comment 24 26 100 196617 1. Turn it on.;#P connect 4 0 1 0;#P connect 1 0 3 0;#P fasten 3 1 2 0 35 117 11 117;#P connect 3 0 2 0;#P fasten 12 0 2 0 31 289 11 289;#P connect 2 0 22 0;#P fasten 4 0 13 0 11 51 65 51;#P fasten 3 2 8 0 59 155 310 155;#P fasten 15 1 8 0 373 217 310 217;#P connect 8 0 9 0;#P connect 10 0 6 0;#P fasten 3 3 6 0 83 134 373 134;#P hidden fasten 20 0 6 0 401 225 373 225;#P connect 6 0 9 1;#P hidden connect 21 0 20 0;#P hidden connect 21 0 24 0;#P fasten 3 4 11 0 107 115 455 115;#P fasten 6 0 11 1 373 254 521 254;#P pop;