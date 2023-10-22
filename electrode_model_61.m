probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp7').active(true);
model.result('pg19').run;
model.result('pg19').run;

model.study('std4').feature('param').setIndex('plistarr', 20, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func.move('an3', 10);
model.func('an3').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 3 ' native2unicode(hex2dec({'ff' '08'}), 'unicode') '2-14C' native2unicode(hex2dec({'ff' '09'}), 'unicode') ]);
model.func('an4').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 4' native2unicode(hex2dec({'ff' '08'}), 'unicode') '2-14C' native2unicode(hex2dec({'ff' '09'}), 'unicode') ]);
model.func.create('an6', 'Analytic');
model.func.move('an6', 4);
model.func('an3').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 3 ' native2unicode(hex2dec({'ff' '08'}), 'unicode') '20C' native2unicode(hex2dec({'ff' '09'}), 'unicode') ]);
model.func('an4').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 4' native2unicode(hex2dec({'ff' '08'}), 'unicode') '20C' native2unicode(hex2dec({'ff' '09'}), 'unicode') ]);
model.func.move('an5', 9);
model.func('an2').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 2 ' native2unicode(hex2dec({'ff' '08'}), 'unicode') '2-14C' native2unicode(hex2dec({'ff' '09'}), 'unicode') ]);
model.func('an5').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 5' native2unicode(hex2dec({'ff' '08'}), 'unicode') '2-14C' native2unicode(hex2dec({'ff' '09'}), 'unicode') ]);
model.func.create('an7', 'Analytic');
model.func.move('an7', 8);
model.func('an7').set('funcname', 'kl_an7');
model.func('an5').set('funcname', 'Dl_an0');
model.func('an3').set('funcname', 'Dl_an0_1');
model.func('an4').set('funcname', 'kl_an0_1');
model.func('an7').set('funcname', 'kl_an1');
model.func.create('an8', 'Analytic');
model.func.move('an8', 9);
model.func('an8').set('funcname', 'Dl_an1');
model.func('an7').set('expr', 'exp(-0.0011*x-22)');
model.func.move('an7', 9);
model.func('an7').set('expr', 'exp(-0.0013*x-8.8)');
model.func('an8').set('expr', 'exp(-0.0011*x-22)');
model.func.move('an4', 14);
model.func.move('an4', 12);
model.func.move('an3', 13);
model.func.move('an7', 13);
model.func.move('an8', 13);
model.func('an8').set('expr', 'exp(-0.002*x-22)');

model.study.create('std5');
model.study('std5').create('time', 'Transient');
model.study('std5').feature('time').setSolveFor('/physics/g', true);
model.study('std5').feature('time').setSolveFor('/physics/g3', true);
model.study('std5').feature('time').setSolveFor('/physics/g4', true);
model.study('std5').feature('time').setSolveFor('/physics/g2', true);
model.study('std5').feature('time').setSolveFor('/physics/dode', true);
model.study('std5').feature('time').set('tlist', 'range(0,3600/C/100,3600/C)');
model.study('std5').feature('time').set('useinitsol', true);
model.study('std5').feature('time').set('initmethod', 'sol');
model.study('std5').feature('time').set('initstudy', 'std3');
model.study('std5').feature('time').set('solnum', 'last');
model.study('std5').feature('time').set('usesol', true);
model.study('std5').feature('time').set('notsolmethod', 'sol');
model.study('std5').feature('time').set('notstudy', 'std3');
model.study('std5').feature('time').set('notsolnum', 'last');

model.sol.create('sol125');
model.sol('sol125').study('std5');

model.study('std5').feature('time').set('notlistsolnum', 1);
model.study('std5').feature('time').set('notsolnum', 'last');
model.study('std5').feature('time').set('listsolnum', 1);
model.study('std5').feature('time').set('solnum', 'last');

model.sol('sol125').create('st1', 'StudyStep');
model.sol('sol125').feature('st1').set('study', 'std5');
model.sol('sol125').feature('st1').set('studystep', 'time');
model.sol('sol125').create('v1', 'Variables');
model.sol('sol125').feature('v1').set('control', 'time');
model.sol('sol125').create('t1', 'Time');
model.sol('sol125').feature('t1').set('tlist', 'range(0,3600/C/100,3600/C)');
model.sol('sol125').feature('t1').set('plot', 'off');
model.sol('sol125').feature('t1').set('plotgroup', 'pg34');
model.sol('sol125').feature('t1').set('plotfreq', 'tout');
model.sol('sol125').feature('t1').set('probesel', 'all');
model.sol('sol125').feature('t1').set('probes', {'pdom1' 'pdom2' 'dom1'});
model.sol('sol125').feature('t1').set('probefreq', 'tsteps');
model.sol('sol125').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol125').feature('t1').set('endtimeinterpolation', true);
model.sol('sol125').feature('t1').set('control', 'time');
model.sol('sol125').feature('t1').create('seDef', 'Segregated');
model.sol('sol125').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol125').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol125').feature('t1').feature.remove('fcDef');
model.sol('sol125').feature('t1').feature.remove('seDef');
model.sol('sol125').attach('std5');
model.sol('sol125').feature('t1').create('st1', 'StopCondition');
model.sol('sol125').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol125').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1>2', 0);

