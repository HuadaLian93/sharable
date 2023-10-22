t('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1>1.5', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').setIndex('looplevel', [7], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [6], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [6], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [7], 2);
model.result('pg18').run;
model.result('pg18').set('data', 'dset9');
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 0);
model.result('pg18').setIndex('looplevel', [15], 0);
model.result('pg18').run;
model.result('pg23').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('lngr1').selection.set([1]);
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'manual', 2);
model.result('pg8').setIndex('looplevel', [2], 2);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [6], 2);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [7], 2);
model.result('pg8').run;
model.result('pg19').run;

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('table', {'x' 'Curve1';  ...
'-0.000867' '1.33403';  ...
'0' '1.32779';  ...
'0.003466' '1.31325';  ...
'0.004333' '1.30078';  ...
'0.006932' '1.28623';  ...
'0.007799' '1.26753';  ...
'0.010399' '1.2426';  ...
'0.012132' '1.20519';  ...
'0.026863' '1.14078';  ...
'0.05286' '1.03688';  ...
'0.073657' '0.93091';  ...
'0.10052' '0.83325';  ...
'0.123917' '0.7439';  ...
'0.149047' '0.67117';  ...
'0.17331' '0.62338';  ...
'0.197574' '0.58182';  ...
'0.221837' '0.55481';  ...
'0.246101' '0.52987';  ...
'0.270364' '0.50909';  ...
'0.29636' '0.48416';  ...
'0.318891' '0.47169';  ...
'0.343154' '0.45922';  ...
'0.368284' '0.4426';  ...
'0.392548' '0.43429';  ...
'0.416811' '0.42182';  ...
'0.441075' '0.40935';  ...
'0.465338' '0.39688';  ...
'0.489601' '0.38234';  ...
'0.513865' '0.37403';  ...
'0.538128' '0.35532';  ...
'0.562392' '0.34286';  ...
'0.586655' '0.33247';  ...
'0.611785' '0.31792';  ...
'0.635182' '0.30961';  ...
'0.660312' '0.29714';  ...
'0.682842' '0.28468';  ...
'0.707972' '0.27844';  ...
'0.732236' '0.2639';  ...
'0.757366' '0.25558';  ...
'0.781629' '0.24519';  ...
'0.805893' '0.23481';  ...
'0.829289' '0.22649';  ...
'0.854419' '0.21403';  ...
'0.878683' '0.20156';  ...
'0.903813' '0.18494';  ...
'0.92721' '0.16831';  ...
'0.954073' '0.13922';  ...
'0.976603' '0.09766';  ...
'1.0026' '0.03948'});
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').remove('table', 2);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('extrap', 'linear');

model.param.set('M', '0.2');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.param.set('M', '1');

model.component('comp1').physics('g2').feature('cons2').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg30').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics('g2').feature('cons2').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);
model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+1E6[Pa]', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevelinput', 'manual', 2);
model.result('pg19').setIndex('looplevel', [2], 2);
model.result('pg19').setIndex('looplevelinput', 'all', 2);
model.result('pg19').run;
model.result('pg19').run;

model.sol('sol9').study('std3');

model.study('std3').feature('time').set('notlistsolnum', 1);
model.study('std3').feature('time').set('notsolnum', '101');
model.study('std3').feature('time').set('listsolnum', 1);
model.study('std3').feature('time').set('solnum', '101');

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
model.sol('sol4').feature('v1').set('notsolnum', 'last');
model.sol('sol4').feature('v1').set('notsolvertype', 'solnum');
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', 'last');
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', 'last');
model.sol('sol4').feature('v1').set('control', 'time');
model.sol('sol4').feature('v1').set('solnum', 'last');
model.sol('sol4').feature('v1').set('solvertype', 'solnum');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 'last');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 'last');
model.sol('sol4').feature('v1').set('control', 'time');

model.study('std2').feature('time').set('notsolnum', 'last');
model.study('std2').feature('time').set('notsolvertype', 'solnum');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 'last');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 'last');
model.study('std2').feature('time').set('notsolnumhide', 'off');
model.study('std2').feature('time').set('notstudyhide', 'off');
model.study('std2').feature('time').set('notsolhide', 'on');
model.study('std2').feature('time').set('solnum', 'last');
model.study('std2').feature('time').set('solvertype', 'solnum');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 'last');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 'last');
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

