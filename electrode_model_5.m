14], 0);
model.result('pg1').run;

model.label('Single_particle.mph');

model.result('pg2').run;
model.result('pg2').run;

model.param.set('rp_primary', '0.05[um]');

model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [1], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg2').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').setIndex('looplevel', [1], 0);
model.result('pg3').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg3').run;

model.label('Single_particle.mph');

model.result('pg3').run;

model.param.set('E', '15[GPa]');
model.param.set('rp_primary', '0.1[um]');
model.param.set('E', '100[GPa]');
model.param.set('rp_primary', '0.02[um]');
model.param.set('Ds', '1e-15[m^2/s]');
model.param.set('rp_primary', '0.1[um]');
model.param.set('Ds', '1e-16[m^2/s]');
model.param.set('C', '10');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24], 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24], 0);
model.result('pg2').run;
model.result('pg3').run;
model.result('pg3').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24], 0);
model.result('pg3').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-0.01*omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373], 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373], 0);
model.result('pg2').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);

model.param.set('E', '100[GPa]');

model.study('std1').feature('time').set('usertol', true);
model.study('std1').feature('time').set('rtol', '0.0001');

model.param.set('omega', '(3.8-1)/cs_max_neg*0.1');

model.study.remove('std1');
model.study.create('std1');
model.study('std1').create('time', 'Transient');
model.study('std1').feature('time').activate('g', true);
model.study('std1').feature('time').activate('g2', true);
model.study('std1').feature('time').set('tlist', 'range(0,1,100)');

model.sol.create('sol1');
model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,1,100)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.label('Single_particle.mph');

model.param.set('omega', '(3.8-1)/cs_max_neg');

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,1,100)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'auto');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('ntermauto', 'tol');
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 40);
model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'hnlin');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 400);

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.study('std1').feature('time').set('usertol', true);
model.study('std1').feature('time').set('rtol', 0.001);

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol1').feature('t1').set('stabcntrl', true);

model.study('std1').feature('time').set('usertol', true);
model.study('std1').feature('time').set('rtol', 0.005);

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 4000);
model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'hnlin');
model.sol('sol1').feature('t1').feature('fc1').set('minsteph', 1.0E-10);

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 25);

model.component('comp1').mesh('mesh1').feature('size').set('table', 'cfd');
model.component('comp1').mesh('mesh1').run;

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('minsteph', 1.0E-8);
model.sol('sol1').feature('t1').feature('fc1').set('initsteph', 1.0E-8);

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'const');
model.sol('sol1').feature('t1').feature('fc1').set('jtech', 'onevery');
model.sol('sol1').feature('t1').feature('fc1').set('stabacc', 'none');
model.sol('sol1').feature('t1').set('eventtol', 0.001);

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.study('std1').feature('time').set('tlist', 'range(0,0.1,100)');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').run;
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').selection.set([1]);
model.result('pg1').run;

model.component('comp1').mesh('mesh1').create('ref1', 'Refine');
model.component('comp1').mesh('mesh1').feature('ref1').selection.geom('geom1', 1);
model.component('comp1').mesh('mesh1').feature.remove('ref1');
model.component('comp1').mesh('mesh1').create('dis1', 'Distribution');
model.component('comp1').mesh('mesh1').feature.remove('dis1');
model.component('comp1').mesh('mesh1').feature('size').set('hgrad', 1.01);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('table', 'default');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').create('dis1', 'Distribution');
model.component('comp1').mesh('mesh1').feature('dis1').selection.set([1]);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature.remove('dis1');
model.component('comp1').mesh('mesh1').stat.setQualityMeasure('skewness');

model.result.dataset.create('mesh1', 'Mesh');
model.result.dataset('mesh1').set('mesh', 'mesh1');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'mesh1');
model.result('pg2').create('mesh1', 'Mesh');
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hgrad', 1);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('table', 'semi');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('table', 'default');
model.component('comp1').mesh('mesh1').feature('size').set('hauto', 5);
model.component('comp1').mesh('mesh1').run;

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 1);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '0.0001');
model.component('comp1').mesh('mesh1').run;