model.study('std5').create('param', 'Parametric');
model.study('std5').feature('param').setIndex('pname', 'aa_neg', 0);
model.study('std5').feature('param').setIndex('plistarr', '', 0);
model.study('std5').feature('param').setIndex('punit', '', 0);
model.study('std5').feature('param').setIndex('pname', 'aa_neg', 0);
model.study('std5').feature('param').setIndex('plistarr', '', 0);
model.study('std5').feature('param').setIndex('punit', '', 0);
model.study('std5').feature('param').setIndex('pname', 'C', 0);
model.study('std5').feature('param').setIndex('plistarr', 25, 0);

model.batch.create('p5', 'Parametric');
model.batch('p5').study('std5');
model.batch('p5').create('so1', 'Solutionseq');
model.batch('p5').feature('so1').set('seq', 'sol125');
model.batch('p5').feature('so1').set('store', 'on');
model.batch('p5').feature('so1').set('clear', 'on');
model.batch('p5').feature('so1').set('psol', 'none');
model.batch('p5').set('pname', {'C'});
model.batch('p5').set('plistarr', {'25'});
model.batch('p5').set('sweeptype', 'sparse');
model.batch('p5').set('probesel', 'all');
model.batch('p5').set('probes', {'pdom1' 'pdom2' 'dom1'});
model.batch('p5').set('plot', 'off');
model.batch('p5').set('err', 'on');
model.batch('p5').attach('std5');
model.batch('p5').set('control', 'param');

