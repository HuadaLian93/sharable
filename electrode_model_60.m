('initmethod', 'sol');
model.study('std4').feature('time').set('initstudy', 'std3');
model.study('std4').feature('time').set('initsol', 'sol9');
model.study('std4').feature('time').set('solnum', 'last');
model.study('std4').feature('time').set('usesol', true);
model.study('std4').feature('time').set('notsolmethod', 'sol');
model.study('std4').feature('time').set('notstudy', 'std3');
model.study('std4').feature('time').set('notsol', 'sol9');
model.study('std4').feature('time').set('notsolnum', 'last');

model.sol.create('sol76');
model.sol('sol76').study('std4');

model.study('std4').feature('time').set('notlistsolnum', 1);
model.study('std4').feature('time').set('notsolnum', 'last');
model.study('std4').feature('time').set('listsolnum', 1);
model.study('std4').feature('time').set('solnum', 'last');

model.sol('sol76').create('st1', 'StudyStep');
model.sol('sol76').feature('st1').set('study', 'std4');
model.sol('sol76').feature('st1').set('studystep', 'time');
model.sol('sol76').create('v1', 'Variables');
model.sol('sol76').feature('v1').set('control', 'time');
model.sol('sol76').create('t1', 'Time');
model.sol('sol76').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol76').feature('t1').set('plot', 'off');
model.sol('sol76').feature('t1').set('plotgroup', 'pg34');
model.sol('sol76').feature('t1').set('plotfreq', 'tout');
model.sol('sol76').feature('t1').set('probesel', 'all');
model.sol('sol76').feature('t1').set('probes', {'pdom1' 'pdom2' 'dom1'});
model.sol('sol76').feature('t1').set('probefreq', 'tsteps');
model.sol('sol76').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol76').feature('t1').set('endtimeinterpolation', true);
model.sol('sol76').feature('t1').set('control', 'time');
model.sol('sol76').feature('t1').create('seDef', 'Segregated');
model.sol('sol76').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol76').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol76').feature('t1').feature.remove('fcDef');
model.sol('sol76').feature('t1').feature.remove('seDef');
model.sol('sol76').attach('std4');

model.study('std4').create('param', 'Parametric');
model.study('std4').feature('param').setIndex('pname', 'aa_neg', 0);
model.study('std4').feature('param').setIndex('plistarr', '', 0);
model.study('std4').feature('param').setIndex('punit', '', 0);
model.study('std4').feature('param').setIndex('pname', 'aa_neg', 0);
model.study('std4').feature('param').setIndex('plistarr', '', 0);
model.study('std4').feature('param').setIndex('punit', '', 0);
model.study('std4').feature('param').setIndex('pname', 'C', 0);
model.study('std4').feature('param').setIndex('plistarr', '15 20 25 30', 0);
model.study('std4').feature('param').setIndex('plistarr', '14 20 25 30', 0);

model.sol('sol76').feature('t1').create('st1', 'StopCondition');
model.sol('sol76').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol76').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1>2', 0);
model.sol('sol76').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol76').feature('t1').feature('fc1').set('ntolfact', 0.001);
model.sol('sol76').feature('t1').feature('fc1').set('maxiter', 250);

model.study('std4').feature('time').set('tlist', 'range(0,3600/C/100,3600/C)');

model.sol('sol76').feature('t1').set('tout', 'tsteps');

model.batch.create('p4', 'Parametric');
model.batch('p4').study('std4');
model.batch('p4').create('so1', 'Solutionseq');
model.batch('p4').feature('so1').set('seq', 'sol76');
model.batch('p4').feature('so1').set('store', 'on');
model.batch('p4').feature('so1').set('clear', 'on');
model.batch('p4').feature('so1').set('psol', 'none');
model.batch('p4').set('pname', {'C'});
model.batch('p4').set('plistarr', {'14 20 25 30'});
model.batch('p4').set('sweeptype', 'sparse');
model.batch('p4').set('probesel', 'all');
model.batch('p4').set('probes', {'pdom1' 'pdom2' 'dom1'});
model.batch('p4').set('plot', 'off');
model.batch('p4').set('err', 'on');
model.batch('p4').attach('std4');
model.batch('p4').set('control', 'param');

