dex('table', '6.42146029324720e-16/2', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/2', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.label('Electrode_model_with_paper.mph');

model.result('pg19').run;

model.func('int1').setIndex('table', '1.02571391147464e-15/2', 7, 1);
model.func('int1').setIndex('table', '6.42146029324720e-16/3', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/3', 9, 1);
model.func('int1').set('interp', 'piecewisecubic');
model.func('int1').setIndex('table', ['3.11938895891955e-15' native2unicode(hex2dec({'30' '01'}), 'unicode') '2'], 6, 1);
model.func('int1').setIndex('table', '3.11938895891955e-15/2', 6, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4 5], 2);
model.result('pg19').run;
model.result('pg29').run;
model.result('pg31').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [6], 2);
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [5], 2);
model.result('pg39').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [6], 2);
model.result('pg18').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 2);

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics('g2').feature('cons1').active(true);
model.component('comp1').physics('g2').feature('cons2').active(false);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg34').run;

model.label('Electrode_model_with_paper_deLi_constant_P.mph');

model.result('pg34').run;

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9 10 12 15 20', 0);

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp7').active(true);
model.result('pg19').feature('tblp8').active(true);
model.result('pg19').feature('tblp9').active(true);
model.result('pg19').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9 12 15 20', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6], 2);
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7], 2);
model.result('pg19').run;
model.result('pg19').set('data', 'dset9');
model.result('pg19').run;
model.result('pg17').run;
model.result('pg17').run;
model.result('pg17').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset9');
model.result('pg18').run;
model.result('pg17').run;
model.result('pg1').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '15 20', 0);

model.sol('sol4').feature('t1').feature('fc1').set('maxiter', 25);
model.sol('sol4').feature('t1').feature('fc1').set('ntolfact', 0.1);

model.component('comp1').mesh('mesh2').feature('size').set('custom', true);
model.component('comp1').mesh('mesh2').feature('size').set('hmax', 0.01);
model.component('comp1').mesh('mesh2').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 0);
model.result('pg18').setIndex('looplevel', [2], 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [9], 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [26], 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [60], 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [76], 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [74], 0);
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg36').run;
model.result('pg37').run;
model.result('pg37').run;
model.result('pg37').run;
model.result('pg18').run;

model.study('std2').feature('param').setIndex('plistarr', 20, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset11');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevelinput', 'manual', 2);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevelinput', 'first', 0);
model.result('pg39').setIndex('looplevelinput', 'last', 0);
model.result('pg39').setIndex('looplevelinput', 'all', 0);
model.result('pg39').run;
model.result('pg39').set('data', 'dset9');
model.result('pg39').setIndex('looplevelinput', 'manual', 0);
model.result('pg39').setIndex('looplevel', [1], 0);
model.result('pg39').setIndex('looplevel', [58], 0);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [56], 0);
model.result('pg39').run;
model.result('pg39').setIndex('looplevelinput', 'all', 0);
model.result('pg39').run;
model.result('pg18').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9 12 20', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevelinput', 'all', 2);
model.result('pg19').run;