model.param.set('rp_primary', '1.5[um]');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [777], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [751], 0);
model.result('pg1').run;

model.param.set('rp_primary', '0.015[um]');

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);

model.label('Single_particle.mph');

model.param.set('C', '0.5');

model.component('comp1').variable('var1').set('sigma_RR', 'T_RR*(1+ux)');
model.component('comp1').variable('var1').set('J_all', '(ux+1)*(1+u_x)^2');
model.component('comp1').variable('var1').set('sigma_RR', 'T_RR*(1+ux)/J_all');
model.component('comp1').variable('var1').set('sigma_tt', 'T_tt*(1+u_x)/J_all');
model.component('comp1').variable('var1').set('sigma_h', '(sigma_RR+2*sigma_tt)/2');

model.label('Single_particle.mph');

model.result.create('pg3', 'PlotGroup1D');
model.result('pg3').run;
model.result('pg3').create('ptgr1', 'PointGraph');
model.result('pg3').feature('ptgr1').selection.set([1]);
model.result('pg3').feature('ptgr1').set('expr', 'T_h');
model.result('pg3').run;
model.result('pg3').run;

model.component('comp1').variable('var1').set('u_x', 'if(x>0,u/x,0)');

model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_h_x');
model.result('pg3').run;
model.result('pg2').run;
model.result.remove('pg2');
model.result('pg1').run;

model.component('comp1').variable('var1').set('u_x', 'if(x>0,u/x,ux)');

model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_h');
model.result('pg3').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h_x');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_tt');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR+2*T_tt');
model.result('pg1').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'pd(T_RR,x)');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg3').feature.copy('lngr1', 'pg1/lngr1');
model.result('pg1').feature.remove('lngr1');
model.result('pg3').run;
model.result('pg3').run;
model.result('pg1').feature.copy('lngr1', 'pg3/lngr1');
model.result('pg3').feature.remove('lngr1');
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').setIndex('looplevelinput', 'manual', 0);
model.result('pg3').setIndex('looplevel', [1], 0);
model.result('pg3').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20], 0);
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_h_x');
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_RR');
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_RR');
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'pd(T_RR,x)');
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'pd(T_tt,x)');
model.result('pg3').run;

model.component('comp1').physics('g').create('cons1', 'Constraint', 0);
model.component('comp1').physics('g').feature.remove('cons1');

model.component('comp1').variable('var1').set('u_x', 'if(x>0,u/x,ux)');

model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'cx-omega*c/J_c^(2/3)/R_const/T*T_h_x');
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;

model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'cx-omega*c/J_c^(2/3)/R_const/T*T_h_x', 0);
model.component('comp1').physics('g2').feature('cons1').active(true);

model.result('pg3').run;
model.result('pg3').setIndex('looplevel', [20 21 22 23 24 25 26], 0);
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'c');
model.result('pg3').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [25], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [11], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cx-omega*c/J_c^(2/3)/R_const/T*T_h_x');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [25], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;

model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);
model.component('comp1').physics.create('c', 'CoefficientFormPDE', {'u3'});

model.study('std1').feature('time').activate('c', true);

model.component('comp1').physics('g2').active(false);
model.component('comp1').physics('c').field('dimensionless').field('c');
model.component('comp1').physics('c').field('dimensionless').component(1, 'u3');
model.component('comp1').physics('c').field('dimensionless').component(1, 'u3');
model.component('comp1').physics('c').field('dimensionless').component(1, 'C');
model.component('comp1').physics('c').field('dimensionless').component({'C' 'c2'});
model.component('comp1').physics('c').field('dimensionless').component({'C'});
model.component('comp1').physics.remove('c');
model.component('comp1').physics('g2').active(true);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('da', 1, 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', 'Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', '2/x*Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('flux1').setIndex('g', 'i_input/F_const', 0);
model.component('comp1').physics('g2').feature('cons1').active(false);

model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').setIndex('looplevelinput', 'all', 0);
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'cx');
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'c');
model.result('pg3').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [19], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'omega*c/J_c^(2/3)/R_const/T*T_h_x');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [17], 0);
model.result('pg1').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', 'Ds*(2/x*cx-2/x*omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h_x');
model.result('pg1').run;
model.result('pg1').run;

model.param.set('rp_primary', '4[um]');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [86], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [153], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [225], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [599], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1001], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_h_x');
model.result('pg3').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h_x');
model.result('pg1').run;

