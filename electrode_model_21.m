el.result('pg48').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.label('Electrode_model_with_paper.mph');

model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg6').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg1').run;

model.component('comp1').physics('g2').feature('cons2').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);

model.param.set('k_i0', '1');
model.param.set('M', '1');

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

model.result('pg48').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [1 1 4]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [89 1 4]);
model.result('pg2').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.func('int6').setIndex('table', 0.2, 8, 0);
model.func('int6').setIndex('table', 0.0627391329194658, 8, 1);
model.func('int6').setIndex('table', 0.1, 9, 0);
model.func('int6').setIndex('table', '0.0316998500247530', 9, 1);
model.func('int6').setIndex('table', 0, 10, 0);
model.func('int6').setIndex('table', 0.01, 10, 1);
model.func('int6').setIndex('table', 0.2, 8, 0);
model.func('int6').setIndex('table', 0.0627391329194658, 8, 1);
model.func('int6').setIndex('table', 0.1, 9, 0);
model.func('int6').setIndex('table', '0.0316998500247530', 9, 1);
model.func('int6').setIndex('table', 0, 10, 0);
model.func('int6').setIndex('table', 0.01, 10, 1);
model.func('int6').remove('table', 10);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg27').run;
model.result('pg1').run;

model.param.set('M', '0.1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg34').run;
model.result('pg8').run;

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

model.result('pg48').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.param.set('k_i0', '5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/2', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/2', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/5', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/5', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/3', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/3', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.label('Electrode_model_with_paper.mph');

model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/2', 8, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg37').run;
model.result('pg36').run;
model.result('pg33').run;
model.result('pg31').run;
model.result('pg25').run;
model.result('pg40').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevelinput', 'manual', 2);
model.result('pg39').setIndex('looplevel', [5], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [4], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [5], 2);
model.result('pg39').run;
model.result('pg1').run;
model.result('pg17').run;
model.result('pg20').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg6').run;
model.result('pg32').run;
model.result('pg22').run;
model.result('pg21').run;
model.result('pg23').run;
model.result('pg7').run;
model.result('pg24').run;
model.result('pg10').run;
model.result('pg18').run;
model.result('pg30').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg47').run;
model.result('pg45').run;
model.result('pg29').run;
model.result('pg26').run;
model.result('pg26').run;
model.result('pg26').run;
model.result('pg40').run;
model.result('pg39').run;
model.result('pg40').run;
model.result('pg39').run;
model.result('pg40').run;
model.result('pg40').set('data', 'dset11');
model.result('pg40').setIndex('looplevelinput', 'manual', 2);
model.result('pg40').setIndex('looplevel', [3], 2);
model.result('pg40').setIndex('looplevel', [5], 2);
model.result('pg40').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/1.5', 8, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.005[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.02[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.015[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;

model.func('int5').setIndex('table', 4000, 31, 0);
model.func('int5').setIndex('table', '1e-2', 31, 1);
model.func('int5').setIndex('table', 3500, 31, 0);

model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [4], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.0[V]/I_input_1C)');
model.result('pg19').run;

model.func.create('an2', 'Analytic');
model.func('an2').set('funcname', 'kl_an1');
model.func('an2').set('args', 'x');
model.func('an2').set('expr', '-0.0013*x-5.8912');

model.component('comp1').variable('var4').set('kl_eff', 'k_kl*kl_an1(cl)*cl*epsl_l_1^1.5');

model.func('an2').setIndex('argunit', 'mol/m^3', 0);
model.func('an2').set('fununit', 'S/mol*m^2');
model.func('an2').set('expr', '10^(-0.0013*x-5.8912)');
model.func('an2').setIndex('argunit', 1, 0);

model.component('comp1').variable('var4').set('kl_eff', 'k_kl*kl_an1(cl)*cl[mol/m^3]*epsl_l_1^1.5');

model.func.create('an3', 'Analytic');
model.func('an3').set('funcname', 'Dl_an1');
model.func('an3').set('expr', 'exp(-0.0011*x - 21.756)');
model.func('an2').set('expr', 'exp(-0.0013*x-5.8912)');
model.func('an3').set('fununit', 'm^2/s');

model.component('comp1').variable('var4').set('Dl_eff', 'Dl_an1(cl)*epsl_l_1^1.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg8').run;

