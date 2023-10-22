9 130 131 132 133 134 135 136 137 138], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [138], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [143], 0);
model.result('pg27').run;
model.result.table('tbl1').clearTableData;
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [65], 0);
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [117], 0);
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [117 118 119 120], 0);
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [117 118 119 120 121 122 123], 0);
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144], 0);
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [143], 0);
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_h)*epsl_s');
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [146], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [144], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [139], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [136], 0);
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [125], 0);
model.result('pg27').run;

model.label('Agglomerate_0_5C.mph');

model.component('comp2').physics('g3').feature('cons1').active(false);
model.component('comp2').physics('g3').feature('cons2').active(true);
model.component('comp2').physics('g3').feature('cons2').setIndex('constraintType', 'unidirectionalVar', 0);

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg32').run;
model.result('pg37').run;
model.result('pg33').run;
model.result('pg31').run;
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [30], 0);
model.result('pg28').setIndex('looplevel', [3600], 0);
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [3601], 0);
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').setIndex('looplevelinput', 'all', 0);
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_h)');
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [3600], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'all', 0);
model.result('pg27').run;
model.result('pg26').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;

model.component('comp2').physics('g3').feature.move('cons2', 4);
model.component('comp2').physics('g3').feature.move('cons2', 5);
model.component('comp2').physics('g3').feature('cons1').setIndex('R', 'sigma_RR*comp1.linext2(comp1.epsl_s)-comp1.linext2(comp1.sigma_RR_M)', 0);
model.component('comp2').physics('g3').feature.copy('cons3', 'g3/cons1');
model.component('comp2').physics('g3').feature.move('cons3', 5);
model.component('comp2').physics('g3').feature('cons2').active(false);
model.component('comp2').physics('g3').feature('cons1').active(true);
model.component('comp2').physics('g3').feature('cons3').active(true);
model.component('comp2').physics('g3').feature('cons3').setIndex('R', 'sigma_tt*comp1.linext2(comp1.epsl_s)-comp1.linext2(comp1.sigma_RR_M)', 0);
model.component('comp2').physics('g3').feature('cons3').setIndex('R', 'sigma_tt*comp1.linext2(comp1.epsl_s)-comp1.linext2(comp1.sigma_tt_M)', 0);
model.component('comp2').physics('g3').feature('cons3').active(false);
model.component('comp2').physics('g3').feature('cons1').active(false);
model.component('comp2').physics('g3').feature('cons2').active(true);

model.component('comp1').variable('var3').set('T_h_all', 'T_h_micro+T_h_M');
model.component('comp1').variable('var3').set('j_react_micro', 'i0*(exp(aa_neg*eta*F_const/R_const/T)*exp(-aa_neg*T_h_all*omega/J_c_micro^(2/3)/R_const/T)-exp(-ac_neg*eta*F_const/R_const/T)*exp(ac_neg*T_h_all*omega/J_c_micro^(2/3)/R_const/T))');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'all', 0);
model.result('pg18').run;
model.result('pg34').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', 3601, 0);
model.result('pg2').run;
model.result('pg38').run;
model.result('pg37').run;
model.result('pg2').run;
model.result('pg38').run;

model.component('comp1').variable('var6').set('Poro_ave', 'intop1(epsl_l*x^2)/Rp_secondary^3*3');
model.component('comp1').variable('var6').rename('Poro_ave', 'epsl_l_ave');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg24').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg38').feature.remove('tblp1');
model.result('pg38').run;
model.result('pg38').create('glob1', 'Global');
model.result('pg38').feature('glob1').setIndex('expr', 'comp1.epsl_l_ave', 0);
model.result('pg38').run;
model.result('pg38').run;
model.result('pg38').set('data', 'dset1');
model.result('pg38').run;
model.result('pg2').run;
model.result('pg34').run;
model.result('pg30').run;
model.result('pg24').run;
model.result('pg19').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,36)');

model.param.set('C', '10');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg34').run;

model.param.set('C', '50');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg37').run;
model.result('pg34').run;
model.result('pg24').run;
model.result('pg38').run;
model.result('pg16').run;
model.result('pg22').run;
model.result('pg15').run;
model.result('pg8').run;
model.result('pg6').run;
model.result('pg6').setIndex('looplevelinput', 'all', 0);
model.result('pg6').run;
model.result('pg20').run;

model.param.set('C', '100');

model.result('pg34').run;
model.result('pg37').run;
model.result('pg38').run;
model.result('pg37').run;
model.result('pg31').run;
model.result('pg29').run;
model.result('pg24').run;
model.result('pg18').run;