model.component('comp1').variable('var1').set('u_x', 'u/x');
model.component('comp1').variable('var1').set('T_RR_x', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(ux+1)^2*uxx+4*gamma*(u_x+1)*(ux/x-u/x^2)*(ux+1)+2*gamma*(u_x+1)^2*uxx-(1+gamma)*(J_c)^(-2/3)*uxx)');
model.component('comp1').variable('var1').set('T_tt_x', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uxx*(ux+1)*(u_x+1)+gamma*(ux+1)^2*(ux/x-u/x^2)+3*(u_x+1)^2*(ux/x-u/x^2)-(1+gamma)*(J_c)^(2/3)*(ux/x-u/x^2))');
model.component('comp1').variable('var1').set('T_h_x', '(T_RR_x+2*T_tt_x)/3');

model.sol('sol1').clearSolutionData;

model.study('std1').feature('time').set('tlist', 'range(0,1,100)');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 0.001);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', 0.005);
model.component('comp1').mesh('mesh1').run;

model.study('std1').feature('time').set('usertol', false);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [43], 0);
model.result('pg1').run;

model.param.set('rp_primary', '0.04[um]');
model.param.set('C', '1');

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;

model.component('comp1').variable('var1').set('T_RR_x', '1/6*omega*cx*E/(2*(1+gamma)*(1-2*gamma))+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(ux+1)^2*uxx+4*gamma*(u_x+1)*(ux/x-u/x^2)*(ux+1)+2*gamma*(u_x+1)^2*uxx-(1+gamma)*(J_c)^(-2/3)*uxx)');
model.component('comp1').variable('var1').set('T_tt_x', '-1/6*omega*cx*E/(2*(1+gamma)*(1-2*gamma))+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uxx*(ux+1)*(u_x+1)+gamma*(ux+1)^2*(ux/x-u/x^2)+3*(u_x+1)^2*(ux/x-u/x^2)-(1+gamma)*(J_c)^(2/3)*(ux/x-u/x^2))');
model.component('comp1').variable('var1').set('T_RR_x', '-1/3*omega*cx*T_RR/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(ux+1)^2*uxx+4*gamma*(u_x+1)*(ux/x-u/x^2)*(ux+1)+2*gamma*(u_x+1)^2*uxx-(1+gamma)*(J_c)^(-2/3)*uxx)');
model.component('comp1').variable('var1').set('T_tt_x', '-1/3*omega*cx*T_tt/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uxx*(ux+1)*(u_x+1)+gamma*(ux+1)^2*(ux/x-u/x^2)+3*(u_x+1)^2*(ux/x-u/x^2)-(1+gamma)*(J_c)^(2/3)*(ux/x-u/x^2))');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [6], 0);
model.result.remove('pg3');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg1').run;
model.result('pg1').run;

model.study('std1').feature('time').set('usertol', true);

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [6], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [6], 0);
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'auto');

model.study('std1').feature('time').set('rtol', 0.001);

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 250);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [6], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', 0, 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('da', 'x^2', 0);
model.component('comp1').physics('g2').feature('flux1').setIndex('g', 'x^2*i_input/F_const', 0);

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'const');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h_x');
model.result('pg1').run;

model.param.set('rp_primary', '0.02[um]');

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2 3 4 5 6 7], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cx');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [7 8], 0);
model.result('pg1').run;

model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('table', 'cfd');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hgrad', 1.01);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hgrad', 1.001);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1.34/2E-4');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1.34E-4/2');
model.component('comp1').mesh('mesh1').run;

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h');
model.result('pg1').run;
model.result('pg1').run;