model.component('comp1').variable('var4').set('tau', '4.2/(epsl_l^1.1)');
model.component('comp1').variable('var4').set('Dl_eff', 'Dl_an1(cl)/tau');

model.func('an1').set('expr', '4.2/epsl_l^1.1');
model.func('an1').set('args', 'epsl_l');
model.func('an1').setIndex('plotargs', 0.01, 0, 1);
model.func('an1').set('expr', '1/(4.2/epsl_l^1.1)');

model.component('comp1').variable('var4').set('kl_eff', 'k_kl*kl_an1(cl)*cl[mol/m^3]/tau');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int6').active(false);
model.func('int4').active(false);

model.component('comp1').physics('g2').feature('cons2').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.func('int6').active(true);
model.func('int5').active(false);

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

model.result('pg48').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg17').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [5], 2);
model.result('pg39').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;

model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+5E7[Pa]', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg34').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset1');
model.result('pg8').run;

model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+5E8[Pa]', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

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

model.result('pg48').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg37').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [4], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [2], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg19').run;
model.result('pg50').run;
model.result('pg51').run;
model.result('pg51').run;
model.result('pg48').run;
model.result.remove('pg48');
model.result.remove('pg49');
model.result.remove('pg50');
model.result.remove('pg51');
model.result('pg52').run;
model.result('pg52').label('kl_eff');
model.result('pg52').run;
model.result('pg52').feature('lngr1').set('expr', 'kl_eff');
model.result('pg52').run;
model.result('pg52').run;
model.result('pg52').setIndex('looplevelinput', 'manual', 1);
model.result('pg52').set('data', 'dset11');
model.result('pg52').setIndex('looplevelinput', 'manual', 1);
model.result('pg52').setIndex('looplevelinput', 'manual', 2);
model.result('pg52').setIndex('looplevel', [2], 2);
model.result('pg52').setIndex('looplevel', [4], 2);
model.result('pg52').run;
model.result('pg52').setIndex('looplevel', [5], 2);
model.result('pg52').run;

model.func('an1').set('expr', '1/(4.2/epsl_l^2)');

model.component('comp1').variable('var4').set('tau', '1/(epsl_l^2)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').variable('var4').set('tau', '1/(epsl_l^1.75)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 2);
model.result('pg37').setIndex('looplevel', [1], 2);
model.result('pg37').setIndex('looplevelinput', 'first', 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'all', 2);
model.result('pg37').setIndex('looplevelinput', 'all', 0);
model.result('pg37').setIndex('looplevelinput', 'first', 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'all', 0);
model.result('pg37').run;
model.result('pg35').run;
model.result('pg36').run;
model.result('pg19').run;

model.func('an1').set('expr', '1/(4.2/epsl_l^1.6)');

model.component('comp1').variable('var4').set('tau', '4.2/(epsl_l^1.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').variable('var4').set('tau', '1/(epsl_l^1.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.015[V]/I_input_1C)');
model.result('pg19').run;

model.func('int8').setIndex('table', '0.0627391329194658*2', 8, 1);
model.func('int8').setIndex('table', '0.0316998500247530*2', 9, 1);
model.func('int8').setIndex('table', '0.01*2', 10, 1);
model.func('int6').setIndex('table', 0.2, 8, 0);
model.func('int6').setIndex('table', '0.0627391329194658*2', 8, 1);
model.func('int6').setIndex('table', 0.1, 9, 0);
model.func('int6').setIndex('table', '0.0316998500247530*2', 9, 1);
model.func('int6').setIndex('table', 0, 10, 0);
model.func('int6').setIndex('table', '0.01*2', 10, 1);
model.func('int6').setIndex('table', 0.2, 8, 0);
model.func('int6').setIndex('table', '0.0627391329194658*2', 8, 1);
model.func('int6').setIndex('table', 0.1, 9, 0);
model.func('int6').setIndex('table', '0.0316998500247530*2', 9, 1);
model.func('int6').setIndex('table', 0, 10, 0);
model.func('int6').setIndex('table', '0.01*2', 10, 1);
model.func('int6').remove('table', 10);
model.func('int1').setIndex('table', '6.42146029324720e-16', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg1').run;
model.result('pg1').run;

model.param.set('M', '0.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '6.42146029324720e-16/2', 8, 1);
model.func('int1').setIndex('table', '4.46598588237730e-16/3', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.param.set('M', '0.1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.param.set('k_i0', '7.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg10').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg1').run;
model.result('pg24').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [3], 2);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [4], 2);
model.result('pg39').run;
model.result('pg25').run;
model.result('pg40').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [5], 2);
model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp6').active(true);
model.result('pg19').run;
model.result('pg19').feature('tblp6').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9', 0);

model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9 12 15 20', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp6').active(true);
model.result('pg19').feature('tblp7').active(true);
model.result('pg19').feature('tblp8').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp9').active(true);
model.result('pg19').run;

