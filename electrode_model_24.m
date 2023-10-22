]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [7 1 1]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [93 1 1]);
model.result('pg2').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg20').feature.copy('tblp2', 'pg19/tblp2');
model.result('pg20').run;
model.result('pg20').run;
model.result('pg20').feature('ptgr1').set('xdata', 'expr');
model.result('pg20').feature('ptgr1').set('xdataexpr', 't/3600*C');
model.result('pg20').run;
model.result('pg20').run;
model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_i0', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg1').run;
model.result('pg20').run;
model.result('pg1').run;
model.result('pg20').run;
model.result('pg19').run;

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0, 96, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 2, 96, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('interp', 'linear');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('table', {'1' '0.0477';  ...
'0.994318181818182' '0.0679';  ...
'0.990056818181818' '0.0791';  ...
'0.984375' '0.088';  ...
'0.978693181818182' '0.0946';  ...
'0.974431818181818' '0.0989';  ...
'0.96875' '0.1017';  ...
'0.963068181818182' '0.1039';  ...
'0.958806818181818' '0.1057';  ...
'0.953125' '0.1066';  ...
'0.947443181818182' '0.1079';  ...
'0.943181818181818' '0.1085';  ...
'0.9375' '0.1094';  ...
'0.931818181818182' '0.1101';  ...
'0.927556818181818' '0.1104';  ...
'0.921875' '0.1113';  ...
'0.916193181818182' '0.1119';  ...
'0.911931818181818' '0.1128';  ...
'0.90625' '0.1135';  ...
'0.900568181818182' '0.1144';  ...
'0.894886363636364' '0.1153';  ...
'0.890625' '0.1166';  ...
'0.884943181818182' '0.1169';  ...
'0.879261363636364' '0.1181';  ...
'0.875' '0.119';  ...
'0.869318181818182' '0.12';  ...
'0.863636363636364' '0.1206';  ...
'0.859375' '0.1212';  ...
'0.853693181818182' '0.1215';  ...
'0.848011363636364' '0.1231';  ...
'0.84375' '0.1234';  ...
'0.838068181818182' '0.1243';  ...
'0.832386363636364' '0.1259';  ...
'0.828125' '0.1277';  ...
'0.822443181818182' '0.128';  ...
'0.816761363636364' '0.1287';  ...
'0.8125' '0.1302';  ...
'0.806818181818182' '0.1314';  ...
'0.801136363636364' '0.1324';  ...
'0.796875' '0.1336';  ...
'0.791193181818182' '0.1342';  ...
'0.785511363636364' '0.1355';  ...
'0.78125' '0.1373';  ...
'0.775568181818182' '0.1376';  ...
'0.769886363636364' '0.1386';  ...
'0.765625' '0.1398';  ...
'0.759943181818182' '0.1407';  ...
'0.754261363636364' '0.1411';  ...
'0.75' '0.1417';  ...
'0.744318181818182' '0.1429';  ...
'0.738636363636364' '0.1432';  ...
'0.734375' '0.1435';  ...
'0.728693181818182' '0.1451';  ...
'0.723011363636364' '0.1457';  ...
'0.71875' '0.1466';  ...
'0.713068181818182' '0.1473';  ...
'0.707386363636364' '0.1482';  ...
'0.701704545454545' '0.1485';  ...
'0.697443181818182' '0.1494';  ...
'0.691761363636364' '0.15';  ...
'0.686079545454545' '0.1507';  ...
'0.681818181818182' '0.1516';  ...
'0.676136363636364' '0.1528';  ...
'0.670454545454545' '0.1531';  ...
'0.666193181818182' '0.1544';  ...
'0.660511363636364' '0.1547';  ...
'0.654829545454545' '0.155';  ...
'0.650568181818182' '0.1559';  ...
'0.644886363636364' '0.1578';  ...
'0.639204545454545' '0.1584';  ...
'0.634943181818182' '0.1587';  ...
'0.629261363636364' '0.1606';  ...
'0.623579545454545' '0.1625';  ...
'0.619318181818182' '0.1625';  ...
'0.613636363636364' '0.1634';  ...
'0.607954545454545' '0.1643';  ...
'0.603693181818182' '0.1659';  ...
'0.598011363636364' '0.1665';  ...
'0.592329545454545' '0.168';  ...
'0.588068181818182' '0.1693';  ...
'0.582386363636364' '0.1711';  ...
'0.576704545454545' '0.1724';  ...
'0.572443181818182' '0.173';  ...
'0.566761363636364' '0.1745';  ...
'0.561079545454545' '0.1755';  ...
'0.556818181818182' '0.178';  ...
'0.551136363636364' '0.1795';  ...
'0.545454545454545' '0.1807';  ...
'0.541193181818182' '0.1829';  ...
'0.535511363636364' '0.1848';  ...
'0.529829545454545' '0.1863';  ...
'0.525568181818182' '0.1885';  ...
'0.519886363636364' '0.1897';  ...
'0.514204545454545' '0.1916';  ...
'0.509943181818182' '0.1938';  ...
'0.504261363636364' '0.1953';  ...
'0.498579545454545' '0.1981';  ...
'0.494318181818182' '0.2006';  ...
'0.488636363636364' '0.2031';  ...
'0.482954545454545' '0.2052';  ...
'0.478693181818182' '0.2074';  ...
'0.473011363636364' '0.2108';  ...
'0.467329545454545' '0.2133';  ...
'0.461647727272727' '0.2161';  ...
'0.457386363636364' '0.2198';  ...
'0.451704545454545' '0.2223';  ...
'0.446022727272727' '0.2241';  ...
'0.441761363636364' '0.2257';  ...
'0.436079545454545' '0.2288';  ...
'0.430397727272727' '0.2294';  ...
'0.426136363636364' '0.231';  ...
'0.420454545454545' '0.2334';  ...
'0.414772727272727' '0.2353';  ...
'0.410511363636364' '0.2381';  ...
'0.404829545454545' '0.2406';  ...
'0.399147727272727' '0.2437';  ...
'0.394886363636364' '0.2465';  ...
'0.389204545454545' '0.2508';  ...
'0.383522727272727' '0.2545';  ...
'0.377840909090909' '0.2579';  ...
'0.373579545454545' '0.2623';  ...
'0.367897727272727' '0.2654';  ...
'0.362215909090909' '0.2697';  ...
'0.357954545454545' '0.2731';  ...
'0.352272727272727' '0.2772';  ...
'0.346590909090909' '0.2815';  ...
'0.342329545454545' '0.2865';  ...
'0.336647727272727' '0.2911';  ...
'0.330965909090909' '0.2961';  ...
'0.326704545454545' '0.3004';  ...
'0.321022727272727' '0.3051';  ...
'0.315340909090909' '0.3103';  ...
'0.311079545454545' '0.3159';  ...
'0.305397727272727' '0.3215';  ...
'0.299715909090909' '0.3271';  ...
'0.295454545454545' '0.3333';  ...
'0.289772727272727' '0.3401';  ...
'0.284090909090909' '0.3463';  ...
'0.279829545454545' '0.3531';  ...
'0.274147727272727' '0.3602';  ...
'0.268465909090909' '0.3668';  ...
'0.264204545454545' '0.3739';  ...
'0.258522727272727' '0.3816';  ...
'0.252840909090909' '0.3894';  ...
'0.248579545454545' '0.3978';  ...
'0.242897727272727' '0.4055';  ...
'0.237215909090909' '0.4133';  ...
'0.231534090909091' '0.4222';  ...
'0.227272727272727' '0.4303';  ...
'0.221590909090909' '0.439';  ...
'0.215909090909091' '0.4464';  ...
'0.211647727272727' '0.4542';  ...
'0.205965909090909' '0.4619';  ...
'0.200284090909091' '0.4684';  ...
'0.196022727272727' '0.4781';  ...
'0.190340909090909' '0.4849';  ...
'0.184659090909091' '0.4926';  ...
'0.180397727272727' '0.4998';  ...
'0.174715909090909' '0.5084';  ...
'0.169034090909091' '0.5165';  ...
'0.164772727272727' '0.5249';  ...
'0.159090909090909' '0.5345';  ...
'0.153409090909091' '0.5447';  ...
'0.149147727272727' '0.5543';  ...
'0.143465909090909' '0.5649';  ...
'0.137784090909091' '0.5757';  ...
'0.133522727272727' '0.5887';  ...
'0.127840909090909' '0.6017';  ...
'0.122159090909091' '0.6157';  ...
'0.117897727272727' '0.6318';  ...
'0.112215909090909' '0.6483';  ...
'0.106534090909091' '0.6662';  ...
'0.102272727272727' '0.6867';  ...
'0.0965909090909091' '0.709';  ...
'0.0909090909090908' '0.7341';  ...
'0.0852272727272726' '0.7617';  ...
'0.0809659090909091' '0.7918';  ...
'0.0752840909090908' '0.8259';  ...
'0.0696022727272726' '0.8646';  ...
'0.065340909090909' '0.9074';  ...
'0.0596590909090908' '0.9542';  ...
'0.0539772727272726' '1.0063';  ...
'0.049715909090909' '1.0637';  ...
'0.0440340909090908' '1.1285';  ...
'0.0383522727272726' '1.2032';  ...
'0.034090909090909' '1.2891';  ...
'0.0284090909090908' '1.3883';  ...
'0.0227272727272727' '1.4968';  ...
'0.0184659090909091' '1.6109';  ...
'0.0127840909090909' '1.725';  ...
'0.00710227272727271' '1.8362';  ...
'0.00284090909090906' '1.9503'});
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('extrap', 'const');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('scalingx', '1/0.667');
model.result('pg19').run;
model.result('pg19').run;
model.result.remove('pg26');
model.result('pg6').run;
model.result('pg1').run;

