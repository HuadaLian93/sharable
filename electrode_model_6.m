').run;

model.study('std1').feature('time').set('rtol', 0.001);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;

model.param.set('C', '100');

model.study('std1').feature('time').set('rtol', 0.005);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;

model.study('std1').feature('time').set('rtol', 0.001);

model.sol('sol1').feature('t1').set('eventtol', 0.01);
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 25);

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '5E-6');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-6');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '2E-6');
model.component('comp1').mesh('mesh1').run;

model.study('std1').feature('time').set('rtol', 0.002);

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '5E-6');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.study('std1').feature('time').set('rtol', '0.0002');
model.study('std1').feature('time').set('usertol', false);

model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-5');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.1);

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 2.0E-5);
model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').feature('size').set('hmax', 2.0E-5);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', 1.0E-5);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 5);
model.sol('sol1').runAll;

model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);
model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'const');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 2.0E-5);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.1);
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 250);

model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-4');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '5E-5');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);

model.study('std1').feature('time').set('usertol', true);
model.study('std1').feature('time').set('rtol', 0.005);

model.sol('sol1').runAll;

model.result('pg1').run;

model.study('std1').feature('time').set('rtol', '0.0005');

model.sol('sol1').runAll;

model.result('pg1').run;

model.study('std1').feature('time').set('rtol', '0.0001');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-5');
model.component('comp1').mesh('mesh1').run;

model.study('std1').feature('time').set('usertol', false);

model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').feature('size').set('hauto', 2);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.5);
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg2').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,300)');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg2').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.25);
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 1.0E-4);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.1);

model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.2);
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 25);
model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.25);
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [77], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [101], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [80], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [126], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [159], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [207], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [222], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [264], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [301], 0);
model.result('pg1').run;

model.component('comp1').mesh('mesh1').feature('size').set('hgrad', 1.01);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', 5.0E-5);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [300], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [241], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [100], 0);
model.result('pg1').run;

model.param.set('C', '10');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [301], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [210], 0);
model.result('pg1').run;
model.result('pg2').run;
model.result.move('pg2', 0);
model.result.create('pg3', 'PlotGroup1D');
model.result('pg3').run;
model.result.move('pg3', 1);

model.param.set('C', '100');

model.study('std1').feature('time').set('tlist', 'range(0,1,36)');

model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg2').run;
model.result('pg1').run;
model.result('pg3').run;
model.result.move('pg3', 2);
model.result('pg1').run;
model.result.move('pg1', 0);
model.result('pg3').run;
model.result('pg3').create('lngr1', 'LineGraph');
model.result('pg3').feature('lngr1').selection.all;
model.result('pg3').run;
model.result('pg3').feature('lngr1').set('expr', 'c');
model.result('pg3').run;

model.param.set('C', '10');

model.study('std1').feature('time').set('tlist', 'range(0,1,360)');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg3').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 3);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg3').run;

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 5);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 1);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hmax', 1.0E-4);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 2.0E-4);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh1').feature('size').set('hmax', 1.5E-4);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg3').run;

model.param.set('E', '100[GPa]');
model.param.set('Ds', '1e-16[m^2/s]');

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.param.set('E', '100[GPa]');

model.component('comp1').mesh('mesh1').feature('size').set('custom', false);
model.component('comp1').mesh('mesh1').feature('size').set('hauto', 5);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.5);
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevelinput', 'manual', 0);
model.result('pg2').setIndex('looplevel', [2], 0);
model.result('pg2').setIndex('looplevel', [2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361], 0);
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [60], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [87], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [156], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [221], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [360], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [361], 0);
model.result('pg1').setIndex('looplevel', [360], 0);
model.result('pg1').setIndex('looplevel', [359], 0);
model.result('pg1').setIndex('looplevel', [358], 0);
model.result('pg1').setIndex('looplevel', [357], 0);
model.result('pg1').setIndex('looplevel', [356], 0);
model.result('pg1').setIndex('looplevel', [355], 0);
model.result('pg1').setIndex('looplevel', [354], 0);
model.result('pg1').setIndex('looplevel', [353], 0);
model.result('pg1').setIndex('looplevel', [352 353], 0);
model.result('pg1').setIndex('looplevel', [351], 0);
model.result('pg1').setIndex('looplevel', [350], 0);
model.result('pg1').setIndex('looplevel', [349], 0);
model.result('pg1').setIndex('looplevel', [348], 0);
model.result('pg1').setIndex('looplevel', [347], 0);
model.result('pg1').setIndex('looplevel', [346], 0);
model.result('pg1').setIndex('looplevel', [345], 0);
model.result('pg1').setIndex('looplevel', [344], 0);
model.result('pg1').setIndex('looplevel', [343], 0);
model.result('pg1').setIndex('looplevel', [342], 0);
model.result('pg1').setIndex('looplevel', [341], 0);
model.result('pg1').setIndex('looplevel', [340], 0);
model.result('pg1').setIndex('looplevel', [339 340], 0);
model.result('pg1').setIndex('looplevel', [338 339], 0);
model.result('pg1').setIndex('looplevel', [337], 0);
model.result('pg1').setIndex('looplevel', [336], 0);
model.result('pg1').setIndex('looplevel', [335], 0);
model.result('pg1').setIndex('looplevel', [334], 0);
model.result('pg1').setIndex('looplevel', [333], 0);
model.result('pg1').setIndex('looplevel', [332], 0);
model.result('pg1').setIndex('looplevel', [331], 0);
model.result('pg1').setIndex('looplevel', [330], 0);
model.result('pg1').setIndex('looplevel', [329], 0);
model.result('pg1').setIndex('looplevel', [328], 0);
model.result('pg1').setIndex('looplevel', [327], 0);
model.result('pg1').setIndex('looplevel', [326], 0);
model.result('pg1').setIndex('looplevel', [325], 0);
model.result('pg1').setIndex('looplevel', [324], 0);
model.result('pg1').setIndex('looplevel', [323], 0);
model.result('pg1').setIndex('looplevel', [322], 0);
model.result('pg1').setIndex('looplevel', [321], 0);
model.result('pg1').setIndex('looplevel', [320], 0);
model.result('pg1').setIndex('looplevel', [319], 0);
model.result('pg1').setIndex('looplevel', [318], 0);
model.result('pg1').setIndex('looplevel', [317], 0);
model.result('pg1').setIndex('looplevel', [316], 0);
model.result('pg1').setIndex('looplevel', [315], 0);
model.result('pg1').setIndex('looplevel', [314], 0);
model.result('pg1').setIndex('looplevel', [313], 0);
model.result('pg1').setIndex('looplevel', [312], 0);
model.result('pg1').setIndex('looplevel', [311], 0);
model.result('pg1').setIndex('looplevel', [310 311], 0);
model.result('pg1').setIndex('looplevel', [309], 0);
model.result('pg1').setIndex('looplevel', [308], 0);
model.result('pg1').setIndex('looplevel', [307 308], 0);
model.result('pg1').setIndex('looplevel', [306 307], 0);
model.result('pg1').setIndex('looplevel', [305 306], 0);
model.result('pg1').setIndex('looplevel', [305], 0);
model.result('pg1').setIndex('looplevel', [306], 0);
model.result('pg1').setIndex('looplevel', [361], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg3').run;

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 3);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 4);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hauto', 5);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 2500);