model.sol.create('sol126');
model.sol('sol126').study('std5');
model.sol('sol126').label([native2unicode(hex2dec({'53' 'c2'}), 'unicode')  native2unicode(hex2dec({'65' '70'}), 'unicode')  native2unicode(hex2dec({'53' '16'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode') ' 4']);

model.batch('p5').feature('so1').set('psol', 'sol126');

model.result.create('pg55', 'PlotGroup1D');
model.result('pg55').set('data', 'dset25');
model.result('pg55').create('lngr1', 'LineGraph');
model.result('pg55').feature('lngr1').set('xdata', 'expr');
model.result('pg55').feature('lngr1').set('xdataexpr', 'x');
model.result('pg55').feature('lngr1').selection.all;
model.result('pg55').feature('lngr1').set('expr', 'cl');
model.result.create('pg56', 'PlotGroup2D');
model.result('pg56').set('data', 'dset26');
model.result('pg56').create('surf1', 'Surface');
model.result('pg56').feature('surf1').set('expr', 'u');
model.result.create('pg57', 'PlotGroup2D');
model.result('pg57').set('data', 'dset26');
model.result('pg57').create('surf1', 'Surface');
model.result('pg57').feature('surf1').set('expr', 'cs');
model.result.create('pg58', 'PlotGroup1D');
model.result('pg58').set('data', 'dset25');
model.result('pg58').create('lngr1', 'LineGraph');
model.result('pg58').feature('lngr1').set('xdata', 'expr');
model.result('pg58').feature('lngr1').set('xdataexpr', 'x');
model.result('pg58').feature('lngr1').selection.all;
model.result('pg58').feature('lngr1').set('expr', 'uM');
model.result.create('pg59', 'PlotGroup1D');
model.result('pg59').set('data', 'dset25');
model.result('pg59').create('lngr1', 'LineGraph');
model.result('pg59').feature('lngr1').set('xdata', 'expr');
model.result('pg59').feature('lngr1').set('xdataexpr', 'x');
model.result('pg59').feature('lngr1').selection.all;
model.result('pg59').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');
model.result.remove('pg58');
model.result.remove('pg59');

model.sol('sol125').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol125').feature('t1').feature('fc1').set('ntolfact', 0.001);
model.sol('sol125').feature('t1').feature('fc1').set('maxiter', 250);

model.result.create('pg55', 'PlotGroup1D');
model.result('pg55').set('data', 'dset25');
model.result('pg55').create('lngr1', 'LineGraph');
model.result('pg55').feature('lngr1').set('xdata', 'expr');
model.result('pg55').feature('lngr1').set('xdataexpr', 'x');
model.result('pg55').feature('lngr1').selection.all;
model.result('pg55').feature('lngr1').set('expr', 'cl');
model.result.create('pg56', 'PlotGroup2D');
model.result('pg56').set('data', 'dset26');
model.result('pg56').create('surf1', 'Surface');
model.result('pg56').feature('surf1').set('expr', 'u');
model.result.create('pg57', 'PlotGroup2D');
model.result('pg57').set('data', 'dset26');
model.result('pg57').create('surf1', 'Surface');
model.result('pg57').feature('surf1').set('expr', 'cs');
model.result.create('pg58', 'PlotGroup1D');
model.result('pg58').set('data', 'dset25');
model.result('pg58').create('lngr1', 'LineGraph');
model.result('pg58').feature('lngr1').set('xdata', 'expr');
model.result('pg58').feature('lngr1').set('xdataexpr', 'x');
model.result('pg58').feature('lngr1').selection.all;
model.result('pg58').feature('lngr1').set('expr', 'uM');
model.result.create('pg59', 'PlotGroup1D');
model.result('pg59').set('data', 'dset25');
model.result('pg59').create('lngr1', 'LineGraph');
model.result('pg59').feature('lngr1').set('xdata', 'expr');
model.result('pg59').feature('lngr1').set('xdataexpr', 'x');
model.result('pg59').feature('lngr1').selection.all;
model.result('pg59').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');
model.result.remove('pg58');
model.result.remove('pg59');
model.result('pg19').run;
model.result('pg19').create('ptgr3', 'PointGraph');
model.result('pg19').feature.move('ptgr3', 2);
model.result('pg19').feature('ptgr3').set('data', 'dset23');
model.result('pg19').feature('ptgr3').selection.set([1]);
model.result('pg19').feature('ptgr3').set('expr', 'phis');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.study('std5').create('param2', 'Parametric');
model.study('std5').feature.remove('param2');
model.study('std5').feature('param').setIndex('pname', 'aa_neg', 1);
model.study('std5').feature('param').setIndex('plistarr', '', 1);
model.study('std5').feature('param').setIndex('punit', '', 1);
model.study('std5').feature('param').setIndex('pname', 'aa_neg', 1);
model.study('std5').feature('param').setIndex('plistarr', '', 1);
model.study('std5').feature('param').setIndex('punit', '', 1);
model.study('std5').feature('param').setIndex('pname', 'Flag', 1);
model.study('std5').feature('param').setIndex('plistarr', -1, 1);

model.result.create('pg55', 'PlotGroup1D');
model.result('pg55').set('data', 'dset25');
model.result('pg55').create('lngr1', 'LineGraph');
model.result('pg55').feature('lngr1').set('xdata', 'expr');
model.result('pg55').feature('lngr1').set('xdataexpr', 'x');
model.result('pg55').feature('lngr1').selection.all;
model.result('pg55').feature('lngr1').set('expr', 'cl');
model.result.create('pg56', 'PlotGroup2D');
model.result('pg56').set('data', 'dset26');
model.result('pg56').create('surf1', 'Surface');
model.result('pg56').feature('surf1').set('expr', 'u');
model.result.create('pg57', 'PlotGroup2D');
model.result('pg57').set('data', 'dset26');
model.result('pg57').create('surf1', 'Surface');
model.result('pg57').feature('surf1').set('expr', 'cs');
model.result.create('pg58', 'PlotGroup1D');
model.result('pg58').set('data', 'dset25');
model.result('pg58').create('lngr1', 'LineGraph');
model.result('pg58').feature('lngr1').set('xdata', 'expr');
model.result('pg58').feature('lngr1').set('xdataexpr', 'x');
model.result('pg58').feature('lngr1').selection.all;
model.result('pg58').feature('lngr1').set('expr', 'uM');
model.result.create('pg59', 'PlotGroup1D');
model.result('pg59').set('data', 'dset25');
model.result('pg59').create('lngr1', 'LineGraph');
model.result('pg59').feature('lngr1').set('xdata', 'expr');
model.result('pg59').feature('lngr1').set('xdataexpr', 'x');
model.result('pg59').feature('lngr1').selection.all;
model.result('pg59').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg55').run;
model.result('pg54').set('window', 'window3');
model.result('pg54').set('windowtitle', [native2unicode(hex2dec({'63' 'a2'}), 'unicode')  native2unicode(hex2dec({'94' '88'}), 'unicode')  native2unicode(hex2dec({'56' 'fe'}), 'unicode')  native2unicode(hex2dec({'20' '1c'}), 'unicode') '3' native2unicode(hex2dec({'20' '1d'}), 'unicode') ]);
model.result('pg54').run;
model.result('pg53').set('window', 'window1');
model.result('pg53').run;
model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');
model.result.remove('pg58');
model.result.remove('pg59');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr3').set('xdata', 'expr');
model.result('pg19').feature('ptgr3').set('xdataexpr', 't/3600[s]*C');
model.result('pg19').run;
model.result('pg19').run;

model.func('an8').set('expr', 'exp(-0.0015*x-22)');
model.func('an7').set('expr', 'exp(-0.0013*x-8)');

model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset25');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'cl');
model.result.create('pg54', 'PlotGroup2D');
model.result('pg54').set('data', 'dset26');
model.result('pg54').create('surf1', 'Surface');
model.result('pg54').feature('surf1').set('expr', 'u');
model.result.create('pg55', 'PlotGroup2D');
model.result('pg55').set('data', 'dset26');
model.result('pg55').create('surf1', 'Surface');
model.result('pg55').feature('surf1').set('expr', 'cs');
model.result.create('pg56', 'PlotGroup1D');
model.result('pg56').set('data', 'dset25');
model.result('pg56').create('lngr1', 'LineGraph');
model.result('pg56').feature('lngr1').set('xdata', 'expr');
model.result('pg56').feature('lngr1').set('xdataexpr', 'x');
model.result('pg56').feature('lngr1').selection.all;
model.result('pg56').feature('lngr1').set('expr', 'uM');
model.result.create('pg57', 'PlotGroup1D');
model.result('pg57').set('data', 'dset25');
model.result('pg57').create('lngr1', 'LineGraph');
model.result('pg57').feature('lngr1').set('xdata', 'expr');
model.result('pg57').feature('lngr1').set('xdataexpr', 'x');
model.result('pg57').feature('lngr1').selection.all;
model.result('pg57').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an7').set('expr', 'exp(-0.0014*x-8)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.sol('sol125').feature('t1').set('tout', 'tsteps');
model.sol('sol125').feature('t1').feature('st1').set('storestopcondsol', 'stepbefore_stepafter');

model.func('an7').set('expr', 'exp(-0.001*x-8.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an7').set('expr', 'exp(-0.001*x-8.9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an7').set('expr', 'exp(-0.0011*x-8.9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an7').set('expr', 'exp(-0.0012*x-8.9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an7').set('expr', 'exp(-0.0014*x-8.8)');
model.func('an8').set('expr', 'exp(-0.0011*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an7').set('expr', 'exp(-0.0013*x-9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.func('an4').set('expr', 'exp(-0.0013*x-9.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an8').set('expr', 'exp(-0.0013*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an8').set('expr', 'exp(-0.0015*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;

model.func('an8').set('expr', 'exp(-0.0018*x-22)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg53').run;
model.result('pg19').run;
model.result('pg39').run;
model.result('pg39').set('data', 'dset25');
model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr3').set('legend', true);
model.result('pg19').feature('ptgr3').set('legendmethod', 'manual');
model.result('pg19').feature('ptgr3').setIndex('legends', '25C', 0);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'last', 0);
model.result('pg37').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg37').setIndex('looplevelinput', 'manual', 2);

model.label('Electrode_model_with_experiment_deLi_constant_thickness.mph');

model.result('pg37').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg35').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg52').run;
model.result('pg19').run;
model.result('pg10').run;
model.result.remove('pg10');
model.result('pg18').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').feature('lngr1').set('expr', 'T_yy_M');
model.result('pg28').run;
model.result('pg28').feature('lngr1').set('expr', 'T_h_M');
model.result('pg28').run;
model.result('pg28').feature('lngr1').set('expr', 'T_xx_M');
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').setIndex('looplevelindices', 50, 0);
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [2], 2);
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [3], 2);
model.result('pg28').setIndex('looplevel', [1], 2);
model.result('pg28').setIndex('looplevel', [1 2 3 4 5], 2);
model.result('pg28').run;
model.result('pg28').set('data', 'dset21');
model.result('pg28').run;
model.result('pg28').set('data', 'dset25');
model.result('pg28').run;
model.result('pg28').set('data', 'dset25');
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [2], 2);
model.result('pg27').setIndex('looplevel', [1 2 3 4 5], 2);
model.result('pg27').setIndex('looplevelindices', 50, 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [2], 2);
model.result('pg27').setIndex('looplevel', [5], 2);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelindices', 70, 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'all', 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [4], 2);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [3], 2);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [2], 2);
model.result('pg27').run;
model.result('pg27').set('data', 'dset21');
model.result('pg27').run;
model.result('pg27').set('data', 'dset25');
model.result('pg27').setIndex('looplevelinput', 'manual', 1);
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'last', 0);
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').feature('lngr1').set('expr', 'T_yy_M');
model.result('pg28').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg25').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 25, 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 50, 0);
model.result('pg37').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg38').run;
model.result('pg38').set('data', 'dset11');
model.result('pg38').run;
model.result('pg38').run;
model.result('pg38').setIndex('looplevelinput', 'manual', 2);
model.result('pg38').setIndex('looplevel', [3], 2);
model.result('pg38').run;
model.result('pg38').setIndex('looplevel', [4], 2);
model.result('pg38').run;
model.result('pg38').setIndex('looplevel', [5], 2);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg38').setIndex('looplevelindices', 10, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 20, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 30, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 40, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 50, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 60, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 70, 0);
model.result('pg38').run;
model.result('pg35').run;
model.result('pg35').setIndex('looplevelinput', 'manual', 2);
model.result('pg35').setIndex('looplevel', [3], 2);
model.result('pg35').setIndex('looplevel', [4], 2);
model.result('pg35').setIndex('looplevel', [5], 2);
model.result('pg35').run;
model.result('pg35').setIndex('looplevel', [4], 2);
model.result('pg35').run;
model.result('pg35').setIndex('looplevel', [3], 2);
model.result('pg35').run;
model.result('pg35').setIndex('looplevel', [4], 2);
model.result('pg35').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset11');
model.result('pg27').setIndex('looplevelinput', 'manual', 2);
model.result('pg27').setIndex('looplevel', [4], 2);
model.result('pg27').run;
model.result('pg35').run;
model.result('pg38').run;
model.result('pg38').setIndex('looplevel', [4], 2);
model.result('pg38').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg27').setIndex('looplevelindices', 10, 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelindices', 20, 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelindices', 30, 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelindices', 40, 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelindices', 50, 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevelindices', 60, 0);
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg2').run;

model.component('comp1').mesh('mesh2').feature('size').set('hmax', '50/100');
model.component('comp1').mesh('mesh2').run;
model.component('comp2').mesh('mesh3').feature('map1').feature('dis2').set('numelem', 100);
model.component('comp2').mesh('mesh3').run;

model.func('an4').set('fununit', 'S/mol*m^2');
model.func('an5').set('fununit', 'm^2/s');
model.func('an8').set('fununit', 'm^2/s');
model.func('an7').set('fununit', 'S/mol*m^2');

model.study('std2').feature('param').setIndex('plistarr', '2 5 10 14', 0);

model.func('an7').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 7 (25C)']);
model.func('an8').label([native2unicode(hex2dec({'89' 'e3'}), 'unicode')  native2unicode(hex2dec({'67' '90'}), 'unicode') ' 8 (25C)']);
model.func('an7').set('funcname', 'kl_an1_1');
model.func('an8').set('funcname', 'Dl_an2');
model.func('an7').set('funcname', 'kl_an2');
model.func('an2').set('funcname', 'kl_an1');
model.func('an5').set('funcname', 'Dl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevelinput', 'all', 0);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [3], 2);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [2], 2);
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [4], 2);
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').set('data', 'dset11');
model.result('pg28').setIndex('looplevelinput', 'manual', 2);
model.result('pg28').setIndex('looplevel', [2], 2);
model.result('pg28').setIndex('looplevel', [3], 2);
model.result('pg28').setIndex('looplevel', [4], 2);
model.result('pg28').run;
model.result('pg28').setIndex('looplevel', [3], 2);
model.result('pg28').run;