model.param.set('M', '1');
model.param.set('k_Ds', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.sol('sol4').feature('t1').feature('st1').set('storestopcondsol', 'stepbefore_stepafter');

model.study('std2').feature('param').setIndex('plistarr', '7/6 14/6 35/6', 0);
model.study('std2').feature('param').setIndex('plistarr', '7/6 14/6 35/6 14*7/6', 0);
model.study('std2').feature('param').setIndex('plistarr', '7/6 14/6 35/6 70/6 14*7/6', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('scalingx', '1/0.62');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').active(true);
model.result('pg19').feature('tblp3').active(true);
model.result('pg19').feature('tblp4').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('linemarker', 'none');
model.result('pg19').feature('tblp1').set('linestyle', 'dotted');
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('linestyle', 'dotted');
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('linestyle', 'dotted');
model.result('pg19').run;
model.result('pg19').feature('tblp4').set('linestyle', 'dotted');
model.result('pg19').run;
model.result('pg38').run;
model.result('pg19').run;
model.result('pg19').setIndex('looplevel', [1 2 3 4], 2);
model.result('pg19').run;
model.result('pg1').run;

model.param.set('M', '0.1');

model.study('std2').feature('param').setIndex('plistarr', '7/6 14/6 35/6 70/6', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/0.66');
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('scalingx', '1/0.66');
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('scalingx', '1/0.66');
model.result('pg19').run;
model.result('pg19').feature('tblp4').set('scalingx', '1/0.66');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.015[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;

model.param.set('M', '0.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/0.64');
model.result('pg19').run;
model.result('pg19').feature('tblp1').set('scalingx', '1/0.62');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp2').set('scalingx', '1/0.62');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp3').set('scalingx', '1/0.62');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp4').set('scalingx', '1/0.62');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [92 1 4]);
model.result('pg2').run;

model.param.set('k_Ds', '5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg19').run;

model.label('Electrode_model_with_experiment_deLi_constant_P.mph');

model.result('pg19').run;

model.param.set('rp_primary', '5.38[um]/2');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg34').run;

model.param.set('epsl_l_0', '0.5');
model.param.set('epsl_s_0', '1-0.235-epsl_l_0');

model.component('comp1').variable('var3').set('epsl_l_2', '(1-0.235-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');
model.component('comp1').variable('var4').set('epsl_s', '1-0.235-epsl_l_1');

model.component('comp1').physics('dode').feature('aleq1').setIndex('f', 'epsl_l-(1-0.235-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg34').run;

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
model.result('pg8').run;
model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_i0', '5');

model.func('int6').setIndex('table', '0.161119331558135*2', 7, 1);
model.func('int6').setIndex('table', '0.0627391329194658*3', 8, 1);
model.func('int6').setIndex('table', '0.0316998500247530*3', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.02[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.015[V]/I_input_1C)');
model.result('pg19').run;

model.param.set('k_i0', '2.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_i0', '1');

model.func('int6').setIndex('table', '0.270462184856707*5', 6, 1);
model.func('int6').setIndex('table', '0.161119331558135*5', 7, 1);
model.func('int6').setIndex('table', '0.0627391329194658*5', 8, 1);
model.func('int6').setIndex('table', '0.0316998500247530*5', 9, 1);
model.func('int6').setIndex('table', 0.270462184856707, 6, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.func('int6').setIndex('table', 0.161119331558135, 7, 1);
model.func('int6').setIndex('table', 0.0627391329194658, 8, 1);
model.func('int6').setIndex('table', '0.0316998500247530', 9, 1);

model.param.set('k_i0', '2');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.func('int6').remove('table', 7);
model.func('int6').remove('table', 7);
model.func('int6').remove('table', 7);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_i0', '5');

model.result('pg20').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset11');
model.result('pg8').setIndex('looplevelinput', 'manual', 2);
model.result('pg8').setIndex('looplevel', [3], 2);
model.result('pg8').setIndex('looplevel', [4], 2);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [3], 2);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [4], 2);
model.result('pg8').run;
model.result('pg19').run;
model.result('pg37').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.0[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.01[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.012[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').run;

model.func('int6').set('extrap', 'linear');
model.func('int6').setIndex('table', 0.3, 7, 0);
model.func('int6').setIndex('table', 0.161119331558135, 7, 1);
model.func('int6').setIndex('table', 0.2, 8, 0);
model.func('int6').setIndex('table', 0.0627391329194658, 8, 1);
model.func('int6').setIndex('table', 0.1, 9, 0);
model.func('int6').setIndex('table', 0.031699850024753, 9, 1);
model.func('int6').setIndex('table', 0, 10, 0);
model.func('int6').setIndex('table', 0.01, 10, 1);
model.func('int6').setIndex('table', 0.3, 7, 0);
model.func('int6').setIndex('table', 0.161119331558135, 7, 1);
model.func('int6').setIndex('table', 0.2, 8, 0);
model.func('int6').setIndex('table', 0.0627391329194658, 8, 1);
model.func('int6').setIndex('table', 0.1, 9, 0);
model.func('int6').setIndex('table', 0.031699850024753, 9, 1);
model.func('int6').setIndex('table', 0, 10, 0);
model.func('int6').setIndex('table', 0.01, 10, 1);
model.func('int6').remove('table', 10);
model.func('int6').set('extrap', 'const');
model.func('int6').setIndex('table', '0.0627391329194658*2', 8, 1);
model.func('int6').setIndex('table', '0.031699850024753*2', 9, 1);
model.func('int6').setIndex('table', '0.031699850024753*3', 9, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.func('int6').setIndex('table', 0, 10, 0);
model.func('int6').setIndex('table', '0.01*3', 10, 1);
model.func('int6').setIndex('table', '0.01*5', 10, 1);

model.param.set('k_i0', '2');
model.param.set('k_Ds', '2');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [1 1 4]);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [89 1 4]);
model.result('pg2').run;
model.result('pg19').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('xdata', 'expr');
model.result('pg1').feature('ptgr1').set('xdataexpr', 't/3600[s]*C');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').set('axislimits', false);
model.result('pg1').set('legendpos', 'lowerleft');
model.result('pg19').run;

model.param.set('M', '0.1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.func('int6').remove('table', [6 7 8 9 10]);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.param.set('k_Ds', '5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg20').run;
model.result('pg19').run;

model.label('Electrode_model_with_experiment_deLi_constant_P.mph');

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').remove('legends', 4);
model.result('pg19').feature('ptgr1').remove('legends', 4);
model.result('pg19').feature('ptgr1').remove('legends', 4);
model.result('pg19').feature('ptgr1').remove('legends', 4);
model.result('pg19').feature('ptgr1').remove('legends', 4);
model.result('pg19').feature('ptgr1').setIndex('legends', '5C', 2);
model.result('pg19').feature('ptgr1').setIndex('legends', '10C', 3);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg17').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').run;
model.result('pg20').run;
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg18').setIndex('looplevelindices', 1, 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevelindices', 2, 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevelindices', 3, 0);
model.result('pg18').run;
model.result('pg18').setIndex('looplevelindices', 'range(1,10,96)', 0);
model.result('pg18').run;
model.result('pg25').run;
model.result('pg25').setIndex('looplevelinput', 'manual', 2);
model.result('pg25').setIndex('looplevel', [4], 2);
model.result('pg25').setIndex('looplevelinput', 'manual', 1);
model.result('pg25').setIndex('looplevelinput', 'all', 1);
model.result('pg25').setIndex('looplevelinput', 'interp', 0);
model.result('pg25').setIndex('interp', 'range(1,10,96)', 0);
model.result('pg25').run;
model.result('pg38').run;
model.result('pg38').setIndex('looplevelinput', 'manual', 2);
model.result('pg38').setIndex('looplevel', [4], 2);
model.result('pg38').setIndex('looplevel', [3], 2);
model.result('pg38').run;
model.result('pg38').setIndex('looplevel', [2], 2);
model.result('pg38').run;
model.result('pg38').setIndex('looplevel', [4], 2);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelinput', 'interp', 0);
model.result('pg38').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg38').setIndex('looplevelindices', 'range(1,10,96)', 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 'range(1,10,50)', 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 'range(1,10,70)', 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 'range(1,10,80)', 0);
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 'range(1,10,90)', 0);
model.result('pg38').run;
model.result('pg35').run;
model.result('pg39').run;
model.result('pg39').set('data', 'dset11');
model.result('pg39').setIndex('looplevelinput', 'manual', 2);
model.result('pg39').setIndex('looplevel', [4], 2);
model.result('pg39').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg39').setIndex('looplevelindices', 'range(1,10,70)', 0);
model.result('pg39').run;
model.result('pg39').setIndex('looplevelindices', 'range(1,10,80)', 0);
model.result('pg39').run;
model.result('pg38').run;
model.result('pg38').setIndex('looplevelindices', 'range(1,10,70)', 0);
model.result('pg38').run;
model.result('pg39').run;
model.result('pg38').run;
model.result('pg39').run;
model.result('pg19').run;
model.result('pg38').run;
model.result('pg39').run;
model.result('pg6').run;
model.result('pg32').run;
model.result('pg8').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 2);
model.result('pg37').setIndex('looplevel', [4], 2);
model.result('pg37').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg37').setIndex('looplevelindices', 'range(1,10,70)', 0);
model.result('pg37').run;
model.result('pg37').setIndex('looplevelindices', 'range(1,10,80)', 0);
model.result('pg37').run;
model.result.create('pg58', 'PlotGroup1D');
model.result('pg58').run;
model.result.move('pg58', 38);
model.result('pg52').run;
model.result('pg52').run;
model.result('pg58').run;
model.result('pg55').run;
model.result('pg57').run;
model.result('pg58').run;
model.result('pg57').run;
model.result('pg58').run;
model.result('pg57').run;
model.result.remove('pg57');
model.result('pg58').run;
model.result.remove('pg58');
model.result('pg52').run;
model.result('pg53').run;
model.result.remove('pg53');
model.result('pg54').run;
model.result.remove('pg54');
model.result('pg55').run;
model.result.remove('pg55');
model.result('pg56').run;
model.result.remove('pg56');
model.result('pg52').run;
model.result('pg52').setIndex('looplevelinput', 'manual', 2);
model.result('pg52').setIndex('looplevel', [4], 2);
model.result('pg52').run;
model.result('pg52').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg52').setIndex('looplevelindices', 'range(1,10,70)', 0);
model.result('pg52').run;
model.result('pg52').set('data', 'dset9');
model.result('pg52').run;
model.result('pg52').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg52').set('data', 'dset9');
model.result('pg52').setIndex('looplevelinput', 'manual', 0);
model.result('pg52').setIndex('looplevel', [96], 0);
model.result('pg52').run;
model.result('pg19').run;
model.result('pg52').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp5').active(true);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('scalingx', '1/0.62');
model.result('pg19').run;
model.result('pg19').run;

model.study('std2').feature('param').setIndex('plistarr', '7/6 14/6 35/6 70/6 9.9/0.6', 0);
model.study('std2').feature('param').setIndex('plistarr', '7/6 14/6 35/6 70/6 99/6', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg8').run;
model.result('pg8').set('data', 'dset9');
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'manual', 0);
model.result('pg8').setIndex('looplevel', [1], 0);
model.result('pg8').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55], 0);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56], 0);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57], 0);
model.result('pg8').run;