model.sol.create('sol77');
model.sol('sol77').study('std4');
model.sol('sol77').label([native2unicode(hex2dec({'53' 'c2'}), 'unicode')  native2unicode(hex2dec({'65' '70'}), 'unicode')  native2unicode(hex2dec({'53' '16'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode') ' 3']);

model.batch('p4').feature('so1').set('psol', 'sol77');

model.result.create('pg63', 'PlotGroup1D');
model.result('pg63').set('data', 'dset21');
model.result('pg63').create('lngr1', 'LineGraph');
model.result('pg63').feature('lngr1').set('xdata', 'expr');
model.result('pg63').feature('lngr1').set('xdataexpr', 'x');
model.result('pg63').feature('lngr1').selection.all;
model.result('pg63').feature('lngr1').set('expr', 'cl');
model.result.create('pg64', 'PlotGroup2D');
model.result('pg64').set('data', 'dset22');
model.result('pg64').create('surf1', 'Surface');
model.result('pg64').feature('surf1').set('expr', 'u');
model.result.create('pg65', 'PlotGroup2D');
model.result('pg65').set('data', 'dset22');
model.result('pg65').create('surf1', 'Surface');
model.result('pg65').feature('surf1').set('expr', 'cs');
model.result.create('pg66', 'PlotGroup1D');
model.result('pg66').set('data', 'dset21');
model.result('pg66').create('lngr1', 'LineGraph');
model.result('pg66').feature('lngr1').set('xdata', 'expr');
model.result('pg66').feature('lngr1').set('xdataexpr', 'x');
model.result('pg66').feature('lngr1').selection.all;
model.result('pg66').feature('lngr1').set('expr', 'uM');
model.result.create('pg67', 'PlotGroup1D');
model.result('pg67').set('data', 'dset21');
model.result('pg67').create('lngr1', 'LineGraph');
model.result('pg67').feature('lngr1').set('xdata', 'expr');
model.result('pg67').feature('lngr1').set('xdataexpr', 'x');
model.result('pg67').feature('lngr1').selection.all;
model.result('pg67').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg63').run;
model.result('pg2').run;

model.study('std4').feature('param').setIndex('pname', 'aa_neg', 1);
model.study('std4').feature('param').setIndex('plistarr', '', 1);
model.study('std4').feature('param').setIndex('punit', '', 1);
model.study('std4').feature('param').setIndex('pname', 'aa_neg', 1);
model.study('std4').feature('param').setIndex('plistarr', '', 1);
model.study('std4').feature('param').setIndex('punit', '', 1);
model.study('std4').feature('param').setIndex('pname', 'Flag', 1);
model.study('std4').feature('param').setIndex('plistarr', -1, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.study('std4').feature('param').set('sweeptype', 'filled');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg63').run;
model.result('pg62').run;
model.result('pg19').run;
model.result('pg19').create('ptgr2', 'PointGraph');
model.result('pg19').feature.move('ptgr2', 1);
model.result('pg19').feature('ptgr2').selection.set([1]);
model.result('pg19').feature('ptgr2').set('expr', 'phis');
model.result('pg19').feature('ptgr2').set('xdata', 'expr');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('xdataexpr', 't/3600*C');
model.result('pg19').feature('ptgr2').set('data', 'dset21');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('legend', true);
model.result('pg19').feature('ptgr2').set('legendmethod', 'manual');
model.result('pg19').feature('ptgr2').setIndex('legends', '14C', 0);
model.result('pg19').feature('ptgr2').setIndex('legends', '=C20', 1);
model.result('pg19').feature('ptgr2').setIndex('legends', '20C', 1);
model.result('pg19').feature('ptgr2').setIndex('legends', '25C', 2);
model.result('pg19').feature('ptgr2').setIndex('legends', '30C', 3);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp6').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp7').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp8').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('linewidth', 2);
model.result('pg19').run;

model.param.set('k_i0', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').active(false);
model.result('pg19').feature('tblp6').active(false);
model.result('pg19').feature('tblp7').active(false);
model.result('pg19').feature('tblp8').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp3').active(false);
model.result('pg19').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '1 5 10', 0);

model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.0[V]/I_input_1C)');
model.result('pg19').run;

model.param.set('k_i0', '2.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg63').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp6').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp7').active(true);
model.result('pg19').run;

model.study('std4').feature('param').setIndex('plistarr', '14 20 25', 0);

model.result('pg19').run;
model.result('pg19').run;

model.param.set('k_kl', '5');

model.func('int6').setIndex('table', '0.270462184856707*2', 6, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.0[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '2 5 10', 0);

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp3').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').active(false);
model.result('pg19').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_Ds', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('linestyle', 'cyclereset');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('linestyle', 'dotted');
model.result('pg19').feature('tblp3').set('linecolor', 'cyan');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('linecolor', 'cyclereset');
model.result('pg19').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevelinput', 'manual', 2);
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg10').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [1], 2);
model.result('pg18').run;
model.result('pg2').run;
model.result('pg19').run;

model.param.set('k_Ds', '2.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_Ds', '2.5');

model.result('pg30').run;
model.result('pg30').set('data', 'dset11');
model.result('pg30').setIndex('looplevelinput', 'manual', 2);
model.result('pg30').setIndex('looplevel', [3], 2);
model.result('pg30').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [104 1 3]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [104 1 2]);
model.result('pg2').run;

model.param.set('k_Ds', '4');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_Ds', '3.5');
model.param.set('k_i0', '2');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg63').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg39').set('data', 'dset21');
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [1], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').setIndex('looplevelinput', 'last', 0);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [1], 2);
model.result('pg39').run;
model.result('pg19').run;

model.param.set('k_Dl', '0.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('scalingx', '1/0.84');
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('scalingx', '1/0.85');
model.result('pg19').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg19').run;

model.param.set('k_kl', '2');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [1], 2);
model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.005[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.001[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.001[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;

model.param.set('k_kl', '0.1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.00[V]/I_input_1C)');
model.result('pg19').run;

model.param.set('k_kl', '0.5');
model.param.set('k_Dl', '0.1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.001[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;

model.component('comp1').variable('var4').set('kl_eff', 'max(k_kl*kl_an1(cl)*cl[mol/m^3]/tau,1e-8[S/m])');

model.param.set('k_kl', '0.3');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [1], 2);
model.result('pg39').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg2').set('data', 'dset22');
model.result('pg2').set('looplevel', [45 1 2]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [45 1 1]);
model.result('pg2').run;

model.param.set('k_kl', '0.2');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.00[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg2').run;

model.param.set('k_Ds', '3');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg19').run;

model.param.set('k_kl', '0.15');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg19').run;

model.label('Electrode_model_with_experiment_deLi_constant_thickness.mph');

model.result('pg19').run;

model.param.set('k_Ds', '2.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg19').run;

model.param.set('k_kl', '0.3');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_kl', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.00[V]/I_input_1C)');
model.result('pg19').run;

model.param.set('k_kl', '5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg19').run;

model.param.set('k_kl', '2.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.005[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.005[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.002[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.00[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.002[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg1').run;
model.result('pg34').run;
model.result('pg1').run;
model.result('pg1').set('data', 'dset21');
model.result('pg1').setIndex('looplevelinput', 'manual', 2);
model.result('pg1').setIndex('looplevel', [2], 2);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 2);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg19').run;
model.result('pg56').run;
model.result('pg57').run;
model.result('pg58').run;
model.result('pg59').run;
model.result('pg61').run;
model.result('pg62').run;
model.result('pg64').run;
model.result('pg65').run;
model.result('pg66').run;
model.result('pg67').run;
model.result('pg53').set('window', 'window1');
model.result('pg53').run;
model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg56');
model.result.remove('pg57');
model.result.remove('pg58');
model.result.remove('pg59');
model.result.remove('pg60');
model.result.remove('pg61');
model.result.remove('pg62');
model.result.remove('pg63');
model.result.remove('pg64');
model.result.remove('pg65');
model.result.remove('pg66');
model.result.remove('pg67');
model.result('pg8').run;
model.result('pg37').run;
model.result('pg52').run;
model.result('pg52').set('data', 'dset21');
model.result('pg52').setIndex('looplevelinput', 'manual', 2);
model.result('pg52').setIndex('looplevel', [2], 2);
model.result('pg52').run;
model.result('pg52').setIndex('looplevel', [3], 2);
model.result('pg52').run;
model.result('pg52').setIndex('looplevel', [2 3], 2);
model.result('pg52').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [1], 2);
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg34').run;
model.result('pg17').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset21');
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'last', 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2 3], 2);
model.result('pg18').run;
model.result('pg37').run;
model.result('pg37').set('data', 'dset21');
model.result('pg37').setIndex('looplevelinput', 'manual', 2);
model.result('pg37').setIndex('looplevel', [2], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [3], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'last', 0);
model.result('pg37').setIndex('looplevel', [2 3], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [2], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [3], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [1], 2);
model.result('pg37').run;