model.func('an2').set('funcname', 'kl_an1_1');
model.func('an5').set('funcname', 'Dl_an1_1');
model.func('an4').set('funcname', 'kl_an1');
model.func('an3').set('funcname', 'Dl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset21');
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').set('data', 'dset21');
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').feature('lngr1').set('expr', 'T_xx_M');
model.result('pg28').run;

model.func('an4').set('funcname', 'kl_an1_2');
model.func('an3').set('funcname', 'Dl_an1_2');
model.func('an7').set('funcname', 'kl_an1');
model.func('an8').set('funcname', 'Dl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg39').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset25');
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').set('data', 'dset25');
model.result('pg28').run;
model.result('pg27').run;

model.sol('sol125').feature('t1').feature('fc1').set('ntolfact', '0.0001');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg39').run;
model.result('pg27').run;
model.result('pg28').run;

model.component('comp1').mesh('mesh2').feature('size').set('hmax', '50/150');
model.component('comp1').mesh('mesh2').run;
model.component('comp2').mesh('mesh3').feature('map1').feature('dis2').set('numelem', 150);
model.component('comp2').mesh('mesh3').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg39').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg31').run;
model.result('pg37').run;
model.result('pg37').set('data', 'dset25');
model.result('pg37').run;

model.label('Electrode_model_with_experiment_deLi_constant_thickness.mph');