model.study.create('std4');
model.study('std4').create('time', 'Transient');
model.study('std4').feature('time').setSolveFor('/physics/g', true);
model.study('std4').feature('time').setSolveFor('/physics/g3', true);
model.study('std4').feature('time').setSolveFor('/physics/g4', true);
model.study('std4').feature('time').setSolveFor('/physics/g2', true);
model.study('std4').feature('time').setSolveFor('/physics/dode', true);
model.study('std4').feature('time').set('tlist', 'range(0,3600/C/100,3600/C)');
model.study('std4').feature('time').set('useinitsol', true);
model.study('std4').feature('time').set('initmethod', 'sol');
model.study('std4').feature('time').set('initstudy', 'std3');
model.study('std4').feature('time').set('solnum', 'last');
model.study('std4').feature('time').set('usesol', true);
model.study('std4').feature('time').set('notsolmethod', 'sol');
model.study('std4').feature('time').set('notstudy', 'std3');
model.study('std4').feature('time').set('notsolnum', 'last');

model.sol.create('sol16');
model.sol('sol16').study('std4');

model.study('std4').feature('time').set('notlistsolnum', 1);
model.study('std4').feature('time').set('notsolnum', 'last');
model.study('std4').feature('time').set('listsolnum', 1);
model.study('std4').feature('time').set('solnum', 'last');