model.label('Electrode_model_with_paper_deLi_constant_P.mph');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevelinput', 'manual', 2);
model.result('pg19').setIndex('looplevel', [2], 2);
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7 8], 2);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp8').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.02[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.015[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '3.11938895891955e-15/3', 6, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15/3', 7, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '1.02571391147464e-15/1', 7, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15/4', 7, 1);
model.func('int1').setIndex('table', '6.42146029324720e-16/4', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/4', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '3.11938895891955e-15/4', 6, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '4.46598588237730e-16/6', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/6', 8, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15/3', 7, 1);
model.func('int1').setIndex('table', '3.11938895891955e-15/3', 6, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '3.11938895891955e-15', 6, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15', 7, 1);
model.func('int1').setIndex('table', '6.42146029324720e-16', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/5', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/4', 8, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15/4', 7, 1);

model.result('pg2').run;
model.result('pg2').set('looplevel', [87 1 7]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [88 1 6]);
model.result('pg2').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.func('int1').setIndex('table', '3.11938895891955e-15/2', 6, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15/3', 7, 1);
model.func('int1').setIndex('table', '6.42146029324720e-16/3', 8, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.label('Electrode_model_with_paper_deLi_constant_P.mph');

model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/5', 8, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/4', 8, 1);
model.func('int1').setIndex('table', '3.11938895891955e-15', 6, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15', 7, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 1);
model.result('pg37').setIndex('looplevelinput', 'first', 1);
model.result('pg37').setIndex('looplevelinput', 'all', 1);
model.result('pg37').setIndex('looplevelinput', 'manual', 2);
model.result('pg37').setIndex('looplevel', [7], 2);
model.result('pg37').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg35').run;
model.result('pg35').set('data', 'dset11');
model.result('pg35').setIndex('looplevelinput', 'manual', 2);
model.result('pg35').setIndex('looplevel', [3], 2);
model.result('pg35').run;
model.result('pg35').setIndex('looplevel', [6], 2);
model.result('pg35').run;
model.result('pg35').setIndex('looplevel', [7], 2);
model.result('pg35').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;

model.func('int1').setIndex('table', ['1.02571391147464e-15' native2unicode(hex2dec({'30' '01'}), 'unicode') '2'], 7, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15/2', 7, 1);
model.func('int1').setIndex('table', '3.11938895891955e-15/2', 6, 1);

model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').setIndex('looplevel', [6], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [7], 2);
model.result('pg18').run;

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9 12 15', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.component('comp1').variable('var4').set('tau', '4.2/(epsl_l^1.1)');

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9 12 15 20', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7 8], 2);
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7 8 9], 2);
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7 8], 2);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp9').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp8').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg17').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [8], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [9], 2);
model.result('pg18').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7 8 9], 2);
model.result('pg19').run;

model.component('comp1').variable('var4').set('tau', '5/(epsl_l^1.1)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.component('comp1').variable('var4').set('tau', '6/(epsl_l^1.1)');

model.result('pg19').run;
model.result('pg30').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').setIndex('looplevel', [8], 2);
model.result('pg18').run;

model.component('comp1').variable('var4').set('tau', '5/(epsl_l^1.25)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg2').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset9');
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp9').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset11');
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [7], 2);
model.result('pg18').run;
model.result('pg18').set('data', 'dset9');
model.result('pg18').run;
model.result('pg19').run;

model.component('comp1').variable('var4').set('tau', '4.2/(epsl_l^1.25)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;

model.label('Electrode_model_with_paper_deLi_constant_P.mph');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp8').active(false);
model.result('pg19').feature('tblp9').active(false);
model.result('pg19').run;
model.result('pg19').feature('tblp8').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp9').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').setIndex('legends', '9C', 5);
model.result('pg19').feature('ptgr1').setIndex('legends', '12C', 6);
model.result('pg19').feature('ptgr1').setIndex('legends', '15C', 7);
model.result('pg19').feature('ptgr1').setIndex('legends', '20C', 8);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').setIndex('looplevel', [9], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [8], 2);
model.result('pg18').run;
model.result('pg19').run;

model.component('comp1').variable('var4').set('tau', '4.2/(epsl_l^1.45)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset9');
model.result('pg19').run;

model.label('Electrode_model_with_paper_deLi_constant_P.mph');

model.result('pg19').run;
model.result('pg19').set('data', 'dset11');
model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/4.5', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/5.5', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.label('Electrode_model_with_experiment_deLi_constant_P.mph');

model.result.table.remove('tbl6');
model.result.table.remove('tbl8');
model.result.table('tbl9').label('10C');
model.result.table('tbl10').label('14C');
model.result.table.remove('tbl11');
model.result.table.remove('tbl12');

model.param.set('L', '20[um]');