model.result('pg37').run;
model.result('pg37').set('data', 'dset21');
model.result('pg37').run;
model.result('pg37').set('data', 'dset25');
model.result('pg37').run;
model.result('pg37').set('data', 'dset21');
model.result('pg37').run;
model.result('pg37').set('data', 'dset11');
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 2);
model.result('pg37').setIndex('looplevel', [3], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [4], 2);
model.result('pg37').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset11');
model.result('pg27').setIndex('looplevelinput', 'manual', 2);
model.result('pg27').setIndex('looplevel', [4], 2);
model.result('pg27').run;

model.component('comp1').variable('var3').set('T_h_micro', 'comp2.linext1(comp2.T_h)');
model.component('comp1').variable('var3').set('T_RR_micro', 'comp2.linext1(comp2.T_RR)');
model.component('comp1').variable('var3').set('T_tt_micro', 'comp2.linext1(comp2.T_tt)');
model.component('comp1').variable('var3').set('sigma_rr_micro', 'comp2.linext1(comp2.sigma_RR)');
model.component('comp1').variable('var3').set('sigma_tt_micro', 'comp2.linext1(comp2.sigma_tt)');
model.component('comp1').variable('var3').set('Fe_RR_micro', 'comp2.linext1(comp2.F_e_RR)');
model.component('comp1').variable('var3').set('Fe_tt_micro', 'comp2.linext1(comp2.F_e_tt)');