model.sol('sol16').create('st1', 'StudyStep');
model.sol('sol16').feature('st1').set('study', 'std4');
model.sol('sol16').feature('st1').set('studystep', 'time');
model.sol('sol16').create('v1', 'Variables');
model.sol('sol16').feature('v1').set('control', 'time');
model.sol('sol16').create('t1', 'Time');
model.sol('sol16').feature('t1').set('tlist', 'range(0,3600/C/100,3600/C)');
model.sol('sol16').feature('t1').set('plot', 'off');
model.sol('sol16').feature('t1').set('plotgroup', 'pg34');
model.sol('sol16').feature('t1').set('plotfreq', 'tout');
model.sol('sol16').feature('t1').set('probesel', 'all');
model.sol('sol16').feature('t1').set('probes', {'pdom1' 'dom1'});
model.sol('sol16').feature('t1').set('probefreq', 'tsteps');
model.sol('sol16').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol16').feature('t1').set('endtimeinterpolation', true);
model.sol('sol16').feature('t1').set('control', 'time');
model.sol('sol16').feature('t1').create('seDef', 'Segregated');
model.sol('sol16').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol16').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol16').feature('t1').feature.remove('fcDef');
model.sol('sol16').feature('t1').feature.remove('seDef');
model.sol('sol16').attach('std4');
model.sol('sol16').feature('t1').create('st1', 'StopCondition');
model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1>2', 0);
model.sol('sol16').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol16').feature('t1').feature('fc1').set('ntolfact', 0.1);
model.sol('sol16').feature('t1').feature('fc1').set('maxiter', 50);