model.component('comp1').mesh('mesh1').feature('size').set('hauto', 4);
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').feature('size').set('hauto', 3);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 4);
model.sol('sol1').feature('t1').feature('fc1').set('ntermconst', 'itertol');
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;

model.param.set('C', '100');

model.study('std1').feature('time').set('tlist', 'range(0,1,36)');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37], 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg3').run;

model.label('Single_particle.mph');

model.result('pg3').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [3], 0);
model.result('pg2').setIndex('looplevelinput', 'all', 0);
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;

model.label('Agglomerate.mph');

model.param.set('E_macro', 'E*epsl_s');
model.param.set('epsl_s', '0.7');
model.param.set('epsl_l', '1-epsl_s');
model.param.set('gamma_macro', 'gamma*epsl_s');

model.component.create('comp2', true);

model.component('comp2').geom.create('geom2', 1);

model.component('comp2').mesh.create('mesh2');

model.component('comp2').geom('geom2').lengthUnit([native2unicode(hex2dec({'00' 'b5'}), 'unicode') 'm']);

model.param.set('Rp_secondary', '5[um]');
model.param.set('Dl', '1e-10[m^2/s]');
model.param.set('t', '0.4');

model.component('comp2').physics.create('liion', 'LithiumIonBatteryMPH', 'geom2');

model.study('std1').feature('time').activate('liion', true);

model.component('comp2').geom('geom2').run;

model.component('comp2').physics.remove('liion');

model.component('comp2').geom('geom2').create('i1', 'Interval');
model.component('comp2').geom('geom2').feature('i1').set('p2', 'Rp_secondary');
model.component('comp2').geom('geom2').runPre('fin');

model.component.create('comp3', true);

model.component('comp3').geom.create('geom3', 2);

model.component('comp3').mesh.create('mesh3');

model.component('comp3').geom('geom3').create('r1', 'Rectangle');
model.component('comp3').geom('geom3').feature('r1').set('size', {'Rp_secondary' '1'});
model.component('comp3').geom('geom3').feature('r1').setIndex('size', 'rp_primary', 1);
model.component('comp3').geom('geom3').runPre('fin');
model.component('comp3').geom('geom3').run;

model.component('comp3').mesh('mesh3').create('dis1', 'Distribution');
model.component('comp3').mesh('mesh3').feature('dis1').selection.set([1]);
model.component('comp3').mesh('mesh3').feature('dis1').set('numelem', 10);
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').feature.remove('dis1');
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').create('size1', 'Size');
model.component('comp3').mesh('mesh3').feature('size1').selection.geom('geom3', 2);
model.component('comp3').mesh('mesh3').feature('size1').selection.all;
model.component('comp3').mesh('mesh3').run;
model.component('comp3').mesh('mesh3').feature.remove('size1');

model.component('comp3').physics.create('g3', 'GeneralFormPDE', {'u3'});

model.study('std1').feature('time').activate('g3', true);

model.component('comp3').physics.create('g4', 'GeneralFormPDE', {'u4'});

model.study('std1').feature('time').activate('g4', true);