model.func('int1').setIndex('table', '3.11938895891955e-15', 6, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15', 7, 1);
model.func('int1').setIndex('table', '6.42146029324720e-16', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16', 9, 1);
model.func('int8').setIndex('table', 0.0627391329194658, 8, 1);
model.func('int8').setIndex('table', 0.031699850024753, 9, 1);
model.func('int8').setIndex('table', 0.01, 10, 1);

model.component('comp1').geom('geom2').run('fin');

model.result.table('tbl3').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 4_20um_0_5_poro\Cycle and rate performance\Test 1\1C_3.xlsx'], '', '');
model.result.table('tbl4').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 4_20um_0_5_poro\Cycle and rate performance\Test 1\2C_3.xlsx'], '', '');
model.result.table('tbl7').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 4_20um_0_5_poro\Cycle and rate performance\Test 1\5C_3.xlsx'], '', '');
model.result.table('tbl9').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 4_20um_0_5_poro\Cycle and rate performance\Test 1\10C_3.xlsx'], '', '');
model.result.table('tbl10').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 4_20um_0_5_poro\Cycle and rate performance\Test 1\14C_3.xlsx'], '', '');
model.result.create('pg58', 'PlotGroup1D');
model.result('pg58').set('data', 'none');
model.result('pg58').create('tblp1', 'Table');
model.result('pg58').feature('tblp1').set('source', 'table');
model.result('pg58').feature('tblp1').set('table', 'tbl3');
model.result('pg58').run;
model.result('pg56').run;
model.result('pg58').run;
model.result('pg58').run;
model.result('pg58').feature('tblp1').label('1C');
model.result.create('pg59', 'PlotGroup1D');
model.result('pg59').set('data', 'none');
model.result('pg59').create('tblp1', 'Table');
model.result('pg59').feature('tblp1').set('source', 'table');
model.result('pg59').feature('tblp1').set('table', 'tbl4');
model.result('pg59').run;
model.result.create('pg60', 'PlotGroup1D');
model.result('pg60').set('data', 'none');
model.result('pg60').create('tblp1', 'Table');
model.result('pg60').feature('tblp1').set('source', 'table');
model.result('pg60').feature('tblp1').set('table', 'tbl7');
model.result('pg60').run;
model.result.create('pg61', 'PlotGroup1D');
model.result('pg61').set('data', 'none');
model.result('pg61').create('tblp1', 'Table');
model.result('pg61').feature('tblp1').set('source', 'table');
model.result('pg61').feature('tblp1').set('table', 'tbl9');
model.result('pg61').run;
model.result.create('pg62', 'PlotGroup1D');
model.result('pg62').set('data', 'none');
model.result('pg62').create('tblp1', 'Table');
model.result('pg62').feature('tblp1').set('source', 'table');
model.result('pg62').feature('tblp1').set('table', 'tbl10');
model.result('pg62').run;
model.result('pg59').run;
model.result('pg59').feature('tblp1').label('2C');
model.result('pg60').run;
model.result('pg60').feature('tblp1').label('5C');
model.result('pg61').run;
model.result('pg61').feature('tblp1').label('10C');
model.result('pg62').run;
model.result('pg62').feature('tblp1').label('14C');
model.result('pg61').run;
model.result('pg58').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature.remove('tblp1');
model.result('pg19').feature.remove('tblp2');
model.result('pg19').feature.remove('tblp4');
model.result('pg19').feature.remove('tblp6');
model.result('pg19').feature.remove('tblp7');
model.result('pg19').run;
model.result('pg58').run;
model.result('pg19').feature.copy('tblp1', 'pg58/tblp1');
model.result('pg58').feature.remove('tblp1');
model.result('pg60').run;
model.result('pg59').run;
model.result('pg19').feature.copy('tblp2', 'pg59/tblp1');
model.result('pg59').feature.remove('tblp1');
model.result('pg60').run;
model.result('pg19').feature.copy('tblp3', 'pg60/tblp1');
model.result('pg60').feature.remove('tblp1');
model.result('pg61').run;
model.result('pg19').feature.copy('tblp4', 'pg61/tblp1');
model.result('pg61').feature.remove('tblp1');
model.result('pg62').run;
model.result('pg19').feature.copy('tblp5', 'pg62/tblp1');
model.result('pg62').feature.remove('tblp1');
model.result('pg58').run;
model.result.remove('pg58');
model.result.remove('pg59');
model.result.remove('pg60');
model.result.remove('pg61');
model.result.remove('pg62');
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('preprocx', 'linear');
model.result('pg19').feature('tblp1').set('scalingx', 0.6);
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/0.6');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('preprocx', 'linear');
model.result('pg19').feature('tblp2').set('scalingx', '1/0.6');
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('preprocx', 'linear');
model.result('pg19').feature('tblp3').set('scalingx', '1/0.6');
model.result('pg19').run;
model.result('pg19').feature('tblp4').set('preprocx', 'linear');
model.result('pg19').feature('tblp4').set('scalingx', '1/0.6');
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('preprocx', 'linear');
model.result('pg19').feature('tblp5').set('scalingx', '1/0.6');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '7/6 14/6 35/6 70/6 98/6', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg34').run;

model.sol('sol9').study('std3');

model.study('std3').feature('time').set('notlistsolnum', 1);
model.study('std3').feature('time').set('notsolnum', 'last');
model.study('std3').feature('time').set('listsolnum', 1);
model.study('std3').feature('time').set('solnum', 'last');

model.sol('sol9').feature.remove('t1');
model.sol('sol9').feature.remove('v1');
model.sol('sol9').feature.remove('st1');
model.sol('sol9').create('st1', 'StudyStep');
model.sol('sol9').feature('st1').set('study', 'std3');
model.sol('sol9').feature('st1').set('studystep', 'time');
model.sol('sol9').create('v1', 'Variables');
model.sol('sol9').feature('v1').set('control', 'time');
model.sol('sol9').create('t1', 'Time');
model.sol('sol9').feature('t1').set('tlist', 'range(0,10,100)');
model.sol('sol9').feature('t1').set('plot', 'off');
model.sol('sol9').feature('t1').set('plotgroup', 'pg34');
model.sol('sol9').feature('t1').set('plotfreq', 'tout');
model.sol('sol9').feature('t1').set('probesel', 'all');
model.sol('sol9').feature('t1').set('probes', {'pdom1' 'dom1'});
model.sol('sol9').feature('t1').set('probefreq', 'tsteps');
model.sol('sol9').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol9').feature('t1').set('endtimeinterpolation', true);
model.sol('sol9').feature('t1').set('control', 'time');
model.sol('sol9').feature('t1').create('seDef', 'Segregated');
model.sol('sol9').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol9').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol9').feature('t1').feature.remove('fcDef');
model.sol('sol9').feature('t1').feature.remove('seDef');
model.sol('sol4').feature('v1').set('notsolnum', 'auto');
model.sol('sol4').feature('v1').set('notsolvertype', 'solnum');
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', 6);
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', '6');
model.sol('sol4').feature('v1').set('control', 'time');
model.sol('sol4').feature('v1').set('solnum', 'auto');
model.sol('sol4').feature('v1').set('solvertype', 'solnum');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 6);
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', '6');
model.sol('sol4').feature('v1').set('control', 'time');