model.label('Agglomerate_0_5C.mph');

model.result('pg18').run;
model.result('pg6').run;
model.result('pg25').run;
model.result('pg25').setIndex('looplevel', [33], 0);
model.result('pg25').run;
model.result('pg25').setIndex('looplevel', [34], 0);
model.result('pg25').run;
model.result('pg25').setIndex('looplevel', [35], 0);
model.result('pg25').run;
model.result('pg8').run;
model.result('pg35').run;
model.result('pg34').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 0);
model.result('pg37').setIndex('looplevel', [35], 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [31], 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [32], 0);
model.result('pg37').run;
model.result('pg37').run;
model.result('pg24').run;
model.result('pg38').run;
model.result('pg36').run;
model.result('pg33').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg8').run;
model.result('pg14').run;
model.result('pg22').run;
model.result('pg16').run;
model.result('pg23').run;
model.result('pg30').run;
model.result('pg30').set('data', 'dset1');
model.result('pg30').setIndex('looplevelinput', 'all', 0);
model.result('pg30').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'manual', 0);
model.result('pg27').setIndex('looplevel', [23], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1], 0);
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10], 0);
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg27').setIndex('looplevel', [1], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21], 0);
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22], 0);
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23], 0);
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35], 0);
model.result('pg27').run;
model.result('pg18').run;
model.result('pg30').run;

model.component('comp1').variable('var3').set('T_h_all', 'T_h_micro*epsl_s+T_h_M');

model.label('Agglomerate_0_5C.mph');

model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [35], 0);
model.result('pg37').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', '1');
model.result('pg2').feature('surf1').set('rangecolormin', 0.885271275512385);
model.result('pg2').feature('surf1').set('rangecolormax', 1.0000076102690627);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 0.885271275512385);
model.result('pg2').feature('surf1').set('rangedatamax', 1.0000076102690627);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [0.885271275512385 1.0000076102690627]);
model.result('pg2').set('allowtableupdate', true);
model.result('pg34').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg33').run;
model.result('pg31').run;
model.result('pg31').setIndex('looplevelinput', 'all', 0);
model.result('pg31').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [33], 0);
model.result('pg37').setIndex('looplevel', [34], 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [27], 0);
model.result('pg37').run;

model.component('comp2').physics('g3').feature.move('cons2', 5);
model.component('comp2').physics('g3').feature.move('cons2', 4);

model.label('Agglomerate_0_5C.mph');

model.result('pg8').run;

model.param.set('C', '10');

model.component('comp2').physics('g3').feature('cons2').active(false);
model.component('comp2').physics('g3').feature('cons1').active(true);
model.component('comp2').physics('g3').feature('cons1').setIndex('R', 'sigma_RR*comp1.linext2(comp1.epsl_s)-comp1.linext2(comp1.sigma_h_M)', 0);

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg15').run;
model.result('pg23').run;
model.result('pg8').run;

model.param.set('C', '0.5');

model.study('std1').feature('time').set('tlist', 'range(0,10,1290)');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'manual', 0);
model.result('pg8').setIndex('looplevel', [1], 0);
model.result('pg8').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123], 0);
model.result('pg8').run;
model.result('pg32').run;

model.component('comp2').physics('g3').feature('cons1').setIndex('weakConstraints', 0, 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('weakConstraints', 1, 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('constraintType', 'symmetricConstraint', 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('constraintType', 'unidirectionalVar', 0);
model.component('comp2').physics('g3').feature.move('cons1', 4);

model.result('pg15').run;
model.result('pg15').run;
model.result('pg15').run;
model.result('pg8').run;

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg34').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'all', 0);
model.result('pg37').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg7').run;
model.result('pg7').setIndex('looplevelinput', 'all', 0);
model.result('pg7').run;
model.result('pg7').run;
model.result('pg23').run;
model.result('pg16').run;
model.result('pg22').run;
model.result('pg22').run;
model.result('pg22').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'all', 0);
model.result('pg8').run;
model.result('pg6').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg26').run;
model.result('pg25').run;
model.result('pg24').run;
model.result('pg18').run;
model.result('pg30').run;
model.result('pg18').run;
model.result('pg23').run;
model.result('pg10').run;
model.result('pg10').setIndex('looplevelinput', 'all', 0);
model.result('pg10').run;
model.result('pg10').run;
model.result('pg10').run;
model.result('pg10').run;
model.result('pg10').run;
model.result('pg10').setIndex('looplevelinput', 'manual', 0);
model.result('pg10').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101], 0);
model.result('pg10').run;
model.result('pg10').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107], 0);
model.result('pg10').run;
model.result('pg7').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg33').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg24').run;
model.result('pg21').run;
model.result('pg16').run;
model.result('pg22').run;
model.result('pg15').run;
model.result('pg14').run;
model.result('pg8').run;
model.result('pg36').run;
model.result('pg36').run;
model.result('pg36').run;
model.result('pg35').run;
model.result('pg34').run;