model.result.create('pg49', 'PlotGroup2D');
model.result('pg49').set('data', 'dset16');
model.result('pg49').create('surf1', 'Surface');
model.result('pg49').feature('surf1').set('expr', 'u');
model.result.create('pg50', 'PlotGroup2D');
model.result('pg50').set('data', 'dset16');
model.result('pg50').create('surf1', 'Surface');
model.result('pg50').feature('surf1').set('expr', 'cs');
model.result.create('pg51', 'PlotGroup1D');
model.result('pg51').set('data', 'dset15');
model.result('pg51').create('lngr1', 'LineGraph');
model.result('pg51').feature('lngr1').set('xdata', 'expr');
model.result('pg51').feature('lngr1').set('xdataexpr', 'x');
model.result('pg51').feature('lngr1').selection.all;
model.result('pg51').feature('lngr1').set('expr', 'cl');
model.result.create('pg52', 'PlotGroup1D');
model.result('pg52').set('data', 'dset15');
model.result('pg52').create('lngr1', 'LineGraph');
model.result('pg52').feature('lngr1').set('xdata', 'expr');
model.result('pg52').feature('lngr1').set('xdataexpr', 'x');
model.result('pg52').feature('lngr1').selection.all;
model.result('pg52').feature('lngr1').set('expr', 'uM');
model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset15');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p3').run('compute');

model.result('pg49').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'all', 2);
model.result('pg8').run;
model.result('pg19').run;
model.result('pg17').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevelinput', 'manual', 2);
model.result('pg39').setIndex('looplevel', [9], 2);
model.result('pg39').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [8], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [9], 2);
model.result('pg18').run;
model.result('pg40').run;
model.result('pg39').run;
model.result('pg45').run;
model.result('pg45').set('data', 'dset11');
model.result('pg45').setIndex('looplevelinput', 'manual', 2);
model.result('pg45').setIndex('looplevel', [2], 2);
model.result('pg45').setIndex('looplevel', [7], 2);
model.result('pg45').run;
model.result('pg29').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 2);
model.result('pg37').setIndex('looplevel', [3], 2);
model.result('pg37').setIndex('looplevel', [7], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [8], 2);
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [9], 2);
model.result('pg37').run;

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;

model.param.set('M', '0.1');

model.result('pg19').run;

model.component('comp1').physics('g2').feature('cons2').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);
model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+5E6[Pa]', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;

model.label('Electrode_model_with_paper.mph');

model.result('pg20').run;

model.param.set('epsl_s_0', '1-0.21-epsl_l_0');

model.label('Electrode_model_with_paper.mph');

model.component('comp1').variable('var6').set('Phis_out', 'comp1.ppb1');
model.component('comp1').variable('var6').set('R_contact', '0.01[V]/I_input_1C');

model.param.set('I_input_1C', 'Q_total*1/3600[s]');

model.component('comp1').variable('var6').set('Phis_out', 'comp1.ppb1[V]+(I_input-I_input_1C)*R_contact');
model.component('comp1').variable('var3').set('epsl_l_2', '(1-0.21-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');
model.component('comp1').variable('var4').set('epsl_s', '1-0.21-epsl_l_1');

model.component('comp1').physics('dode').feature('aleq1').setIndex('f', ['epsl_l-(1-0.216' native2unicode(hex2dec({'30' '01'}), 'unicode') '-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)'], 0);
model.component('comp1').physics('dode').feature('aleq1').setIndex('f', 'epsl_l-(1-0.21-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg8').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg30').run;
model.result('pg30').set('data', 'dset1');
model.result('pg30').run;
model.result('pg30').run;
model.result('pg30').run;
model.result('pg30').feature('lngr1').selection.set([1]);
model.result('pg30').run;

model.study('std3').feature('time').set('solnum', 101);
model.study('std3').feature('time').set('notsolnum', 101);
model.study('std3').feature('time').set('solnum', 'last');
model.study('std3').feature('time').set('notsolnum', 'last');

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
model.sol('sol4').feature('v1').set('notsolnum', 'last');
model.sol('sol4').feature('v1').set('notsolvertype', 'solnum');
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', 'last');
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', 'last');
model.sol('sol4').feature('v1').set('control', 'time');
model.sol('sol4').feature('v1').set('solnum', 'last');
model.sol('sol4').feature('v1').set('solvertype', 'solnum');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 'last');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 'last');
model.sol('sol4').feature('v1').set('control', 'time');