model.study('std4').create('param', 'Parametric');
model.study('std4').feature('param').setIndex('pname', 'T', 0);
model.study('std4').feature('param').setIndex('plistarr', '', 0);
model.study('std4').feature('param').setIndex('punit', 'K', 0);
model.study('std4').feature('param').setIndex('pname', 'T', 0);
model.study('std4').feature('param').setIndex('plistarr', '', 0);
model.study('std4').feature('param').setIndex('punit', 'K', 0);
model.study('std4').feature('param').setIndex('pname', 'C', 0);
model.study('std4').feature('param').setIndex('plistarr', ['99' native2unicode(hex2dec({'30' '01'}), 'unicode') '6'], 0);
model.study('std4').feature('param').setIndex('plistarr', '99/6', 0);

model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [1], 0);
model.result('pg8').setIndex('looplevel', [83], 0);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [82], 0);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [81], 0);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg19').run;

model.sol('sol16').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1>1.4', 0);

model.batch.create('p4', 'Parametric');
model.batch('p4').study('std4');
model.batch('p4').create('so1', 'Solutionseq');
model.batch('p4').feature('so1').set('seq', 'sol16');
model.batch('p4').feature('so1').set('store', 'on');
model.batch('p4').feature('so1').set('clear', 'on');
model.batch('p4').feature('so1').set('psol', 'none');
model.batch('p4').set('pname', {'C'});
model.batch('p4').set('plistarr', {'99/6'});
model.batch('p4').set('sweeptype', 'sparse');
model.batch('p4').set('probesel', 'all');
model.batch('p4').set('probes', {'pdom1' 'dom1'});
model.batch('p4').set('plot', 'off');
model.batch('p4').set('err', 'on');
model.batch('p4').attach('std4');
model.batch('p4').set('control', 'param');