model.label('Agglomerate_0_5C.mph');

model.result('pg34').run;
model.result('pg36').run;
model.result('pg33').run;
model.result('pg33').setIndex('looplevel', [130], 0);
model.result('pg33').setIndex('looplevel', [1], 0);
model.result('pg33').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130], 0);
model.result('pg33').run;
model.result('pg29').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [2], 0);
model.result('pg27').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130], 0);
model.result('pg27').run;
model.result('pg26').run;
model.result('pg6').run;
model.result('pg34').run;
model.result('pg38').run;
model.result('pg2').run;
model.result('pg34').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg36').run;
model.result('pg33').run;
model.result('pg31').run;
model.result('pg29').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg26').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'all', 0);
model.result('pg27').run;
model.result('pg28').run;
model.result('pg29').run;
model.result('pg29').setIndex('looplevelinput', 'all', 0);
model.result('pg29').run;
model.result('pg26').run;
model.result('pg7').run;
model.result('pg23').run;
model.result('pg21').run;
model.result('pg16').run;
model.result('pg22').run;
model.result('pg15').run;
model.result('pg14').run;
model.result('pg8').run;
model.result('pg14').run;
model.result('pg15').run;
model.result('pg22').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').setIndex('looplevelinput', 'manual', 0);
model.result('pg28').setIndex('looplevel', [95], 0);
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'manual', 0);
model.result('pg27').setIndex('looplevel', [95], 0);
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_RR)');
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;

model.component('comp2').physics('g3').feature('cons1').active(false);
model.component('comp2').physics('g3').create('cons4', 'Constraint', 1);
model.component('comp2').physics('g3').feature('cons4').selection.set([3]);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.det_F_M^(1/3)-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.det_F_M^(1/3)-1)', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.det_F_M^(1/3)-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M^(1/3))-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('weakConstraints', 1, 0);

model.sol('sol1').runAll;

model.result('pg17').run;

model.study('std1').feature('time').set('tlist', 'range(0,10,7200)');

model.result('pg17').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg24').run;
model.result('pg8').run;
model.result('pg37').run;
model.result('pg34').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg19').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg32').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg6').run;
model.result('pg32').run;
model.result('pg6').run;
model.result('pg32').run;
model.result('pg8').run;
model.result('pg14').run;
model.result('pg15').run;
model.result('pg22').run;
model.result('pg16').run;
model.result('pg21').run;
model.result('pg23').run;
model.result('pg7').run;
model.result('pg10').run;
model.result('pg10').setIndex('looplevel', [3], 0);
model.result('pg10').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665 666 667 668 669 670 671 672 673 674 675 676 677 678 679 680 681 682 683 684 685 686 687 688 689 690 691 692 693 694 695 696 697 698 699 700 701 702 703 704 705 706 707 708 709], 0);
model.result('pg10').run;
model.result('pg24').run;

model.param.set('C', '100');

model.sol('sol1').feature('t1').create('st1', 'StopCondition');
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);

model.component('comp1').probe.create('pdom1', 'DomainPoint');
model.component('comp1').probe('pdom1').feature('ppb1').set('unit', 'Rp_secondary');
model.component('comp1').probe('pdom1').feature('ppb1').set('expr', 'Dphi');
model.component('comp1').probe('pdom1').setIndex('coords1', 'Rp_secondary', 0);

model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1<0', 0);

model.study('std1').feature('time').set('tlist', 'range(0,1,36)');

model.component('comp1').probe('pdom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg14').run;
model.result('pg15').run;
model.result('pg23').run;
model.result('pg8').run;
model.result('pg37').run;
model.result('pg34').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg2').run;
model.result('pg38').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'all', 0);
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').setIndex('looplevelinput', 'all', 0);
model.result('pg28').run;
model.result('pg24').run;
model.result('pg30').run;
model.result('pg18').run;