model.component('comp3').physics('g3').field('dimensionless').component(1, 'u');
model.component('comp3').physics('g3').prop('Units').set('DependentVariableQuantity', 'displacement');
model.component('comp3').physics('g3').prop('Units').set('SourceTermQuantity', 'forcedensity');
model.component('comp3').physics('g3').feature('gfeq1').setIndex('Ga', {'0' '-u3y'}, 0);
model.component('comp3').physics('g3').feature('gfeq1').setIndex('Ga', {'0' 'T_RR'}, 0);
model.component('comp3').physics('g3').feature('gfeq1').setIndex('f', '-2*(T_RR-T_tt)/y', 0);
model.component('comp3').physics('g3').feature('gfeq1').setIndex('da', 0, 0);
model.component('comp3').physics('g4').prop('Units').set('DependentVariableQuantity', 'concentration');
model.component('comp3').physics('g4').prop('Units').set('SourceTermQuantity', 'reactionrate');
model.component('comp3').physics('g4').field('dimensionless').component(1, 'cs');
model.component('comp3').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-u4y'}, 0);
model.component('comp3').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-x^2*Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)'}, 0);
model.component('comp3').physics('g4').feature('gfeq1').setIndex('da', 'y^2', 0);
model.component('comp3').physics('g4').feature('init1').set('cs', 'cs_0_neg');
model.component('comp3').physics('g4').create('flux1', 'FluxBoundary', 1);
model.component('comp3').physics('g4').feature('flux1').setIndex('g', 'y^2*i_input/F_const', 0);
model.component('comp3').physics('g4').feature('flux1').selection.set([3]);
model.component('comp3').physics('g3').create('dir1', 'DirichletBoundary', 1);
model.component('comp3').physics('g3').feature('dir1').selection.set([2]);