model.study('std2').feature('time').set('notsolnum', 'last');
model.study('std2').feature('time').set('notsolvertype', 'solnum');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 'last');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 'last');
model.study('std2').feature('time').set('notsolnumhide', 'off');
model.study('std2').feature('time').set('notstudyhide', 'off');
model.study('std2').feature('time').set('notsolhide', 'on');
model.study('std2').feature('time').set('solnum', 'last');
model.study('std2').feature('time').set('solvertype', 'solnum');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 'last');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 'last');
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
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'Phis_out');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'phis');
model.result('pg19').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', '-M*T_h_all*omega/J_c_micro^(2/3)/F_const');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').set('data', 'dset9');
model.result('pg1').run;
model.result('pg1').set('data', 'dset11');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').selection.set([1]);
model.result('pg1').run;

model.param.set('k_i0', '5');

model.component('comp1').variable('var3').set('j_react_micro', 'i0*(exp(aa_neg*eta*F_const/R_const/T)*exp(-aa_neg*M*T_h_all*omega/J_c_micro^(2/3)/R_const/T)-exp(-ac_neg*eta*F_const/R_const/T)*exp(ac_neg*M*T_h_all*omega/J_c_micro^(2/3)/R_const/T))');
model.component('comp1').variable('var3').set('i0', 'max(eps^2,k_i0*i0_int1(cs_surf/cs_max_neg)*(max(cl[mol/m^3]/cl_ref,eps^2))^aa_neg)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;

model.func.duplicate('int6', 'int2');
model.func('int2').set('funcname', 'i0_int');
model.func('int6').set('funcname', 'i0_int1');
model.func('int6').remove('table', [9 10]);

model.study('std2').feature('time').set('solnum', 4);
model.study('std2').feature('time').set('notsolnum', 4);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset9');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset11');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/141350');
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/1450');
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').feature('tblp4').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').feature('tblp6').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').feature('tblp7').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').feature('tblp8').set('scalingx', '1/1460');
model.result('pg19').run;
model.result('pg19').feature('tblp5').active(false);
model.result('pg19').feature('tblp6').active(false);
model.result('pg19').feature('tblp7').active(false);
model.result('pg19').feature('tblp8').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg30').run;
model.result('pg1').run;
model.result('pg19').run;

model.param.set('M', '0.25');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg8').run;
model.result('pg19').run;
model.result('pg8').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.param.set('k_i0', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg18').set('data', 'dset9');
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg40').run;
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [5], 2);
model.result('pg39').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevel', [5], 2);
model.result('pg37').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp5').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/1470');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('scalingx', '1/1470');
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('scalingx', '1/1470');
model.result('pg19').run;
model.result('pg19').feature('tblp4').set('scalingx', '1/1470');
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('scalingx', '1/1470');
model.result('pg19').run;
model.result('pg1').run;
model.result('pg39').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'Phis_out');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg1').run;
model.result('pg8').run;
model.result('pg40').run;
model.result('pg19').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').run;
model.result('pg27').set('data', 'dset11');
model.result('pg27').setIndex('looplevelinput', 'manual', 2);
model.result('pg27').setIndex('looplevel', [5], 2);
model.result('pg27').run;
model.result('pg28').run;
model.result('pg28').run;
model.result('pg28').run;

model.component('comp1').physics('g2').feature('cons1').active(true);
model.component('comp1').physics('g2').feature('cons2').active(false);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;

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
model.sol('sol4').feature('v1').set('notsolnum', 4);
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', '4');
model.sol('sol4').feature('v1').set('control', 'time');
model.sol('sol4').feature('v1').set('solnum', 'auto');
model.sol('sol4').feature('v1').set('solvertype', 'solnum');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 4);
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', '4');
model.sol('sol4').feature('v1').set('control', 'time');

model.study('std2').feature('time').set('notsolnum', 'auto');
model.study('std2').feature('time').set('notsolvertype', 'solnum');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 4);
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', '4');
model.study('std2').feature('time').set('notsolnumhide', 'off');
model.study('std2').feature('time').set('notstudyhide', 'off');
model.study('std2').feature('time').set('notsolhide', 'on');
model.study('std2').feature('time').set('solnum', 'auto');
model.study('std2').feature('time').set('solvertype', 'solnum');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 4);
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', '4');
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