model.component('comp2').physics('g3').feature.remove('cons1');
model.component('comp2').physics('g3').feature.remove('cons2');
model.component('comp2').physics('g3').feature.remove('cons3');
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M^(1/3)/epsl_s)-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2((det_F_M/epsl_s)^(1/3))-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2((det_F_M/epsl_s_1)^(1/3))-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalVar', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2((det_F_M/epsl_s_1)^(1/3)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M/epsl_s_1)^(1/3)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.param.set('C', '50');

model.component('comp1').probe('pdom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg20').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg32').run;
model.result('pg8').run;
model.result('pg22').run;
model.result('pg34').run;
model.result('pg38').run;
model.result('pg35').run;
model.result('pg37').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,34)');

model.param.set('C', '100');

model.component('comp1').probe('pdom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg6').run;
model.result('pg23').run;
model.result('pg25').run;
model.result('pg18').run;
model.result('pg19').run;
model.result('pg1').run;
model.result('pg27').run;
model.result('pg37').run;
model.result('pg33').run;
model.result('pg33').setIndex('looplevelinput', 'all', 0);
model.result('pg33').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', 33, 0);
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', '1');
model.result('pg2').feature('surf1').set('rangecolormin', 0.8917989623877957);
model.result('pg2').feature('surf1').set('rangecolormax', 0.921124343571956);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 0.8917989623877957);
model.result('pg2').feature('surf1').set('rangedatamax', 0.921124343571956);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [0.8917989623877957 0.921124343571956]);
model.result('pg2').set('allowtableupdate', true);
model.result('pg28').run;
model.result('pg27').run;
model.result('pg31').run;
model.result('pg33').run;

model.param.set('C', '10');

model.study('std1').feature('time').set('tlist', 'range(0,1,360)');

model.component('comp1').probe('pdom1').genResult('none');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg30').run;
model.result('pg25').run;
model.result('pg33').run;
model.result('pg37').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'manual', 0);
model.result('pg27').setIndex('looplevel', [1], 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [26], 0);
model.result('pg27').run;

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'symmetricConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('weakConstraints', 0, 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('weakConstraints', 1, 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M)^(1/3)/epsl_s_1-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M)^(1/3)/epsl_s_1)-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2((det_F_M)^(1/3)/epsl_s_1)-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M^(1/3)/epsl_s_1)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalVar', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'symmetricConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M^(1/3)/epsl_s)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalVar', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalVar', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'symmetricConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalVar', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'unidirectionalConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M)^(1/3)/epsl_s-1)*rp_primary', 0);
model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M)^(1/3)/comp1.linext2(epsl_s)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('constraintType', 'symmetricConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M)^(1/3)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.result('pg1').run;
model.result('pg20').run;
model.result('pg6').run;
model.result('pg7').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'all', 0);
model.result('pg27').run;

model.component('comp2').physics('g3').create('cons5', 'Constraint', 1);
model.component('comp2').physics('g3').feature('cons5').selection.set([3]);
model.component('comp2').physics('g3').feature('cons5').setIndex('R', 'T_RR', 0);
model.component('comp2').physics('g3').feature('cons4').active(false);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons5').setIndex('weakConstraints', 1, 0);

model.component('comp1').probe('pdom1').genResult('none');

model.component('comp2').physics('g3').feature('cons5').active(false);
model.component('comp2').physics('g3').feature('cons4').active(true);

model.component('comp1').probe('pdom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M*epsl_s_0/epsl_s)^(1/3)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg17').run;

model.component('comp2').physics('g3').feature('cons4').setIndex('R', 'u-(comp1.linext2(det_F_M*epsl_s/epsl_s_0)^(1/3)-1)*rp_primary', 0);

model.component('comp1').probe('pdom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg14').run;
model.result('pg8').run;
model.result('pg37').run;

model.param.set('C', '100');

model.component('comp1').probe('pdom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg37').run;
model.result('pg24').run;
model.result('pg34').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg24').run;
model.result('pg37').run;
model.result('pg33').run;
model.result('pg31').run;
model.result('pg29').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg29').run;
model.result('pg37').run;
model.result('pg30').run;
model.result('pg24').run;
model.result('pg30').run;
model.result('pg34').run;
model.result('pg24').run;
model.result('pg30').run;
model.result('pg18').run;
model.result('pg10').run;
model.result('pg10').setIndex('looplevelinput', 'all', 0);
model.result('pg10').run;
model.result('pg23').run;
model.result('pg14').run;
model.result('pg8').run;
model.result('pg37').run;
model.result('pg36').run;
model.result('pg7').run;