model.study('std2').feature('time').set('notsolnum', 'auto');
model.study('std2').feature('time').set('notsolvertype', 'solnum');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 6);
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', '6');
model.study('std2').feature('time').set('notsolnumhide', 'off');
model.study('std2').feature('time').set('notstudyhide', 'off');
model.study('std2').feature('time').set('notsolhide', 'on');
model.study('std2').feature('time').set('solnum', 'auto');
model.study('std2').feature('time').set('solvertype', 'solnum');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 6);
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', '6');
model.study('std2').feature('time').set('solnumhide', 'off');
model.study('std2').feature('time').set('initstudyhide', 'off');
model.study('std2').feature('time').set('initsolhide', 'on');

model.sol('sol9').attach('std3');

model.batch('p3').feature.remove('so1');
model.batch('p3').create('so1', 'Solutionseq');
model.batch('p3').feature('so1').set('seq', 'sol9');
model.batch('p3').feature('so1').set('store', 'on');
model.batch('p3').feature('so1').set('clear', 'on');
model.batch('p3').feature('so1').set('psol', 'sol10');
model.batch('p3').set('pname', {'C'});
model.batch('p3').set('plistarr', {'0'});
model.batch('p3').set('sweeptype', 'sparse');
model.batch('p3').set('probesel', 'all');
model.batch('p3').set('probes', {'pdom1' 'dom1'});
model.batch('p3').set('plot', 'off');
model.batch('p3').set('err', 'on');
model.batch('p3').attach('std3');
model.batch('p3').set('control', 'param');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p3').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 8);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('table', {});
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1, 0, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.102, 0, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.9, 1, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.226, 1, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.8, 2, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.26, 2, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.7, 3, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.297, 3, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.6, 4, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.345, 4, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.5, 5, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.404, 5, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.4, 6, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.458, 6, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.3, 7, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.516, 7, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.2, 8, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.61, 8, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.1, 9, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.841, 9, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0, 10, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1.231, 10, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1, 0, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.102, 0, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.9, 1, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.226, 1, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.8, 2, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.26, 2, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.7, 3, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.297, 3, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.6, 4, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.345, 4, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.5, 5, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.404, 5, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.4, 6, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.458, 6, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.3, 7, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.516, 7, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.2, 8, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.61, 8, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.1, 9, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.841, 9, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0, 10, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1.231, 10, 1);