model.param.set('C', '0.1');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [99], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [62 63 64 65 66 67 68 69 70 71 72 73 74], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [73], 0);
model.result('pg1').setIndex('looplevel', [65], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65], 0);
model.result('pg1').run;

model.study('std1').feature('time').set('rtol', '0.0005');

model.result('pg1').run;

model.study('std1').feature('time').set('usertol', false);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [100], 0);
model.result('pg1').setIndex('looplevel', [99], 0);
model.result('pg1').setIndex('looplevel', [98], 0);
model.result('pg1').setIndex('looplevel', [97], 0);
model.result('pg1').setIndex('looplevel', [96], 0);
model.result('pg1').setIndex('looplevel', [95], 0);
model.result('pg1').setIndex('looplevel', [94], 0);
model.result('pg1').setIndex('looplevel', [93], 0);
model.result('pg1').setIndex('looplevel', [92], 0);
model.result('pg1').setIndex('looplevel', [91], 0);
model.result('pg1').setIndex('looplevel', [90], 0);
model.result('pg1').setIndex('looplevel', [89], 0);
model.result('pg1').setIndex('looplevel', [88], 0);
model.result('pg1').setIndex('looplevel', [87], 0);
model.result('pg1').setIndex('looplevel', [86], 0);
model.result('pg1').setIndex('looplevel', [85], 0);
model.result('pg1').setIndex('looplevel', [84], 0);
model.result('pg1').setIndex('looplevel', [83], 0);
model.result('pg1').setIndex('looplevel', [82], 0);
model.result('pg1').setIndex('looplevel', [81], 0);
model.result('pg1').setIndex('looplevel', [80], 0);
model.result('pg1').setIndex('looplevel', [79], 0);
model.result('pg1').setIndex('looplevel', [78], 0);
model.result('pg1').setIndex('looplevel', [77], 0);
model.result('pg1').setIndex('looplevel', [76], 0);
model.result('pg1').setIndex('looplevel', [75 76], 0);
model.result('pg1').setIndex('looplevel', [74 75], 0);
model.result('pg1').setIndex('looplevel', [73 74], 0);
model.result('pg1').setIndex('looplevel', [72 73], 0);
model.result('pg1').setIndex('looplevel', [71 72], 0);
model.result('pg1').setIndex('looplevel', [70 71], 0);
model.result('pg1').setIndex('looplevel', [69 70], 0);
model.result('pg1').setIndex('looplevel', [68 69], 0);
model.result('pg1').setIndex('looplevel', [67 68], 0);
model.result('pg1').setIndex('looplevel', [66], 0);
model.result('pg1').setIndex('looplevel', [65], 0);
model.result('pg1').setIndex('looplevel', [64], 0);
model.result('pg1').setIndex('looplevel', [63], 0);
model.result('pg1').setIndex('looplevel', [62], 0);
model.result('pg1').setIndex('looplevel', [61], 0);
model.result('pg1').setIndex('looplevel', [60], 0);
model.result('pg1').setIndex('looplevel', [59], 0);
model.result('pg1').setIndex('looplevel', [58], 0);
model.result('pg1').setIndex('looplevel', [57], 0);
model.result('pg1').setIndex('looplevel', [56 57], 0);
model.result('pg1').setIndex('looplevel', [55 56 57], 0);
model.result('pg1').setIndex('looplevel', [54 56 57], 0);
model.result('pg1').setIndex('looplevel', [53 56 57], 0);
model.result('pg1').setIndex('looplevel', [52 56 57], 0);
model.result('pg1').setIndex('looplevel', [51 56 57], 0);
model.result('pg1').setIndex('looplevel', [50 56 57], 0);
model.result('pg1').setIndex('looplevel', [49 56 57], 0);
model.result('pg1').setIndex('looplevel', [48 56 57], 0);
model.result('pg1').setIndex('looplevel', [47 56 57], 0);
model.result('pg1').setIndex('looplevel', [46 56 57], 0);
model.result('pg1').setIndex('looplevel', [45 56 57], 0);
model.result('pg1').setIndex('looplevel', [46], 0);
model.result('pg1').setIndex('looplevel', [100], 0);
model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'hnlin');
model.sol('sol1').feature('t1').feature('fc1').set('initsteph', 1.0E-4);