model.label('Agglomerate_0_5C.mph');

model.result('pg7').run;
model.result('pg14').run;
model.result('pg24').run;
model.result('pg16').run;

model.label('Agglomerate_0_5C.mph');

model.result('pg16').run;
model.result('pg22').run;
model.result('pg15').run;
model.result('pg14').run;
model.result('pg8').run;

model.param.set('C', '10');

model.study('std1').feature('time').set('tlist', 'range(0,1,3600)');

model.component('comp1').probe('pdom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg20').run;
model.result('pg8').run;
model.result('pg15').run;

model.label('Agglomerate_0_5C.mph');

model.component('comp1').variable('var3').set('j_react_macro', 'j_react_micro');
model.component('comp1').variable('var3').set('a_v_0', '3*epsl_s/rp_primary_1*det_F_M');

model.param.set('I_input', 'Q_total*C/3600[s]');

model.component('comp1').probe('pdom1').genResult('none');

model.study('std1').feature('time').set('tlist', 'range(0,1,360)');

model.component('comp1').probe.create('pdom2', 'DomainPoint');
model.component('comp1').probe.remove('pdom2');
model.component('comp1').probe.create('dom1', 'Domain');
model.component('comp1').probe('dom1').set('expr', 'cs_ave');
model.component('comp1').probe('dom1').set('descr', '');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.numerical.remove('pev2');

model.component('comp1').probe('dom1').set('expr', 'cs_ave/cs_max_neg');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg21').run;
model.result('pg24').run;
model.result('pg8').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg26').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', 361, 0);
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', '1');
model.result('pg2').feature('surf1').set('rangecolormin', 0.25293622000852883);
model.result('pg2').feature('surf1').set('rangecolormax', 0.2538778631113049);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 0.25293622000852883);
model.result('pg2').feature('surf1').set('rangedatamax', 0.2538778631113049);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [0.25293622000852883 0.2538778631113049]);
model.result('pg2').set('allowtableupdate', true);
model.result('pg24').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg29').run;
model.result('pg24').run;

model.component('comp1').variable('var3').set('a_v_0', '3*epsl_s*rp_primary^2/rp_primary_1^3*det_F_M');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg20').run;
model.result('pg8').run;
model.result('pg22').run;
model.result('pg34').run;
model.result('pg24').run;

model.component('comp1').physics('g').create('cons1', 'Constraint', 0);
model.component('comp1').physics('g').feature('cons1').selection.set([2]);
model.component('comp1').physics('g').feature.remove('cons1');

model.component('comp1').variable('var3').set('a_v_0', '3*epsl_s/rp_primary');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;

model.component('comp1').variable('var3').set('a_v_0', '3*epsl_s*rp_primary^2/rp_primary_1^3*det_F_M');

model.param.set('I_input', 'Q_total*C/3600[s]*3.3');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg8').run;
model.result('pg17').run;

model.component('comp1').mesh('mesh2').feature('size').set('hauto', 1);
model.component('comp1').mesh('mesh2').run;

model.param.set('C', '100');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg7').run;
model.result('pg18').run;
model.result('pg37').run;
model.result('pg34').run;
model.result('pg24').run;
model.result('pg18').run;
model.result('pg10').run;
model.result('pg7').run;
model.result('pg23').run;
model.result('pg21').run;
model.result('pg16').run;
model.result('pg22').run;
model.result('pg14').run;
model.result('pg15').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg6').run;
model.result('pg1').run;
model.result('pg20').run;
model.result('pg19').run;
model.result('pg17').run;

model.label('Agglomerate_1.mph');

model.result('pg17').run;

model.component('comp1').physics('g').field('dimensionless').component({'cl' 'Dphi' 'u23'});
model.component('comp1').physics('g').field('dimensionless').component(2, 'phil');
model.component('comp1').physics('g').field('dimensionless').component(3, 'phis');

model.label('Electrode_model.mph');