model.sol.create('sol17');
model.sol('sol17').study('std4');
model.sol('sol17').label([native2unicode(hex2dec({'53' 'c2'}), 'unicode')  native2unicode(hex2dec({'65' '70'}), 'unicode')  native2unicode(hex2dec({'53' '16'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode') ' 3']);

model.batch('p4').feature('so1').set('psol', 'sol17');

model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset19');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'cl');
model.result.create('pg54', 'PlotGroup2D');
model.result('pg54').set('data', 'dset20');
model.result('pg54').create('surf1', 'Surface');
model.result('pg54').feature('surf1').set('expr', 'u');
model.result.create('pg55', 'PlotGroup2D');
model.result('pg55').set('data', 'dset20');
model.result('pg55').create('surf1', 'Surface');
model.result('pg55').feature('surf1').set('expr', 'cs');
model.result.create('pg56', 'PlotGroup1D');
model.result('pg56').set('data', 'dset19');
model.result('pg56').create('lngr1', 'LineGraph');
model.result('pg56').feature('lngr1').set('xdata', 'expr');
model.result('pg56').feature('lngr1').set('xdataexpr', 'x');
model.result('pg56').feature('lngr1').selection.all;
model.result('pg56').feature('lngr1').set('expr', 'uM');
model.result.create('pg57', 'PlotGroup1D');
model.result('pg57').set('data', 'dset19');
model.result('pg57').create('lngr1', 'LineGraph');
model.result('pg57').feature('lngr1').set('xdata', 'expr');
model.result('pg57').feature('lngr1').set('xdataexpr', 'x');
model.result('pg57').feature('lngr1').selection.all;
model.result('pg57').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');

model.sol('sol16').feature('t1').set('tout', 'tsteps');

model.study('std4').feature('param').setIndex('pname', 'T', 1);
model.study('std4').feature('param').setIndex('plistarr', '', 1);
model.study('std4').feature('param').setIndex('punit', 'K', 1);
model.study('std4').feature('param').setIndex('pname', 'T', 1);
model.study('std4').feature('param').setIndex('plistarr', '', 1);
model.study('std4').feature('param').setIndex('punit', 'K', 1);
model.study('std4').feature('param').setIndex('pname', 'Flag', 1);
model.study('std4').feature('param').setIndex('plistarr', -1, 1);

model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset19');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'cl');
model.result.create('pg54', 'PlotGroup2D');
model.result('pg54').set('data', 'dset20');
model.result('pg54').create('surf1', 'Surface');
model.result('pg54').feature('surf1').set('expr', 'u');
model.result.create('pg55', 'PlotGroup2D');
model.result('pg55').set('data', 'dset20');
model.result('pg55').create('surf1', 'Surface');
model.result('pg55').feature('surf1').set('expr', 'cs');
model.result.create('pg56', 'PlotGroup1D');
model.result('pg56').set('data', 'dset19');
model.result('pg56').create('lngr1', 'LineGraph');
model.result('pg56').feature('lngr1').set('xdata', 'expr');
model.result('pg56').feature('lngr1').set('xdataexpr', 'x');
model.result('pg56').feature('lngr1').selection.all;
model.result('pg56').feature('lngr1').set('expr', 'uM');
model.result.create('pg57', 'PlotGroup1D');
model.result('pg57').set('data', 'dset19');
model.result('pg57').create('lngr1', 'LineGraph');
model.result('pg57').feature('lngr1').set('xdata', 'expr');
model.result('pg57').feature('lngr1').set('xdataexpr', 'x');
model.result('pg57').feature('lngr1').selection.all;
model.result('pg57').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');
model.result('pg19').run;
model.result('pg19').create('ptgr2', 'PointGraph');
model.result('pg19').feature.move('ptgr2', 1);
model.result('pg19').feature('ptgr2').set('data', 'dset17');
model.result('pg19').feature('ptgr2').selection.set([1]);
model.result('pg19').feature('ptgr2').set('expr', 'phis');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('expr', 'ppb1[V]+(I_input-I_input_1C)*(0.012[V]/I_input_1C)');
model.result('pg19').run;
model.result('pg19').feature('ptgr2').setIndex('looplevelinput', 'manual', 0);
model.result('pg19').feature('ptgr2').setIndex('looplevel', [1], 0);
model.result('pg19').feature('ptgr2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178], 0);
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('xdata', 'expr');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('xdataexpr', 't/3600*C');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('data', 'dset9');
model.result('pg19').run;
model.result('pg19').run;

model.sol('sol16').feature('t1').feature('st1').set('storestopcondsol', 'stepbefore_stepafter');
model.sol('sol16').feature('t1').feature('fc1').set('ntolfact', 0.05);

model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset19');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'cl');
model.result.create('pg54', 'PlotGroup2D');
model.result('pg54').set('data', 'dset20');
model.result('pg54').create('surf1', 'Surface');
model.result('pg54').feature('surf1').set('expr', 'u');
model.result.create('pg55', 'PlotGroup2D');
model.result('pg55').set('data', 'dset20');
model.result('pg55').create('surf1', 'Surface');
model.result('pg55').feature('surf1').set('expr', 'cs');
model.result.create('pg56', 'PlotGroup1D');
model.result('pg56').set('data', 'dset19');
model.result('pg56').create('lngr1', 'LineGraph');
model.result('pg56').feature('lngr1').set('xdata', 'expr');
model.result('pg56').feature('lngr1').set('xdataexpr', 'x');
model.result('pg56').feature('lngr1').selection.all;
model.result('pg56').feature('lngr1').set('expr', 'uM');
model.result.create('pg57', 'PlotGroup1D');
model.result('pg57').set('data', 'dset19');
model.result('pg57').create('lngr1', 'LineGraph');
model.result('pg57').feature('lngr1').set('xdata', 'expr');
model.result('pg57').feature('lngr1').set('xdataexpr', 'x');
model.result('pg57').feature('lngr1').selection.all;
model.result('pg57').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('linewidth', 2);
model.result('pg19').run;
model.result('pg19').feature('tblp5').set('linestyle', 'dotted');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr2').set('data', 'dset17');
model.result('pg19').run;
model.result('pg19').feature('ptgr2').setIndex('looplevel', [1], 0);
model.result('pg19').feature('ptgr2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187], 0);
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.study('std4').feature('time').set('solnum', 6);
model.study('std4').feature('time').set('notsolnum', 6);

model.result('pg19').run;
model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset19');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'cl');
model.result.create('pg54', 'PlotGroup2D');
model.result('pg54').set('data', 'dset20');
model.result('pg54').create('surf1', 'Surface');
model.result('pg54').feature('surf1').set('expr', 'u');
model.result.create('pg55', 'PlotGroup2D');
model.result('pg55').set('data', 'dset20');
model.result('pg55').create('surf1', 'Surface');
model.result('pg55').feature('surf1').set('expr', 'cs');
model.result.create('pg56', 'PlotGroup1D');
model.result('pg56').set('data', 'dset19');
model.result('pg56').create('lngr1', 'LineGraph');
model.result('pg56').feature('lngr1').set('xdata', 'expr');
model.result('pg56').feature('lngr1').set('xdataexpr', 'x');
model.result('pg56').feature('lngr1').selection.all;
model.result('pg56').feature('lngr1').set('expr', 'uM');
model.result.create('pg57', 'PlotGroup1D');
model.result('pg57').set('data', 'dset19');
model.result('pg57').create('lngr1', 'LineGraph');
model.result('pg57').feature('lngr1').set('xdata', 'expr');
model.result('pg57').feature('lngr1').set('xdataexpr', 'x');
model.result('pg57').feature('lngr1').selection.all;
model.result('pg57').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg53');
model.result.remove('pg54');
model.result.remove('pg55');
model.result.remove('pg56');
model.result.remove('pg57');

model.label('Electrode_model_with_experiment_deLi_constant_P.mph');

model.result('pg38').run;
model.result('pg19').run;

model.label('Electrode_model_with_experiment_deLi_constant_P.mph');

model.result('pg19').run;
model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').run;
model.result('pg53').label('kl');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').selection.set([1]);
model.result('pg53').feature('lngr1').set('expr', 'kl_eff');
model.result('pg53').feature('lngr1').set('descr', '');
model.result('pg53').run;
model.result('pg53').set('data', '