model.result('pg49').run;
model.result('pg46').run;
model.result.remove('pg46');
model.result.remove('pg48');
model.result.remove('pg49');
model.result.remove('pg50');
model.result.remove('pg51');
model.result.remove('pg52');
model.result.remove('pg53');

model.study('std2').feature('time').set('solnum', 11);
model.study('std2').feature('time').set('notsolnum', 11);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp6').active(true);
model.result('pg19').feature('tblp7').active(true);
model.result('pg19').feature('tblp8').active(true);
model.result('pg19').feature('tblp9').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp9').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp9').active(true);
model.result('pg19').run;
model.result('pg19').feature('tblp9').set('linestyle', 'dotted');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp8').active(false);
model.result('pg19').feature('tblp9').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevelinput', 'manual', 2);
model.result('pg19').setIndex('looplevel', [1], 2);
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7], 2);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg26').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [8], 2);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').active(false);
model.result('pg19').feature('tblp2').active(false);
model.result('pg19').feature('tblp3').active(false);
model.result('pg19').feature('tblp4').active(false);
model.result('pg19').feature('tblp5').active(false);
model.result('pg19').feature('tblp6').active(false);
model.result('pg19').feature('tblp7').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp8').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').active(true);
model.result('pg19').feature('tblp2').active(true);
model.result('pg19').feature('tblp3').active(true);
model.result('pg19').feature('tblp4').active(true);
model.result('pg19').feature('tblp5').active(true);
model.result('pg19').feature('tblp6').active(true);
model.result('pg19').feature('tblp7').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1], 2);
model.result('pg19').setIndex('looplevel', [1 2 3 4 5 6 7 8], 2);
model.result('pg19').run;

model.func('int6').remove('table', [7 8]);

model.param.set('M', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg1').run;
model.result('pg19').run;
model.result('pg27').run;
model.result('pg28').run;
model.result('pg27').run;
model.result('pg27').setIndex('looplevel', [3], 2);
model.result('pg27').setIndex('looplevel', [9], 2);
model.result('pg27').run;

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.param.remove('M');
model.param.set('M', '0.1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg19').run;

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
model.sol('sol4').feature('v1').set('notsolnum', 11);
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', '11');
model.sol('sol4').feature('v1').set('control', 'time');
model.sol('sol4').feature('v1').set('solnum', 'auto');
model.sol('sol4').feature('v1').set('solvertype', 'solnum');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 11);
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', '11');
model.sol('sol4').feature('v1').set('control', 'time');

model.study('std2').feature('time').set('notsolnum', 'auto');
model.study('std2').feature('time').set('notsolvertype', 'solnum');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 11);
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', '11');
model.study('std2').feature('time').set('notsolnumhide', 'off');
model.study('std2').feature('time').set('notstudyhide', 'off');
model.study('std2').feature('time').set('notsolhide', 'on');
model.study('std2').feature('time').set('solnum', 'auto');
model.study('std2').feature('time').set('solvertype', 'solnum');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 11);
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', '11');
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

model.result.create('pg48', 'PlotGroup2D');
model.result('pg48').set('data', 'dset16');
model.result('pg48').create('surf1', 'Surface');
model.result('pg48').feature('surf1').set('expr', 'u');
model.result.create('pg49', 'PlotGroup2D');
model.result('pg49').set('data', 'dset16');
model.result('pg49').create('surf1', 'Surface');
model.result('pg49').feature('surf1').set('expr', 'cs');
model.result.create('pg50', 'PlotGroup1D');
model.result('pg50').set('data', 'dset15');
model.result('pg50').create('lngr1', 'LineGraph');
model.result('pg50').feature('lngr1').set('xdata', 'expr');
model.result('pg50').feature('lngr1').set('xdataexpr', 'x');
model.result('pg50').feature('lngr1').selection.all;
model.result('pg50').feature('lngr1').set('expr', 'cl');
model.result.create('pg51', 'PlotGroup1D');
model.result('pg51').set('data', 'dset15');
model.result('pg51').create('lngr1', 'LineGraph');
model.result('pg51').feature('lngr1').set('xdata', 'expr');
model.result('pg51').feature('lngr1').set('xdataexpr', 'x');
model.result('pg51').feature('lngr1').selection.all;
model.result('pg51').feature('lngr1').set('expr', 'uM');
model.result.create('pg52', 'PlotGroup1D');
model.result('pg52').set('data', 'dset15');
model.result('pg52').create('lngr1', 'LineGraph');
model.result('pg52').feature('lngr1').set('xdata', 'expr');
model.result('pg52').feature('lngr1').set('xdataexpr', 'x');
model.result('pg52').feature('lngr1').selection.all;
model.result('pg52').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p3').run('compute');