model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-(Dl_eff)*clx', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(kl_eff*ks_eff)/(ks_eff+kl_eff)*(x^2*philx[V]+2*x^2*R_const*T/F_const*(1-t0)*clx/cl)', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(kl_eff*ks_eff)/(ks_eff+kl_eff)*(philx[V]+2*x^2*R_const*T/F_const*(1-t0)*clx/cl)', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(kl_eff*ks_eff)/(ks_eff+kl_eff)*(philx[V]+2*R_const*T/F_const*(1-t0)*clx/cl)', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', 'kl_eff*(-philx[V]+2*R_const*T/F_const*(1-t0)*clx/cl)', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'a_v*(1-t0)*j_react_macro/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'a_v*j_react_macro', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-ks_eff*phisx[V]', 2);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', '-a_v*j_react_macro', 2);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'a_v*(1-t0)*j_react_macro/F_const-cl*1[mol/m^3]*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('da', 'epsl_l_1', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('da', 0, 8);
model.component('comp1').physics('g').feature('dir1').setIndex('useDirichletCondition', 1, 1);
model.component('comp1').physics('g').feature('dir1').setIndex('r', 0, 1);
model.component('comp1').physics('g').feature('dir1').setIndex('r', 'eta_0+mat1.elpot.Eeq_int1(cs_surf/cs_max_neg)', 2);
model.component('comp1').physics('g').feature('flux1').setIndex('g', 'i_input', 1);
model.component('comp1').physics('g').feature('init1').set('phis', 'eta_0+mat1.elpot.Eeq_int1(cs_surf/cs_max_neg)');
model.component('comp1').physics('g').create('flux2', 'FluxBoundary', 0);
model.component('comp1').physics('g').feature('flux2').setIndex('g', 'i_input', 2);
model.component('comp1').physics('g').feature('flux2').selection.set([1]);
model.component('comp1').physics('g').feature('flux2').setIndex('g', '-i_input', 2);
model.component('comp1').physics('g').feature('dir1').setIndex('useDirichletCondition', 0, 2);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', 0, 0);

model.component('comp1').variable('var3').set('eta', '(phis[V]-phil[V]-mat1.elpot.Eeq_int1(cs_surf/cs_max_neg))');

model.label('Electrode_model.mph');

model.component('comp1').geom('geom2').feature('i1').set('p2', 'L');

model.param.rename('Rp_secondary', 'L');
model.param.set('L', '75[um]');

model.component('comp1').geom('geom2').runPre('fin');

model.param.set('Q_total', 'cs_max_neg*F_const*(soc_max_neg-soc_min_neg)*epsl_s_0');

model.component('comp1').geom('geom2').run;

model.param.set('i_input', 'I_input/(1[m^2])');
model.param.set('Q_total', 'cs_max_neg*F_const*(soc_max_neg-soc_min_neg)*epsl_s_0*L');
model.param.set('i_input', 'I_input');

model.component('comp1').probe('pdom1').setIndex('coords1', 'L', 0);

model.component('comp1').variable('var6').set('SOC_ave', 'intop1(cs_ave)/L/cs_max_neg');
model.component('comp1').variable('var6').set('epsl_l_ave', 'intop1(epsl_l)/L');
model.component('comp1').variable('var4').set('det_F_M', '(uMx+1)');
model.component('comp1').variable('var4').set('det_F_M_dt', 'uMxt');
model.component('comp1').variable('var4').set('J_all_M', '(uMx+1)');
model.component('comp1').variable('var4').set('sigma_RR_M', 'T_RR_M*(1+uMx)');
model.component('comp1').variable('var4').set('sigma_tt_M', 'T_tt_M*(1+uM_x)');
model.component('comp1').variable('var4').remove('uM_x');
model.component('comp1').variable('var4').rename('T_RR_M', 'T_xx_M');
model.component('comp1').variable('var4').rename('sigma_RR_M', 'sigma_xx_M');
model.component('comp1').variable('var4').rename('T_tt_M', 'T_yy_M');
model.component('comp1').variable('var4').set('sigma_h_M', '(sigma_xx_M+2*sigma_yy_M)/2');
model.component('comp1').variable('var4').set('sigma_xx_M', 'T_xx_M*(1+uMx)');
model.component('comp1').variable('var4').set('sigma_tt_M', 'T_yy_M');
model.component('comp1').variable('var4').set('T_h_M', '(T_xx_M+2*T_yy_M)/3');
model.component('comp1').variable('var4').set('T_xx_M', '(J_c_M)^(-1/3)*E_macro/(2*(1+gamma_macro)*(1-2*gamma_macro))*(1-gamma_macro)*((uMx+1)^2-(J_c_M)^(2/3))*(uMx+1)');
model.component('comp1').variable('var4').set('T_yy_M', 'E_macro/(2*(1+gamma_macro)*(1-2*gamma_macro))*gamma_macro*((uMx+1)^2-(J_c_M)^(2/3))');
model.component('comp1').variable('var4').rename('sigma_tt_M', 'sigma_yy_M');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp2').geom('geom3').run('');