model.component('comp3').variable.create('var2');
model.component('comp3').variable('var2').set('J_all', '(ux+1)*(1+u_x)^2');
model.component('comp3').variable('var2').set('J_c', '1+omega*c');
model.component('comp3').variable('var2').set('sigma_h', '(sigma_RR+2*sigma_tt)/2');
model.component('comp3').variable('var2').set('sigma_RR', 'T_RR*(1+ux)/J_all');
model.component('comp3').variable('var2').set('sigma_tt', 'T_tt*(1+u_x)/J_all');
model.component('comp3').variable('var2').set('T_h', '(T_RR+2*T_tt)/3');
model.component('comp3').variable('var2').set('T_h_x', '(T_RR_x+2*T_tt_x)/3');
model.component('comp3').variable('var2').set('T_RR', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux+1)^2+2*gamma*(u_x+1)^2-(1+gamma)*(J_c)^(2/3))*(ux+1)');
model.component('comp3').variable('var2').set('T_RR_x', '-1/3*omega*cx*T_RR/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(ux+1)^2*uxx+4*gamma*(u_x+1)*(ux/x-u/x^2)*(ux+1)+2*gamma*(u_x+1)^2*uxx-(1+gamma)*(J_c)^(-2/3)*uxx-2/3*(1+gamma)/(J_c)^(1/3)*omega*cx*(ux+1))');
model.component('comp3').variable('var2').set('T_tt', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(gamma*(ux+1)^2+(u_x+1)^2-(1+gamma)*(J_c)^(2/3))*(u_x+1)');
model.component('comp3').variable('var2').set('T_tt_x', '-1/3*omega*cx*T_tt/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uxx*(ux+1)*(u_x+1)+gamma*(ux+1)^2*(ux/x-u/x^2)+3*(u_x+1)^2*(ux/x-u/x^2)-(1+gamma)*(J_c)^(2/3)*(ux/x-u/x^2)-2/3*(1+gamma)/(J_c)^(1/3)*omega*cx*(u_x+1))');
model.component('comp3').variable('var2').set('u_x', 'u/x');
model.component('comp3').variable('var2').set('J_all', '(uy+1)*(1+u_y)^2');
model.component('comp3').variable('var2').set('sigma_RR', 'T_RR*(1+uy)/J_all');
model.component('comp3').variable('var2').set('J_c', '1+omega*cs');
model.component('comp3').variable('var2').set('sigma_tt', 'T_tt*(1+u_y)/J_all');
model.component('comp3').variable('var2').rename('u_x', 'u_y');
model.component('comp3').variable('var2').set('u_y', 'u/y');
model.component('comp3').variable('var2').set('T_h_x', '(T_RR_y+2*T_tt_y)/3');
model.component('comp3').variable('var2').rename('T_h_x', 'T_h_y');
model.component('comp3').variable('var2').rename('T_RR_x', 'T_RR_y');
model.component('comp3').variable('var2').rename('T_tt_x', 'T_tt_y');
model.component('comp3').variable('var2').set('T_RR', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*((1-gamma)*(uy+1)^2+2*gamma*(u_y+1)^2-(1+gamma)*(J_c)^(2/3))*(uy+1)');
model.component('comp3').variable('var2').set('T_RR_y', '-1/3*omega*csy*T_RR/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(uy+1)^2*uyy+4*gamma*(u_y+1)*(uy/y-u/y^2)*(uy+1)+2*gamma*(u_y+1)^2*uyy-(1+gamma)*(J_c)^(-2/3)*uyy-2/3*(1+gamma)/(J_c)^(1/3)*omega*csy*(uy+1))');
model.component('comp3').variable('var2').set('T_tt', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(gamma*(uy+1)^2+(u_y+1)^2-(1+gamma)*(J_c)^(2/3))*(u_y+1)');
model.component('comp3').variable('var2').set('T_tt_y', '-1/3*omega*csy*T_tt/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uyy*(uy+1)*(u_y+1)+gamma*(uy+1)^2*(uy/x-u/x^2)+3*(u_y+1)^2*(uy/x-u/x^2)-(1+gamma)*(J_c)^(2/3)*(uy/x-u/x^2)-2/3*(1+gamma)/(J_c)^(1/3)*omega*csy*(u_y+1))');

model.component('comp3').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-x^2*Ds*(csy-omega*c/J_c^(2/3)/R_const/T*T_h_x)'}, 0);
model.component('comp3').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-x^2*Ds*(csy-omega*cs/J_c^(2/3)/R_const/T*T_h_x)'}, 0);
model.component('comp3').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-x^2*Ds*(csy-omega*cs/J_c^(2/3)/R_const/T*T_h_y)'}, 0);

model.component.remove('comp1');

model.component('comp2').physics.create('g', 'GeneralFormPDE', {'u2'});

model.study('std1').feature('time').activate('g', true);

model.component('comp2').geom('geom2').run;

model.component('comp2').physics('g').field('dimensionless').component({'u2' 'u22'});
model.component('comp2').physics('g').field('dimensionless').component(1, 'cl');
model.component('comp2').physics('g').field('dimensionless').component(2, 'dphi');
model.component('comp2').physics('g').feature('gfeq1').setIndex('da', 0, 3);
model.component('comp2').physics('g').feature('gfeq1').setIndex('da', 'epsl_l*x^2', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('Ga', '-x^2*', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('Ga', '-x^2*De_eff', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('Ga', '-x^2*De_eff*clx', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('f', 'x^2', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('Ga', '-x^2*(Dl*epsl_l^1.5)*clx', 0);
model.component('comp2').physics('g').feature('gfeq1').setIndex('Ga', '(kl*Poro_sec^1.5*ks*epss_AM_P_c^1.5)/(ks*epss_AM_P_c^1.5+kl*Poro_sec^1.5)*(x^2*Dphix+2*x^2*R_const*T/F_const*(1-t)*clx/cl)', 1);
model.component('comp2').physics('g').feature('gfeq1').setIndex('f', 'a_v*j_react*x^2', 1);

model.param.set('a_v', 'epsl_s*3/rp_primary');
model.param.set('kl', '0.8[S/m]');
model.param.set('ks', '0.1[S/m]');

model.component('comp2').physics('g').feature('gfeq1').setIndex('Ga', '(kl*epsl_l^1.5*ks*epsl_s^1.5)/(ks*epsl_s^1.5+kl*epsl_l^1.5)*(x^2*Dphix+2*x^2*R_const*T/F_const*(1-t)*clx/cl)', 1);
model.component('comp2').physics('g').field('dimensionless').component(2, 'Dphi');

model.component('comp2').variable.create('var3');
model.component('comp2').variable('var3').set('j_react', 'i0*(exp(aa_pos*eta*F_const/R_const/T)*exp(-aa_pos*sigma_h*omega/R_const/T)-exp(-ac_pos*eta*F_const/R_const/T)*exp(ac_pos*sigma_h*omega/R_const/T))');
model.component('comp2').variable('var3').set('eta', '(Dphi[V]-mat1.elpot.Eeq_int1(cs_surf/cs_max_pos))');
model.component('comp2').variable('var3').set('i0', 'F_const*kr_pos*cs_max_pos*(1-cs_surf/cs_max_pos)^aa_pos*(cs_surf/cs_max_pos)^ac_pos*(cl[mol/m^3]/cl_ref)^aa_pos');
model.component('comp2').variable('var3').set('cs_surf', 'comp2.linext1(comp2.cs)[mol/m^3]');
model.component('comp2').variable('var3').set('cs_ave', 'comp2.linproj1(comp2.cs*y^2)/rp_primary^3*3[mol/m^3]');
model.component('comp2').variable('var3').set('sigma_h_c', '2/9*E_macro*omega_macro/gamma_macro*(cs_ave_macro-cs_ave)');
model.component('comp2').variable('var3').set('sigma_h_d', 'comp2.linext1(sigma_h_micro)');
model.component('comp2').variable('var3').set('sigma_h', 'sigma_h_c+sigma_h_d');
model.component('comp2').variable('var3').remove('sigma_h_c');
model.component('comp2').variable('var3').remove('sigma_h_d');
model.component('comp2').variable('var3').remove('sigma_h');
model.component('comp2').variable('var3').set('i0', 'F_const*kr_neg*cs_max_neg*(1-cs_surf/cs_max_neg)^aa_neg*(cs_surf/cs_max_neg)^ac_neg*(cl[mol/m^3]/cl_ref)^aa_neg');

model.param.set('kr_neg', '9e-10[m/s]');

model.component('comp2').tag('comp1');
model.component('comp3').tag('comp2');

model.component('comp1').physics.create('g2', 'GeneralFormPDE', {'u5'});

model.study('std1').feature('time').activate('g2', true);

model.component('comp1').physics('g').feature('init1').set('cl', 'cl0');

model.param.set('cl0', '1000[mol/m^3]');
model.param.set('cl_ref', '1000[mol/m^3]');
model.param.set('eta_0', '5[mV]');

model.component('comp1').physics('g').feature('init1').set('Dphi', 'eta_0');
model.component('comp1').physics('g').create('dir1', 'DirichletBoundary', 0);
model.component('comp1').physics('g').feature('dir1').selection.set([2]);
model.component('comp1').physics('g').feature('dir1').setIndex('r', 'cl0', 0);
model.component('comp1').physics('g').feature('dir1').setIndex('r', 'eta_0', 1);
model.component('comp1').physics('g2').field('dimensionless').component(1, 'uM');

model.component('comp1').variable('var3').selection.geom('geom2', 1);
model.component('comp1').variable('var3').selection.set([1]);
model.component('comp1').variable.create('var4');
model.component('comp1').variable('var4').selection.geom('geom2', 1);
model.component('comp1').variable('var4').selection.set([1]);
model.component('comp1').variable('var4').set('J_all', '(ux+1)*(1+u_x)^2');
model.component('comp1').variable('var4').set('J_c', '1+omega*c');
model.component('comp1').variable('var4').set('sigma_h', '(sigma_RR+2*sigma_tt)/2');
model.component('comp1').variable('var4').set('sigma_RR', 'T_RR*(1+ux)/J_all');
model.component('comp1').variable('var4').set('sigma_tt', 'T_tt*(1+u_x)/J_all');
model.component('comp1').variable('var4').set('T_h', '(T_RR+2*T_tt)/3');
model.component('comp1').variable('var4').set('T_h_x', '(T_RR_x+2*T_tt_x)/3');
model.component('comp1').variable('var4').set('T_RR', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux+1)^2+2*gamma*(u_x+1)^2-(1+gamma)*(J_c)^(2/3))*(ux+1)');
model.component('comp1').variable('var4').set('T_RR_x', '-1/3*omega*cx*T_RR/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(ux+1)^2*uxx+4*gamma*(u_x+1)*(ux/x-u/x^2)*(ux+1)+2*gamma*(u_x+1)^2*uxx-(1+gamma)*(J_c)^(-2/3)*uxx-2/3*(1+gamma)/(J_c)^(1/3)*omega*cx*(ux+1))');
model.component('comp1').variable('var4').set('T_tt', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(gamma*(ux+1)^2+(u_x+1)^2-(1+gamma)*(J_c)^(2/3))*(u_x+1)');
model.component('comp1').variable('var4').set('T_tt_x', '-1/3*omega*cx*T_tt/J_c+(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uxx*(ux+1)*(u_x+1)+gamma*(ux+1)^2*(ux/x-u/x^2)+3*(u_x+1)^2*(ux/x-u/x^2)-(1+gamma)*(J_c)^(2/3)*(ux/x-u/x^2)-2/3*(1+gamma)/(J_c)^(1/3)*omega*cx*(u_x+1))');
model.component('comp1').variable('var4').set('u_x', 'u/x');
model.component('comp1').variable('var4').set('J_c', '1+omega_macro*cs_ave');

model.param.set('omega_macro', 'omega*epsl_s');

model.component('comp1').variable('var4').set('sigma_h', '(sigma_RR_M+2*sigma_tt_M)/2');
model.component('comp1').variable('var4').rename('sigma_h', 'sigma_h_M');
model.component('comp1').variable('var4').rename('sigma_RR', 'sigma_RR_M');
model.component('comp1').variable('var4').rename('sigma_tt', 'sigma_tt_M');
model.component('comp1').variable('var4').set('sigma_RR_M', 'T_RR*(1+uMx)/J_all');
model.component('comp1').variable('var4').set('sigma_tt_M', 'T_tt*(1+uM_x)/J_all');
model.component('comp1').variable('var4').rename('u_x', 'uM_x');
model.component('comp1').variable('var4').set('uM_x', 'uM/x');
model.component('comp1').variable('var4').set('J_all', '(uMx+1)*(1+uM_x)^2');

model.component('comp1').physics('g2').prop('Units').set('DependentVariableQuantity', 'displacement');
model.component('comp1').physics('g2').prop('Units').set('SourceTermQuantity', 'forcedensity');

model.component('comp1').variable('var4').rename('J_all', 'J_all_m');
model.component('comp1').variable('var4').rename('J_all_m', 'J_all_M');
model.component('comp1').variable('var4').rename('J_c', 'J_c_M');
model.component('comp1').variable('var4').set('sigma_RR_M', 'T_RR*(1+uMx)/J_all_M');
model.component('comp1').variable('var4').set('sigma_tt_M', 'T_tt*(1+uM_x)/J_all_M');
model.component('comp1').variable('var4').set('T_h', '(T_RR_M+2*T_tt_M)/3');
model.component('comp1').variable('var4').set('T_h_x', '(T_RR_M_x+2*T_tt_M_x)/3');
model.component('comp1').variable('var4').set('T_RR', '(J_c_M)^(-1/3)*E_macro/(2*(1+gamma_macro)*(1-2*gamma_macro))*((1-gamma_macro)*(uMx+1)^2+2*gamma_macro*(uM_x+1)^2-(1+gamma_macro)*(J_c_M)^(2/3))*(uMx+1)');
model.component('comp1').variable('var4').set('cs_M_x', 'pd(cs_ave,x)');
model.component('comp1').variable('var4').set('T_RR_x', '-1/3*omega_macro*cs_M_x*T_RR_M/J_c_M+(J_c_M)^(-1/3)*E_macro/(2*(1+gamma_macro)*(1-2*gamma_macro))*(3*(1-gamma_macro)*(uMx+1)^2*uMxx+4*gamma_macro*(uM_x+1)*(uMx/x-uM/x^2)*(uMx+1)+2*gamma_macro*(uM_x+1)^2*uMxx-(1+gamma_macro)*(J_c_M)^(-2/3)*uMxx-2/3*(1+gamma_macro)/(J_c_M)^(1/3)*omega_macro*cs_M_x*(uMx+1))');
model.component('comp1').variable('var4').rename('T_RR', 'T_RR_M');
model.component('comp1').variable('var4').set('sigma_RR_M', 'T_RR_M*(1+uMx)/J_all_M');
model.component('comp1').variable('var4').set('sigma_tt_M', 'T_tt_M*(1+uM_x)/J_all_M');
model.component('comp1').variable('var4').rename('T_RR_x', 'T_RR_M_x');
model.component('comp1').variable('var4').rename('T_tt', 'T_tt_M');
model.component('comp1').variable('var4').set('T_tt_M', '(J_c_M)^(-1/3)*E_macro/(2*(1+gamma_macro)*(1-2*gamma_macro))*(gamma_macro*(uMx+1)^2+(uM_x+1)^2-(1+gamma_macro)*(J_c_M)^(2/3))*(uM_x+1)');
model.component('comp1').variable('var4').set('T_tt_x', '-1/3*omega_macro*cs_M_x*T_tt_M/J_c_M+(J_c_M)^(-1/3)*E_macro/(2*(1+gamma_macro)*(1-2*gamma_macro))*(2*gamma_macro*uMxx*(uMx+1)*(uM_x+1)+gamma_macro*(uMx+1)^2*(uMx/x-u/x^2)+3*(uM_x+1)^2*(uMx/x-u/x^2)-(1+gamma_macro)*(J_c_M)^(2/3)*(uMx/x-u/x^2)-2/3*(1+gamma_macro)/(J_c_M)^(1/3)*omE_macroga_macro*cs_M_x*(uM_x+1))');

model.param.remove('a_v');

model.label('Agglomerate.mph');

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', 'T_RR_M', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', '-2*(T_RR-T_tt)/x', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('da', 0, 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', '-2*(T_RR_M-T_tt_M)/x', 0);

model.component('comp2').cpl.create('linext1', 'LinearExtrusion');
model.component('comp2').cpl('linext1').selection.geom('geom3', 1);
model.component('comp2').cpl('linext1').selection.set([3]);
model.component('comp2').cpl('linext1').selection('srcvertex1').set([2]);
model.component('comp2').cpl('linext1').selection('srcvertex2').set([4]);
model.component('comp2').cpl('linext1').set('dstgeom', 'geom2');
model.component('comp2').cpl('linext1').selection('dstvertex1').set([1]);
model.component('comp2').cpl('linext1').selection('dstvertex2').set([2]);
model.component('comp2').cpl.create('linproj1', 'LinearProjection');
model.component('comp2').cpl('linproj1').selection.set([1]);
model.component('comp2').cpl('linproj1').selection('srcvertex1').set([2]);
model.component('comp2').cpl('linproj1').selection('srcvertex2').set([4]);
model.component('comp2').cpl('linproj1').selection('srcvertex3').set([1]);
model.component('comp2').cpl('linproj1').set('dstgeom', 'geom2');
model.component('comp2').cpl('linproj1').selection('dstvertex1').set([1]);
model.component('comp2').cpl('linproj1').selection('dstvertex2').set([2]);
model.component('comp1').cpl.create('linext2', 'LinearExtrusion');
model.component('comp1').cpl('linext2').selection.set([1]);
model.component('comp1').cpl('linext2').selection('srcvertex1').set([1]);
model.component('comp1').cpl('linext2').selection('srcvertex2').set([2]);
model.component('comp1').cpl('linext2').set('dstgeom', 'geom3');
model.component('comp1').cpl('linext2').selection('dstvertex1').set([2]);
model.component('comp1').cpl('linext2').selection('dstvertex2').set([4]);

model.component('comp1').variable('var3').set('cs_surf', 'comp2.linext1(comp2.cs)');
model.component('comp1').variable('var3').set('cs_ave', 'comp2.linproj1(comp2.cs*y^2)/rp_primary^3*3');

model.param.set('aa_neg', '0.5');
model.param.set('ac_neg', '1-aa_neg');

model.component('comp1').variable('var3').set('eta', '(Dphi[V]-mat1.elpot.Eeq_int1(cs_surf/cs_max_neg))');
model.component('comp1').variable('var3').set('j_react', 'i0*(exp(aa_neg*eta*F_const/R_const/T)*exp(-aa_neg*sigma_h*omega/R_const/T)-exp(-ac_neg*eta*F_const/R_const/T)*exp(ac_neg*sigma_h*omega/R_const/T))');
model.component('comp1').variable('var3').set('sigma_h_micro', 'comp2.linext1(comp2.sigma_h)');
model.component('comp1').variable('var3').set('j_react', 'i0*(exp(aa_neg*eta*F_const/R_const/T)*exp(-aa_neg*sigma_h_micro*omega/R_const/T)-exp(-ac_neg*eta*F_const/R_const/T)*exp(ac_neg*sigma_h_micro*omega/R_const/T))');

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').label('Silicon electrode, LixSi (Negative, Li-ion Battery)');
model.component('comp1').material('mat1').set('family', 'plastic');
model.component('comp1').material('mat1').propertyGroup('def').set('density', '1500');
model.component('comp1').material('mat1').propertyGroup('def').set('diffusion', '1e-12');
model.component('comp1').material('mat1').propertyGroup.create('ElectrodePotential', 'Equilibrium potential');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('Eeq', 'Eeq_int1(soc)');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('dEeqdT', '0');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('cEeqref', '278000');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('soc', 'c/cEeqref');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func.create('int1', 'Interpolation');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('sourcetype', 'user');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('source', 'table');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('funcname', 'Eeq_int1');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('table', {'0.000' '0.800';  ...
'0.004' '0.613';  ...
'0.031' '0.569';  ...
'0.066' '0.515';  ...
'0.095' '0.488';  ...
'0.124' '0.461';  ...
'0.156' '0.434';  ...
'0.194' '0.416';  ...
'0.220' '0.403';  ...
'0.255' '0.390';  ...
'0.281' '0.381';  ...
'0.311' '0.372';  ...
'0.343' '0.367';  ...
'0.375' '0.358';  ...
'0.401' '0.354';  ...
'0.430' '0.340';  ...
'0.468' '0.331';  ...
'0.491' '0.322';  ...
'0.520' '0.313';  ...
'0.546' '0.305';  ...
'0.576' '0.296';  ...
'0.596' '0.287';  ...
'0.625' '0.278';  ...
'0.651' '0.264';  ...
'0.675' '0.255';  ...
'0.701' '0.246';  ...
'0.727' '0.237';  ...
'0.759' '0.228';  ...
'0.788' '0.219';  ...
'0.826' '0.210';  ...
'0.849' '0.202';  ...
'0.873' '0.197';  ...
'0.896' '0.193';  ...
'0.913' '0.184';  ...
'0.934' '0.179';  ...
'0.957' '0.170';  ...
'0.983' '0.157';  ...
'0.992' '0.143';  ...
'1' '0.062'});
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('interp', 'piecewisecubic');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('extrap', 'const');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').addInput('concentration');
model.component('comp1').material('mat1').propertyGroup.create('OperationalSOC', 'Operational electrode state-of-charge');
model.component('comp1').material('mat1').propertyGroup('OperationalSOC').set('socmin', '0');
model.component('comp1').material('mat1').propertyGroup('OperationalSOC').set('socmax', '1');
model.component('comp1').material('mat1').set('family', 'plastic');

model.component('comp1').variable('var4').rename('T_tt_x', 'T_tt_M_x');
model.component('comp1').variable('var4').set('T_tt_M_x', '-1/3*omega_macro*cs_M_x*T_tt_M/J_c_M+(J_c_M)^(-1/3)*E_macro/(2*(1+gamma_macro)*(1-2*gamma_macro))*(2*gamma_macro*uMxx*(uMx+1)*(uM_x+1)+gamma_macro*(uMx+1)^2*(uMx/x-uM/x^2)+3*(uM_x+1)^2*(uMx/x-uM/x^2)-(1+gamma_macro)*(J_c_M)^(2/3)*(uMx/x-uM/x^2)-2/3*(1+gamma_macro)/(J_c_M)^(1/3)*omega_macro*cs_M_x*(uM_x+1))');

model.component('comp1').physics('g').feature('init1').set('Dphi', 'eta_0+mat1.elpot.Eeq_int1(cs_0_neg/cs_max_neg)');
model.component('comp1').physics('g2').create('dir1', 'DirichletBoundary', 0);
model.component('comp1').physics('g2').feature('dir1').selection.set([1]);

model.component('comp2').variable('var2').selection.geom('geom3', 2);
model.component('comp2').variable('var2').selection.all;
model.component('comp2').variable.create('var5');
model.component('comp2').variable('var5').selection.geom('geom3', 1);
model.component('comp2').variable('var5').selection.set([3]);
model.component('comp2').variable('var5').set('j_surf', 'comp1.linext2(comp1.j_react)/F_const');

model.component('comp2').physics('g4').feature('flux1').setIndex('g', 'mat1.elpot.Eeq_int1(cs_surf/cs_max_neg)', 0);
model.component('comp2').physics('g4').feature('flux1').setIndex('g', '-j_surf*y^2', 0);

model.component('comp2').mesh('mesh3').create('dis1', 'Distribution');
model.component('comp2').mesh('mesh3').feature('dis1').selection.set([1]);
model.component('comp2').mesh('mesh3').run;
model.component('comp2').mesh('mesh3').feature.remove('dis1');
model.component('comp2').mesh('mesh3').create('fq1', 'FreeQuad');
model.component('comp2').mesh('mesh3').feature.remove('fq1');
model.component('comp2').mesh('mesh3').create('map1', 'Map');
model.component('comp2').mesh('mesh3').feature('map1').selection.geom('geom3', 2);
model.component('comp2').mesh('mesh3').feature('map1').selection.set([1]);
model.component('comp2').mesh('mesh3').feature('map1').create('dis1', 'Distribution');
model.component('comp2').mesh('mesh3').feature('map1').feature('dis1').selection.set([1]);
model.component('comp2').mesh('mesh3').run;
model.component('comp2').mesh('mesh3').feature('map1').feature('dis1').set('numelem', 10);
model.component('comp2').mesh('mesh3').run;
model.component('comp1').mesh('mesh2').run;

model.component('comp1').physics.create('dode', 'DomainODE', {'u6'});

model.study('std1').feature('time').activate('dode', true);

model.param.rename('epsl_l', 'epsl_l_0');
model.param.rename('epsl_s', 'epsl_s_0');
model.param.set('E_macro', 'E*epsl_s_0');
model.param.set('epsl_l_0', '0.3');
model.param.set('gamma_macro', 'gamma*epsl_s');

model.component('comp1').variable('var4').set('gamma_macro', 'gamma*epsl_s');
model.component('comp1').variable('var4').set('omega_macro', 'omega*epsl_s');
model.component('comp1').variable('var4').set('E_macro', 'E*epsl_s');

model.param.remove('gamma_macro');
model.param.remove('omega_macro');
model.param.remove('E_macro');
model.param.set('epsl_s_0', '1-epsl_l_0');

model.component('comp1').variable('var4').set('epsl_l', '1-epsl_s');

model.component('comp1').physics('dode').field('dimensionless').component(1, 'epsl_s');
model.component('comp1').physics('dode').feature('init1').set('epsl_s', 'epsl_s_0');
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*)', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react)', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v)', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v)/F_const+', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v/F_const)', 0);

model.component('comp1').variable('var4').set('det_F_M', '(uMx+1)*(uM_x+1)^2');
model.component('comp1').variable('var4').set('det_F_M_dt', 'pd(det_F_M,t)');

model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v/F_const+det_F_M_dt)', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v/F_const+det_F_M_dt)*(1-epsl_)', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v/F_const+det_F_M_dt)*(1-epsl_l)', 0);

model.component('comp1').variable('var3').set('a_v', '3*epsl_l*(det_F_M)^(1/3)/(rp_primary+comp2.linext1(comp2.u))');
model.component('comp1').variable('var3').set('j_react_M', 'j_react');
model.component('comp1').variable('var3').set('rp_primary_1', 'rp_primary+comp2.linext1(comp2.u)');
model.component('comp1').variable('var3').set('a_v', '3*epsl_l*(det_F_M)^(1/3)/rp_primary_1');
model.component('comp1').variable('var3').set('j_react_M', 'j_react*rp_primary_1^2/(rp_primary)');
model.component('comp1').variable('var3').set('rp_primary_1_M', 'rp_primary_1/(det_F_M)^(1/3)');
model.component('comp1').variable('var3').set('a_v', '3*epsl_l/rp_primary_1_M');
model.component('comp1').variable('var3').set('j_react_M', 'j_react*rp_primary_1_M^2/(rp_primary^2)');

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'a_v*j_react_M*x^2', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-x^2*(Dl*epsl_l^1.5)*clx-cl', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-x^2*(Dl*epsl_l^1.5)*clx-cl*epsl_st', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-x^2*(Dl*epsl_l^1.5)*clx', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_cons-x^2*cl*epsl_st', 0);

model.param.set('C', '1');
model.param.set('Q_total', '4/3*pi*Rp_secondary^3*cs_max_neg*F_const*(soc_max_neg-soc_min_neg)');
model.param.set('i_input', 'I_input/(4*pi*Rp_secondary^2)');

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const-x^2*cl*epsl_st', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const+x^2*cl*epsl_st', 0);
model.component('comp1').physics('dode').field('dimensionless').component(1, 'epsl_l');
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const+x^2*cl*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const-x^2*cl*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*cl*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const-x^2*cl*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const-x^2*cl[mol/m^3]*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t)*j_react_M/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);