model.result('pg48').run;
model.result('pg17').run;
model.result('pg34').run;
model.result('pg34').set('data', 'dset1');
model.result('pg34').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg1').run;
model.result('pg25').run;
model.result('pg26').run;
model.result('pg25').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevelinput', 'manual', 2);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp6').active(false);
model.result('pg19').feature('tblp7').active(false);
model.result('pg19').feature('tblp8').active(false);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1');
model.result('pg19').feature('ptgr1').set('descr', [native2unicode(hex2dec({'57' 'df'}), 'unicode')  native2unicode(hex2dec({'70' 'b9'}), 'unicode')  native2unicode(hex2dec({'63' 'a2'}), 'unicode')  native2unicode(hex2dec({'94' '88'}), 'unicode') ' 1, phis']);
model.result('pg19').run;

model.func('int6').active(false);
model.func('int6').set('funcname', 'i0_int2');
model.func('int2').set('funcname', 'i0_int1');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg19').run;

model.func.duplicate('int7', 'int3');
model.func('int3').remove('table', [6 7 8 9 10]);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

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
model.sol('sol4').feature('v1').set('notsolnum', 11);
model.sol('sol4').feature('v1').set('notlistsolnum', {'1'});
model.sol('sol4').feature('v1').set('notsolnum', '11');
model.sol('sol4').feature('v1').set('control', 'time');
model.sol('sol4').feature('v1').set('solnum', 'auto');
model.sol('sol4').feature('v1').set('solvertype', 'solnum');
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', 11);
model.sol('sol4').feature('v1').set('listsolnum', {'1'});
model.sol('sol4').feature('v1').set('solnum', '11');
model.sol('sol4').feature('v1').set('control', 'time');

model.study('std2').feature('time').set('notsolnum', 'auto');
model.study('std2').feature('time').set('notsolvertype', 'solnum');
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', 11);
model.study('std2').feature('time').set('notlistsolnum', {'1'});
model.study('std2').feature('time').set('notsolnum', '11');
model.study('std2').feature('time').set('notsolnumhide', 'off');
model.study('std2').feature('time').set('notstudyhide', 'off');
model.study('std2').feature('time').set('notsolhide', 'on');
model.study('std2').feature('time').set('solnum', 'auto');
model.study('std2').feature('time').set('solvertype', 'solnum');
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', 11);
model.study('std2').feature('time').set('listsolnum', {'1'});
model.study('std2').feature('time').set('solnum', '11');
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

model.result('pg19').run;

model.func('int2').set('funcname', 'i0_int');
model.func('int6').set('funcname', 'i0_int1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.func('int6').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [5], 2);
model.result('pg18').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset9');
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 0);
model.result('pg18').setIndex('looplevel', [1], 0);
model.result('pg18').setIndex('looplevel', [1 2 3 4 5 6 7 8 9], 0);
model.result('pg18').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10], 0);
model.result('pg18').run;
model.result('pg39').run;
model.result('pg39').set('data', 'dset9');
model.result('pg39').run;
model.result('pg39').setIndex('looplevelinput', 'manual', 0);
model.result('pg39').setIndex('looplevel', [10], 0);
model.result('pg39').run;
model.result('pg39').setIndex('looplevel', [11], 0);
model.result('pg39').run;

model.component('comp1').variable('var6').set('R_contact', '0.02[V]/I_input_1C');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*R_contact');
model.result('pg19').run;

model.component('comp1').variable('var6').set('R_contact', '0.015[V]/I_input_1C');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.component('comp1').variable('var6').set('R_contact', '0.01[V]/I_input_1C');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.resu