model.result('pg56').run;
model.result('pg17').run;

model.component('comp1').variable('var4').descr('tau', '4.2/(epsl_l^1.45)');
model.component('comp1').variable('var4').set('tau', '1/(epsl_l^1.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('linecolor', 'cyclereset');
model.result('pg19').run;

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('table', {});
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1, 0, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.0432343, 0, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.989650096, 1, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.101471, 1, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.979396417, 2, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.131989, 2, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.969150749, 3, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.154816, 3, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.958915321, 4, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.171722, 4, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.948626764, 5, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.185883, 5, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.938360619, 6, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.197021, 6, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.928066491, 7, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.20639, 7, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.917797803, 8, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.214355, 8, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.907615224, 9, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.221832, 9, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.897434489, 10, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.227753, 10, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.887132413, 11, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.233917, 11, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.876878733, 12, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.239777, 12, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.866666964, 13, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.244537, 13, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.856458755, 14, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.249329, 14, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.84622358, 15, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.254395, 15, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.835942363, 16, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.258728, 16, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.825735045, 17, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.263062, 17, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.815528172, 18, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.267426, 18, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.805279389, 19, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.272156, 19, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.795076968, 20, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.275879, 20, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.784813111, 21, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.280243, 21, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.774528014, 22, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.284546, 22, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.764327693, 23, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.28894, 23, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.754205531, 24, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.293427, 24, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.744082288, 25, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.297363, 25, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.73383185, 26, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.301788, 26, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.723662499, 27, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.305908, 27, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.713510637, 28, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.310822, 28, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.703277243, 29, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.315399, 29, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.693095237, 30, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.320007, 30, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.682946491, 31, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.325104, 31, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.67290319, 32, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.329071, 32, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.662712342, 33, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.334198, 33, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.652675716, 34, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.339172, 34, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.642500705, 35, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.34433, 35, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.632342992, 36, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.350647, 36, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.622286844, 37, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.355194, 37, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.612132629, 38, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.36145, 38, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.60199126, 39, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.366486, 39, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.59181008, 40, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.371918, 40, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.581685945, 41, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.377747, 41, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.571462219, 42, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.383911, 42, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.561292359, 43, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.389893, 43, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.551191375, 44, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.396118, 44, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.540989398, 45, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.402039, 45, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.530961359, 46, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.408691, 46, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.520839769, 47, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.415009, 47, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.510737068, 48, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.421143, 48, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.500633667, 49, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.427765, 49, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.490469785, 50, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.433807, 50, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.480350866, 51, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.439972, 51, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.470227558, 52, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.445557, 52, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.460094457, 53, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.451355, 53, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.449967143, 54, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.457336, 54, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.439785391, 55, 0);
model.component('c