model.label('Electrode_model_with_paper.mph');

model.result('pg19').run;
model.result('pg19').run;

model.component('comp1').physics('g2').feature('cons1').active(true);
model.component('comp1').physics('g2').feature('cons2').active(false);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics.move('g', 1);
model.component('comp1').physics.move('g', 0);
model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+5E6[Pa]', 0);

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

model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset15');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'cl');
model.result.create('pg54', 'PlotGroup2D');
model.result('pg54').set('data', 'dset16');
model.result('pg54').create('surf1', 'Surface');
model.result('pg54').feature('surf1').set('expr', 'u');
model.result.create('pg55', 'PlotGroup2D');
model.result('pg55').set('data', 'dset16');
model.result('pg55').create('surf1', 'Surface');
model.result('pg55').feature('surf1').set('expr', 'cs');
model.result.create('pg56', 'PlotGroup1D');
model.result('pg56').set('data', 'dset15');
model.result('pg56').create('lngr1', 'LineGraph');
model.result('pg56').feature('lngr1').set('xdata', 'expr');
model.result('pg56').feature('lngr1').set('xdataexpr', 'x');
model.result('pg56').feature('lngr1').selection.all;
model.result('pg56').feature('lngr1').set('expr', 'uM');
model.result.create('pg57', 'PlotGroup1D');
model.result('pg57').set('data', 'dset15');
model.result('pg57').create('lngr1', 'LineGraph');
model.result('pg57').feature('lngr1').set('xdata', 'expr');
model.result('pg57').feature('lngr1').set('xdataexpr', 'x');
model.result('pg57').feature('lngr1').selection.all;
model.result('pg57').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p3').run('compute');

model.result('pg53').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg17').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [9], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [7], 2);
model.result('pg18').setIndex('looplevel', [8], 2);
model.result('pg18').run;
model.result('pg37').run;

model.component('comp1').variable('var4').set('tau', '4.2/(epsl_l^1.5)');

model.func('an1').set('expr', '1/(4.2/epsl_l^2)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [7], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [6], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg6').run;
model.result('pg1').run;
model.result('pg1').run;

model.param.set('M', '1');

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9 12', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('int1').setIndex('table', ['1.02571391147464e-15' native2unicode(hex2dec({'30' '01'}), 'unicode') '2'], 7, 1);
model.func('int1').setIndex('table', '1.02571391147464e-15/2', 7, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [6], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [7], 2);
model.result('pg18').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp7').active(false);
model.result('pg19').feature('tblp8').active(false);
model.result('pg19').feature('tblp9').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevelinput', 'manual', 2);
model.result('pg19').setIndex('looplevel', [6], 2);
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6], 2);
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '1 2 4 5 7 9', 0);

model.func('int1').setIndex('table', '1.02571391147464e-15', 7, 1);

model.result('pg19').run;

model.param.set('M', '0.75');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1>1.5', 0);

model.result('pg1').run;
model.result('pg19').run;

model.param.set('M', '0.7');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.0[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.02[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.015[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;

model.param.set('k_Ds', '2');

model.component('comp2').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-y^2*k_Ds*Ds_int1(cs/cs_max_neg)*(csy-cs/R_const/T*(omega1/(J_c)^(2/3)*FT_y/3-2/3*omega1^2*FT/3*csy/(J_c)^(5/3)))'}, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [6], 2);
model.result('pg18').run;
model.result('pg19').run;

model.func('int1').setIndex('table', '1.02571391147464e-15/4', 7, 1);
model.func('int1').setIndex('table', '6.42146029324720e-16/', 8, 1);
model.func('int1').setIn