model.func('an7').set('funcname', 'kl_an1_3');
model.func('an8').set('funcname', 'Dl_an1_3');
model.func('an2').set('funcname', 'kl_an1');
model.func('an5').set('funcname', 'Dl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.func('an2').set('funcname', 'kl_an1_1');
model.func('an5').set('funcname', 'Dl_an1_1');
model.func('an4').set('funcname', 'kl_an1');
model.func('an3').set('funcname', 'Dl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.0012*x-9.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.func('an4').set('expr', 'exp(-0.0013*x-8.5)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('expr', 'exp(-0.0013*x-8.9)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;

model.func('an4').set('funcname', 'kl_an1_2');
model.func('an3').set('funcname', 'Dl_an1_2');
model.func('an7').set('funcname', 'kl_an1');
model.func('an8').set('funcname', 'Dl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p5').run('compute');

model.result('pg39').run;
model.result('pg19').run;
model.result('pg53').run;
model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');
model.result.remove('pg58');
model.result.remove('pg59');
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_RR)');
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_tt)');
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_RR)');
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_tt)');
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset21');
model.result('pg27').run;
model.result('pg27').set('data', 'dset25');
model.result('pg27').run;
model.result('pg39').run;
model.result('pg39').set('showlegends', false);
model.result('pg27').run;
model.result('pg39').run;
model.result('pg27').run;
model.result('pg39').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset25');
model.result('pg18').run;
model.result('pg18').set('showlegends', false);
model.result('pg27').run;