model.component('comp1').variable('var4').rename('epsl_l', 'epsl_s');
model.component('comp1').variable('var4').set('epsl_s', '1-epsl_l');

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t0)*j_react_M/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);

model.param.rename('t', 't0');

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t0)*j_react_M/F_const', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t0)*j_react_M/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(kl*epsl_l^1.5*ks*epsl_s^1.5)/(ks*epsl_s^1.5+kl*epsl_l^1.5)*(x^2*Dphix+2*x^2*R_const*T/F_const*(1-t0)*clx/cl)', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t0)*a_v*j_react_M/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(kl*epsl_l^1.5*ks*epsl_s^1.5)/(ks*epsl_s^1.5+kl*epsl_l^1.5)*(x^2*Dphix[V]+2*x^2*R_const*T/F_const*(1-t0)*clx/cl)', 1);

model.param.set('rp_primary', '0.04[um]');

model.component('comp2').geom('geom3').run;

model.component('comp2').mesh('mesh3').run;

model.component('comp2').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-y^2*Ds*(csy-omega*cs/J_c^(2/3)/R_const/T*T_h_y)'}, 0);

model.result('pg1').run;
model.result.create('pg4', 'PlotGroup2D');
model.result('pg4').run;
model.result('pg4').create('surf1', 'Surface');
model.result('pg4').feature('surf1').set('expr', 'cs');
model.result('pg4').run;
model.resul