model.func('an3').set('expr', 'exp(-0.0021*x - 21.756)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0015*x - 21.756)');
model.func('an3').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 3 exp(-0.0011*x - 21.756)']);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0013*x - 21.756)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').setIndex('plotargs', 10000, 0, 2);

model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [1], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [1], 2);
model.result('pg18').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [1], 2);
model.result('pg18').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.00[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.0[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [37 1 2]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [37 1 1]);
model.result('pg2').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'phis+(I_input-I_input_1C)*(0.0[V]/I_input_1C)');
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '2 5 10 14', 0);
model.study('std4').feature('param').setIndex('plistarr', '20 25', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0012*x - 21.756)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'all', 0);
model.result('pg18').run;

model.func('an3').set('expr', 'exp(-0.0015*x - 21.756)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset21');
model.result('pg18').setIndex('looplevel', [1], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg19').run;

model.func('an2').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 2 exp(-0.0013*x-5.8912)']);
model.func('an2').set('expr', 'exp(-0.002*x-5.8912)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.003*x-5.8912)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0025*x-5.8912)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0022*x-5.8912)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0013*x - 25)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0013*x - 22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.001*x - 25)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.001*x - 23)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg38').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0012*x - 20)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0012*x - 21.8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0012*x - 22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0018*x-5.8912)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0016*x-6)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.002*x-6)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.002*x-7)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0015*x-7)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0016*x-8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0015*x-8.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg38').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0014*x-8.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.00145*x-8.8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0014*x-8.8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0013*x-8.8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0012*x-8.8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.0012*x-9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an2').set('expr', 'exp(-0.00115*x-9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp7').active(false);
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '2 5 10 14 20', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;