model.label('Electrode_model_with_experiment_deLi_constant_thickness.mph');

model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').feature('lngr1').set('expr', 'T_yy_M');
model.result('pg28').run;
model.result('pg28').feature('lngr1').set('expr', 'T_xx_M');
model.result('pg28').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg37').run;
model.result('pg37').set('data', 'dset21');
model.result('pg37').run;
model.result('pg27').run;
model.result('pg39').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset21');
model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg18').set('data', 'dset15');
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 1);
model.result('pg18').set('data', 'dset21');
model.result('pg18').run;
model.result('pg18').set('data', 'dset25');
model.result('pg18').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset21');
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_RR)');
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset11');
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').feature('lngr1').set('expr', 'comp2.linext1(comp2.T_tt)');
model.result('pg27').run;
model.result('pg27').run;
model.result('pg18').run;
model.result('pg27').run;

model.component('comp1').mesh('mesh2').feature('size').set('hmax', '50/100');
model.component('comp2').mesh('mesh3').feature('map1').feature('dis2').set('numelem', 100);
model.component('comp2').mesh('mesh3').run;
model.component('comp1').mesh('mesh2').run;

model.func('an2').set('expr', 'exp(-0.0006*x-2.56)');
model.func('an5').set('expr', 'exp(-0.0005*x-9.45)');
model.func('an7').set('funcname', 'kl_an1_3');
model.func('an8').set('funcname', 'Dl_an1_3');
model.func('an2').set('funcname', 'kl_an1');
model.func('an5').set('funcname', 'Dl_an1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg34').run;
model.result.create('pg55', 'PlotGroup1D');
model.result('pg55').set('data', 'dset15');
model.result('pg55').create('lngr1', 'LineGraph');
model.result('pg55').feature('lngr1').set('xdata', 'expr');
model.result('pg55').feature('lngr1').set('xdataexpr', 'x');
model.result('pg55').feature('lngr1').selection.all;
model.result('pg55').feature('lngr1').set('expr', 'cl');
model.result.create('pg56', 'PlotGroup2D');
model.result('pg56').set('data', 'dset16');
model.result('pg56').create('surf1', 'Surface');
model.result('pg56').feature('surf1').set('expr', 'u');
model.result.create('pg57', 'PlotGroup2D');
model.result('pg57').set('data', 'dset16');
model.result('pg57').create('surf1', 'Surface');
model.result('pg57').feature('surf1').set('expr', 'cs');
model.result.create('pg58', 'PlotGroup1D');
model.result('pg58').set('data', 'dset15');
model.result('pg58').create('lngr1', 'LineGraph');
model.result('pg58').feature('lngr1').set('xdata', 'expr');
model.result('pg58').feature('lngr1').set('xdataexpr', 'x');
model.result('pg58').feature('lngr1').selection.all;
model.result('pg58').feature('lngr1').set('expr', 'uM');
model.result.create('pg59', 'PlotGroup1D');
model.result('pg59').set('data', 'dset15');
model.result('pg59').create('lngr1', 'LineGraph');
model.result('pg59').feature('lngr1').set('xdata', 'expr');
model.result('pg59').feature('lngr1').set('xdataexpr', 'x');
model.result('pg59').feature('lngr1').selection.all;
model.result('pg59').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p3').run('compute');

model.result('pg55').run;
model.result('pg53').set('window', 'window1');
model.result('pg53').run;
model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');
model.result.remove('pg58');
model.result.remove('pg59');

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

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result.dataset('dset23').set('solution', 'none');
model.result.dataset('dset24').set('solution', 'none');
model.result.dataset('dset25').set('solution', 'none');
model.result.dataset('dset26').set('solution', 'none');

model.study.remove('std5');