model.study('std1').feature('time').set('usertol', true);

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1.34E-4/10');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1.34E-4/20');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').feature('size').set('table', 'semi');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'const');
model.sol('sol1').feature('t1').feature('fc1').set('ratelimitactive', true);
model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.1);

model.study('std1').feature('time').set('usertol', false);

model.sol('sol1').feature('t1').set('eventtol', 0.01);

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [64], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [65], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [64], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_tt');
model.result('pg1').run;

model.param.set('Ds', '1e-15[m^2/s]');
model.param.set('E', '50[GPa]');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [101], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101], 0);
model.result('pg1').run;

model.param.set('C', '1');

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [14], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [14 15], 0);
model.result('pg1').setIndex('looplevel', [15], 0);
model.result('pg1').run;

model.sol('sol1').feature('t1').set('eventtol', 0.001);
model.sol('sol1').feature('t1').set('stabcntrl', false);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [14], 0);
model.result('pg1').run;

model.component('comp1').variable('var1').set('T_RR_x', '-1/3*omega*cx*T_RR/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(ux+1)^2*uxx+4*gamma*(u_x+1)*(ux/x-u/x^2)*(ux+1)+2*gamma*(u_x+1)^2*uxx-(1+gamma)*(J_c)^(-2/3)*uxx-2/3*(1+gamma)/(J_c)^(1/3)*omega*cx*(u_x+1))');
model.component('comp1').variable('var1').set('T_tt_x', '-1/3*omega*cx*T_tt/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uxx*(ux+1)*(u_x+1)+gamma*(ux+1)^2*(ux/x-u/x^2)+3*(u_x+1)^2*(ux/x-u/x^2)-(1+gamma)*(J_c)^(2/3)*(ux/x-u/x^2)-2/3*(1+gamma)/(J_c)^(1/3)*omega*cx*(u_x+1))');
model.component('comp1').variable('var1').set('T_RR_x', '-1/3*omega*cx*T_RR/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(ux+1)^2*uxx+4*gamma*(u_x+1)*(ux/x-u/x^2)*(ux+1)+2*gamma*(u_x+1)^2*uxx-(1+gamma)*(J_c)^(-2/3)*uxx-2/3*(1+gamma)/(J_c)^(1/3)*omega*cx*(ux+1))');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101], 0);
model.result('pg1').run;

model.label('Single_particle.mph');

model.result('pg1').run;

model.param.set('C', '10');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;

model.label('Single_particle.mph');

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').run;
model.result('pg2').create('ptgr1', 'PointGraph');
model.result('pg2').feature('ptgr1').selection.set([2]);
model.result('pg2').feature('ptgr1').set('expr', 'T_RR');
model.result('pg2').run;

model.component('comp1').physics('g').create('cons1', 'Constraint', 0);
model.component('comp1').physics('g').feature('cons1').selection.set([2]);
model.component('comp1').physics('g').feature('cons1').setIndex('R', 'T_RR', 0);

model.component('comp1').mesh('mesh1').feature('size').set('table', 'default');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ratelimitactive', false);
model.sol('sol1').feature('t1').feature('fc1').set('ntermconst', 'tol');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-4');
model.component('comp1').mesh('mesh1').run;

model.component('comp1').physics('g').feature('cons1').active(false);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [23], 0);
model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 1, 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').physics('g').feature('cons1').active(true);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 1, 0);

model.result('pg2').run;

model.sol('sol1').feature('t1').set('stabcntrl', true);

model.component('comp1').physics('g').feature('cons1').active(false);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '0.5E-4');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-5');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '2E-5');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.study('std1').feature('time').set('usertol', true);
model.study('std1').feature('time').set('rtol', 0.005);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.study('std1').feature('time').set('rtol', 0.001);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.study('std1').feature('time').set('rtol', '0.0001');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-5');
model.component('comp1').mesh('mesh1