model.func.create('an4', 'Analytic');
model.func('an4').set('funcname', 'kl_an2');
model.func('an4').set('expr', 'exp(-0.0013*x-5.8912)');
model.func('an2').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 2 ']);
model.func('an2').set('expr', 'exp(-0.0013*x-5.8912)');
model.func.create('an5', 'Analytic');
model.func.move('an5', 9);
model.func.move('an5', 12);
model.func('an5').set('funcname', 'Dl_an2');
model.func('an5').set('expr', 'exp(-0.0012*x - 22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.func('an3').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 3']);
model.func('an4').set('expr', 'exp(-0.0012*x-8.5)');

model.study('std4').feature('param').setIndex('plistarr', 20, 0);

model.func('an2').set('funcname', 'kl_an0');
model.func('an4').set('funcname', 'kl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an5').set('expr', 'exp(-0.0012*x-22)');
model.func('an4').set('expr', 'exp(-0.0013*x-8.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.0013*x-10)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('data', 'dset11');
model.result('pg19').feature('ptgr1').setIndex('looplevelinput', 'manual', 2);
model.result('pg19').feature('ptgr1').setIndex('looplevel', [1], 2);
model.result('pg19').feature('ptgr1').setIndex('looplevel', [1 2 3 4], 2);
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.0012*x-8.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.0013*x-8.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.sol('sol76').feature('t1').feature('st1').set('storestopcondsol', 'stepbefore_stepafter');

model.func('an4').set('expr', 'exp(-0.0013*x-9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.0013*x-8.2)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.00125*x-8.3)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.00125*x-8.4)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.label('Electrode_model_with_experiment_deLi_constant_thickness.mph');

model.result('pg19').run;
model.result('pg19').set('axislimits', true);
model.result('pg19').set('ymax', 2);
model.result('pg19').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.00125*x-8.6)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.00125*x-8.8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg52').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg30').run;
model.result('pg18').run;
model.result('pg21').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset21');
model.result('pg8').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0014*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0012*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.func('an3').set('expr', 'exp(-0.001*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an3').set('expr', 'exp(-0.0011*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.0013*x-8.8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.study('std4').feature('param').setIndex('plistarr', '20 25', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').