model.result('pg39').run;
model.result.dataset.remove('dset17');
model.result.dataset.remove('dset18');
model.result.dataset.remove('dset23');
model.result.dataset.remove('dset24');
model.result.dataset.remove('dset25');
model.result.dataset.remove('dset26');
model.result('pg35').run;
model.result('pg31').run;
model.result('pg8').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('scalingx', '1/0.83');
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('scalingx', '1/0.85');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('scalingx', '1/0.84');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg17').run;
model.result.create('pg55', 'PlotGroup2D');
model.result('pg55').run;
model.result.remove('pg55');
model.result.create('pg55', 'PlotGroup1D');
model.result('pg55').run;
model.result.move('pg55', 25);
model.result('pg55').label('cl of the domain');
model.result('pg55').create('lngr1', 'LineGraph');
model.result('pg55').feature('lngr1').selection.set([1]);
model.result('pg55').run;
model.result('pg55').set('data', 'dset15');
model.result('pg55').setIndex('looplevelinput', 'manual', 1);
model.result('pg55').set('data', 'dset11');
model.result('pg55').setIndex('looplevelinput', 'manual', 2);
model.result('pg55').setIndex('looplevel', [3], 2);
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [4], 2);
model.result('pg55').run;
model.result('pg55').run;
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [3], 2);
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [4], 2);
model.result('pg55').run;
model.result('pg52').run;
model.result('pg52').run;
model.result('pg52').run;
model.result('pg52').run;
model.result('pg52').run;

model.func('an2').set('expr', 'exp(-0.0013*x-5.89)');
model.func('an5').set('expr', 'exp(-0.0011*x-21.75)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [3], 2);
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [2], 2);
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [1], 2);
model.result('pg55').run;
model.result('pg52').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('pdom2').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p4').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg55').run;
model.result.move('pg55', 12);
model.result('pg55').setIndex('looplevel', [2], 2);
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [3], 2);
model.result('pg55').run;
model.result('pg55').setIndex('looplevel', [4], 2);
model.result('pg55').run;
model.result.create('pg56', 'PlotGroup1D');
model.result('pg56').run;
model.result.move('pg56', 13);
model.result('pg56').label('phil of the domain');
model.result('pg56').create('lngr1', 'LineGraph');
model.result('pg56').feature('lngr1').selection.set([1]);
model.result('pg56').feature('lngr1').set('expr', 'phil');
model.result('pg56').run;
model.result('pg56').set('data', 'dset11');
model.result('pg56').setIndex('looplevelinput', 'manual', 2);
model.result('pg56').setIndex('looplevel', [4], 2);
model.result('pg56').run;
model.result('pg56').setIndex('looplevel', [3], 2);
model.result('pg56').run;
model.result('pg56').setIndex('looplevel', [4], 2);
model.result('pg56').run;
model.result('pg38').run;
model.result('pg38').setIndex('looplevelinput', 'all', 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 80, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 90, 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelinput', 'all', 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevel', [3], 2);
model.result('pg38').run;
model.result('pg38').set('showlegends', false);
model.result('pg38').run;
model.result('pg38').setIndex('looplevel', [2], 2);
model.result('pg38').run;
model.result('pg35').run;
model.result('pg37').run;
model.result('pg37').set('data', 'dset11');
model.result('pg37').setIndex('looplevel', [4], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [3], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [4], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg37').setIndex('looplevelindices', 10, 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 20, 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 50, 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 70, 0);
model.result('pg37').run;
model.result('pg56').run;
model.result('pg56').set('data', 'dset21');
model.result('pg56').run;
model.result('pg52').run;
model.result.move('pg52', 24);
model.result('pg52').set('data', 'dset11');
model.result('pg52').setIndex('looplevelinput', 'manual', 2);
model.result('pg52').setIndex('looplevel', [4], 2);
model.result('pg52').run;
model.result('pg52').set('data', 'dset21');
model.result('pg52').run;
model.result('pg55').run;
model.result('pg55').set('data', 'dset21');
model.result('pg55').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 80, 0);
model.result('pg37').run;
model.result('pg37').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 90, 0);
model.result('pg37').run;
model.result('pg37').run;
model.result('pg37').run;
model.result('pg1').run;
model.result('pg6').run;
model.result('pg32').run;
model.result('pg8').run;
model.result('pg22').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'manual', 2);
model.result('pg8').setIndex('looplevelinput', 'all', 2);
model.result('pg55').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', '-FT/3*omega/J_c_micro^(2/3)/F_const');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').set('data', 'dset11');
model.result('pg1').run;
model.result('pg1').set('data', 'dset21');
model.result('pg1').run;
model.result('pg1').set('data', 'dset11');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', '-M*FT/3*omega/J_c_micro^(2/3)/F_const');
model.result('pg1').run;
model.result('pg19').run;

model.label('Electrode_model_with_experiment_deLi_constant_thickness.mph');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').setIndex('legends', '', 0);
model.result('pg19').feature('ptgr1').setIndex('legends', '14C', 4);
mod