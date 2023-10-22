t('pg4').run;
model.result('pg4').run;
model.result('pg4').feature('surf1').create('sel1', 'Selection');
model.result('pg4').run;
model.result('pg4').run;

model.param.set('soc_min_neg', '0.5');

model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;

model.label('Agglomerate.mph');

model.result('pg4').run;

model.param.set('SoC_0', '1');
model.param.set('soc_min_neg', '0');
model.param.set('eta_0', '-5[mV]');

model.component('comp2').variable('var2').set('J_c', '1+omega*(cs-cs_0_neg)');
model.component('comp1').variable('var4').set('J_c_M', '1+omega_macro*(cs_ave-cs_0_neg)');

model.param.set('SoC_0', '0.9');

model.label('Agglomerate.mph');

model.component('comp1').physics('g2').feature('dir1').setIndex('weakConstraints', 1, 0);
model.component('comp1').physics('g').feature('dir1').setIndex('r', 'eta_0++mat1.elpot.Eeq_int1(cs/cs_max_neg)', 1);
model.component('comp1').physics('g').feature('dir1').setIndex('r', 'eta_0+mat1.elpot.Eeq_int1(cs/cs_max_neg)', 1);
model.component('comp1').physics('g').feature('dir1').setIndex('r', 'eta_0+mat1.elpot.Eeq_int1(cs_surf/cs_max_neg)', 1);
model.component('comp1').physics('g2').feature('dir1').setIndex('weakConstraints', 0, 0);
model.component('comp1').physics('dode').feature('init1').set('epsl_l', 'epsl_l_0');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'uM');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.sol('sol1').runFromTo('st1', 'v1');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').selection.set([1]);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result.remove('pg2');
model.result.remove('pg3');
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result.remove('pg4');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cl');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'i0');
model.result('pg1').feature('lngr1').set('descr', '');
model.result('pg1').run;

model.param.set('SoC_0', '1');

model.result('pg1').run;

model.param.set('SoC_0', '0.9');

model.label('Agglomerate.mph');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cl');
model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntermconst', 'tol');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.component('comp2').physics('g4').feature('gfeq1').setIndex('f', 0, 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'uM');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'Dphi');
model.result('pg1').feature('lngr1').set('descr', [native2unicode(hex2dec({'56' 'e0'}), 'unicode')  native2unicode(hex2dec({'53' 'd8'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode') ' Dphi']);
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta');
model.result('pg1').run;
model.result.create('pg2', 'PlotGroup2D');
model.result('pg2').run;

model.param.set('SoC_0', '0.99');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'Dphi');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_surf');
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').create('surf1', 'Surface');
model.result('pg2').feature('surf1').set('expr', 'cs');
model.result('pg2').feature('surf1').create('sel1', 'Selection');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result.remove('pg2');
model.result.dataset('dset1').set('geom', 'geom3');
model.result('pg1').run;
model.result.dataset('dset1').set('geom', 'geom2');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').selection.set([1]);
model.result('pg1').run;
model.result.create('pg2', 'PlotGroup2D');
model.result('pg2').run;
model.result.dataset('dset1').set('geom', 'geom3');
model.result('pg2').run;
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('surf1', 'Surface');
model.result('pg2').run;
model.result('pg2').feature('surf1').set('expr', 'cs');
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', 'mol/m^3');
model.result('pg2').feature('surf1').set('rangecolormin', 10062.710714800663);
model.result('pg2').feature('surf1').set('rangecolormax', 19800.934900876142);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 10062.710714800663);
model.result('pg2').feature('surf1').set('rangedatamax', 19800.934900876142);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [10062.710714800663 19800.934900876142]);
model.result('pg2').set('allowtableupdate', true);
model.result.table.create('evl2', 'Table');
model.result.table('evl2').comments([native2unicode(hex2dec({'4e' 'a4'}), 'unicode')  native2unicode(hex2dec({'4e' '92'}), 'unicode')  native2unicode(hex2dec({'76' '84'}), 'unicode')  native2unicode(hex2dec({'4e' '8c'}), 'unicode')  native2unicode(hex2dec({'7e' 'f4'}), 'unicode')  native2unicode(hex2dec({'50' '3c'}), 'unicode') ]);
model.result.table('evl2').label('Evaluation 2D');
model.result.table('evl2').addRow([2.9460167638717394E-9 1.1404743816001428E-9 10433.071434032117], [0 0 0]);
model.result.table('evl2').addRow([1.976260932678997E-9 3.669811832196501E-8 16406.322692849433], [0 0 0]);
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result.dataset('dset1').set('geom', 'geom2');
model.result.dataset.create('dset2', 'Solution');
model.result.dataset('dset2').set('geom', 'geom3');
model.result('pg2').run;
model.result('pg2').set('data', 'dset2');
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').run;

model.study('std1').feature('time').set('tlist', 'range(0,10,3600)');

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cl');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [38], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [7], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').run;

model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v/F_const-det_F_M_dt)*(1-epsl_l)', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '-(omega*j_react*a_v/F_const-det_F_M_dt)*(1-epsl_l)', 0);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react*a_v/F_const+det_F_M_dt)*(1-epsl_l)', 0);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [11], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [36], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'det_F_M_dt');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [30], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'det_F_M');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'det_F_M_dt');
model.result('pg1').feature('lngr1').set('descr', '');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [41], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react');
model.result('pg1').run;

model.component('comp1').variable('var3').rename('j_react_M', 'j_react_m');
model.component('comp2').variable('var5').set('j_surf', 'comp1.linext2(comp1.j_react_m)/F_const');
model.component('comp1').variable('var3').descr('rp_primary_1_M', 'reference configuration in macroscale');
model.component('comp1').variable('var3').descr('rp_primary_1', 'current configuration in microscale');
model.component('comp1').variable('var3').rename('j_react_m', 'j_react_micro');
model.component('comp2').variable('var5').set('j_surf', 'comp1.linext2(comp1.j_react_micro)/F_const');

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'a_v*j_react*x^2', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t0)*a_v*j_react/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);

model.component('comp1').variable('var3').set('a_v', '3*epsl_s/rp_primary_1_M');
model.component('comp1').variable('var3').descr('j_react', 'reaction current for reference configuration');
model.component('comp1').variable('var3').descr('j_react_micro', 'reaction current for reference configuration in microscale');
model.component('comp1').variable('var3').descr('j_react', 'reaction current for reference configuration in macroscale');

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;

model.component('comp1').variable('var4').set('det_F_M_dt', '(uMxt+1)*(uM_x+1)^2+2*(uMx+1)*(uM_x+1)*(uMt/x)');

model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'det_F_M_dt');
model.result('pg1').feature('lngr1').set('descr', '');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'det_F_M');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_lt');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'omega*j_react*a_v/F_const');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'det_F_M_dt');
model.result('pg1').run;

model.component('comp1').variable('var4').set('det_F_M_dt', '(uMxt)*(uM_x+1)^2+2*(uMx+1)*(uM_x+1)*(uMt/x)');

model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'first', 0);
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [9 10 11 12 13 14 15], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_lt');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_M_x');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_ave');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'pd(cs_ave,x)');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'd(cs_ave,x)');
model.result('pg1').run;

model.component('comp1').variable('var4').set('cs_M_x', 'd(cs_ave,x)');

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_M_x');
model.result('pg1').feature('lngr1').set('descr', '');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').setIndex('looplevel', [6], 0);
model.result('pg1').setIndex('looplevel', [7], 0);
model.result('pg1').setIndex('looplevel', [8], 0);
model.result('pg1').setIndex('looplevel', [9], 0);
model.result('pg1').setIndex('looplevel', [10], 0);
model.result('pg1').setIndex('looplevel', [11], 0);
model.result('pg1').run;

model.component('comp1').variable('var4').set('cs_M_x', 'comp2.linproj1(comp2.csx*y^2)/rp_primary^3*3');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [19], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_lt');
model.result('pg1').run;

model.component('comp1').variable('var4').remove('T_RR_M_x');
model.component('comp1').variable('var4').remove('T_tt_M_x');
model.component('comp1').variable('var4').remove('cs_M_x');
model.component('comp1').variable('var4').remove('T_h_x');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('surf1').set('expr', 'T_RR');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').run;

model.component('comp1').variable('var3').rename('j_react_micro', 'j_react_macro');
model.component('comp1').variable('var3').rename('j_react', 'j_react_micro');
model.component('comp1').variable('var3').set('j_react_macro', 'j_react_micro*rp_primary_1_M^2/(rp_primary^2)');

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'x^2*(1-t0)*a_v*j_react_macro/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'a_v*j_react_macro*x^2', 1);
model.component('comp1').physics('dode').feature('dode1').setIndex('f', '(omega*j_react_macro*a_v/F_const+det_F_M_dt)*(1-epsl_l)', 0);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'uM');
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('surf1').set('expr', 'u');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [11]);
model.result('pg2').run;
model.result('pg2').set('looplevel', [18]);
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', 'm');
model.result('pg2').feature('surf1').set('rangecolormin', 0);
model.result('pg2').feature('surf1').set('rangecolormax', 8.165204416910422E-9);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 0);
model.result('pg2').feature('surf1').set('rangedatamax', 8.165204416910422E-9);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [0 8.165204416910422E-9]);
model.result('pg2').set('allowtableupdate', true);
model.result('pg2').run;
model.result('pg2').feature('surf1').set('expr', 'cs');
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', 'mol/m^3');
model.result('pg2').feature('surf1').set('rangecolormin', 27981.299964573976);
model.result('pg2').feature('surf1').set('rangecolormax', 86147.40955492551);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 27981.299964573976);
model.result('pg2').feature('surf1').set('rangedatamax', 86147.40955492551);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [27981.299964573976 86147.40955492551]);
model.result('pg2').set('allowtableupdate', true);

model.component('comp1').physics('dode').feature('init1').set('epsl_lt', '(omega*j_react_macro*a_v/F_const+det_F_M_dt)*(1-epsl_l_0)');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_ave');
model.result('pg1').feature('lngr1').set('descr', '');
model.result('pg1').feature('lngr1').set('expr', 'cs_ave/cs_max_neg');
model.result('pg1').run;

model.param.set('eta_0', '-1[mV]');

model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;

model.param.set('eta_0', '-5[mV]');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'Dphi');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cl');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'i0');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'i0');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_surf');
model.result('pg1').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,10)');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.1);
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 25);
model.sol('sol1').runAll;

model.result('pg1').run;

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 4);
model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);
model.sol('sol1').feature('t1').set('stabcntrl', false);
model.sol('sol1').runAll;

model.result('pg1').run;

model.component('comp1').mesh('mesh2').autoMeshSize(4);
model.component('comp1').mesh('mesh2').run;

model.sol('sol1').runAll;

model.result('pg1').run;

model.component('comp2').mesh('mesh3').feature('map1').create('dis2', 'Distribution');
model.component('comp2').mesh('mesh3').feature('map1').feature('dis2').selection.set([3]);
model.component('comp2').mesh('mesh3').feature('map1').feature('dis2').set('numelem', 15);
model.component('comp2').mesh('mesh3').run;

model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react_micro');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'sigma_h_micro');
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').create('line1', 'Line');
model.result('pg2').run;
model.result('pg2').feature('surf1').active(false);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('line1').create('sel1', 'Selection');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('line1').feature('sel1').selection.set([3]);
model.result('pg2').run;
model.result('pg2').feature('line1').set('expr', 'sigma_h');
model.result('pg2').run;
model.result('pg2').feature('line1').set('expr', 'T_h');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('line1').set('expr', 'sigma_h');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('line1').set('expr', 'u');
model.result('pg2').run;

model.label('Agglomerate.mph');

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react_micro');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta-omega*sigma_h_micro/R_const/T');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta-omega*sigma_h_micro/F_const');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [7], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'omega*sigma_h_micro/F_const');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').create('lngr2', 'LineGraph');
model.result('pg1').feature('lngr2').selection.set([1]);
model.result('pg1').feature('lngr2').set('expr', 'eta');
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature.remove('lngr2');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'i0');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', '(1-cs_surf/cs_max_neg)^aa_neg*(cs_surf/cs_max_neg)^ac_neg*(cl[mol/m^3]/cl_ref)^aa_neg');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', '(1-cs_surf/cs_max_neg)^aa_neg*(cs_surf/cs_max_neg)^ac_neg');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', '(cl[mol/m^3]/cl_ref)^aa_neg');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', '(1-cs_surf/cs_max_neg)^aa_neg*(cs_surf/cs_max_neg)^ac_neg');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_surf');
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('line1').active(false);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('surf1').active(true);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', 7, 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', 10, 0);
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', 'mol/m^3');
model.result('pg2').feature('surf1').set('rangecolormin', 4081.063612023537);
model.result('pg2').feature('surf1').set('rangecolormax', 5974.384034588297);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 4081.063612023537);
model.result('pg2').feature('surf1').set('rangedatamax', 5974.384034588297);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [4081.063612023537 5974.384034588297]);
model.result('pg2').set('allowtableupdate', true);

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'a_v*x^2*(1-t0)*j_react_macro/F_const-x^2*cl*1[mol/m^3]*epsl_lt', 0);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react_micro');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'uM');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'det_F_M');
model.result('pg1').feature('lngr1').set('descr', '');
model.result('pg1').run;

model.component('comp1').physics.create('liion', 'LithiumIonBatteryMPH', 'geom2');

model.study('std1').feature('time').activate('liion', true);

model.component('comp1').physics('liion').create('pce1', 'PorousElectrode', 1);
model.component('comp1').physics.remove('liion');
model.component('comp2').physics('g3').create('dir2', 'DirichletBoundary', 1);
model.component('comp2').physics('g3').feature.remove('dir2');
model.component('comp2').physics('g3').create('cons1', 'Constraint', 1);
model.component('comp2').physics('g3').feature('cons1').selection.set([3]);
model.component('comp2').physics('g3').feature('cons1').setIndex('R', 'T_RR-comp1.linext1(T_RR_M)', 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('R', 'T_RR-comp1.linext1(comp1.T_RR_M)', 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('R', 'T_RR-comp1.linext2(comp1.T_RR_M)', 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('weakConstraints', 1, 0);
model.component('comp2').physics('g3').feature('dir1').setIndex('weakConstraints', 1, 0);
model.component('comp2').physics('g3').feature('dir1').setIndex('weakConstraints', 0, 0);
model.component('comp2').physics('g3').feature('dir1').setIndex('constraintType', 'symmetricConstraint', 0);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_surf');
model.result('pg1').run;

model.component('comp2').physics('g3').feature('dir1').setIndex('weakConstraints', 1, 0);
model.component('comp2').physics('g3').feature('dir1').setIndex('weakConstraints', 0, 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('weakConstraints', 0, 0);
model.component('comp2').physics('g3').feature('cons1').active(false);

model.sol('sol1').runAll;

model.result('pg1').run;

model.component('comp1').physics('g2').feature('dir1').setIndex('constraintType', 'symmetricConstraint', 0);
model.component('comp1').physics('g').feature('dir1').setIndex('constraintType', 'symmetricConstraint', 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react_micro');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [2 3 4 5 6 7 8 9 10 11], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;

model.study('std1').feature('time').set('tlist', 'range(0,10,100)');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [2 3 4 5 6 7 8 9 10], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [11], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', 11, 0);
model.result('pg2').run;

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 25);
model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 0.1);
model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.param.set('eta_0', '-50[mV]');

model.component('comp2').physics('g3').feature('cons1').active(true);

model.param.set('eta_0', '-5[mV]');

model.component('comp2').physics('g3').feature('cons1').setIndex('weakConstraints', 1, 0);
model.component('comp2').physics('g3').feature('cons1').active(false);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'eta-sigma_h_micro*omega/F_const');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'sigma_h_micro*omega/F_const');
model.result('pg1').run;

model.component('comp1').physics('g').feature('dir1').setIndex('constraintType', 'unidirectionalVar', 0);
model.component('comp1').physics('g2').feature('dir1').setIndex('constraintType', 'unidirectionalVar', 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_surf');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;

model.component('comp1').physics('g2').feature('dir1').setIndex('constraintType', 'symmetricConstraint', 0);

model.sol('sol1').runAll;

model.result('pg1').run;

model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 1, 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.component('comp1').physics('g').feature('dir1').setIndex('constraintType', 'symmetricConstraint', 0);
model.component('comp1').physics('g2').feature('dir1').setIndex('weakConstraints', 1, 0);
model.component('comp1').physics('g2').feature('dir1').setIndex('constraintType', 'unidirectionalConstraint', 0);
model.component('comp1').physics('g').feature('dir1').setIndex('constraintType', 'unidirectionalConstraint', 0);
model.component('comp1').physics('g2').feature('dir1').setIndex('weakConstraints', 0, 0);
model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 0, 0);
model.component('comp1').physics('g').feature('dir1').setIndex('constraintType', 'symmetricConstraint', 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;

model.component('comp1').physics('g2').feature('dir1').setIndex('constraintType', 'symmetricConstraint', 0);
model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 1, 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;

model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 0, 0);

model.sol('sol1').runAll;

model.result('pg1').run;

model.component('comp1').physics('g2').feature('dir1').setIndex('constraintType', 'unidirectionalConstraint', 0);
model.component('comp1').physics('g').feature('dir1').setIndex('constraintType', 'unidirectionalConstraint', 0);

model.sol('sol1').runAll;

model.result('pg1').run;

model.component('comp2').physics('g3').feature('dir1').setIndex('constraintType', 'unidirectionalConstraint', 0);

model.sol('sol1').runAll;

model.result('pg1').run;

model.param.set('eta_0', '-10[mV]');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cs_surf/cs_max_neg');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.component('comp2').physics('g3').feature('cons1').active(true);
model.component('comp2').physics('g3').feature('cons1').setIndex('constraintType', 'unidirectionalConstraint', 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('weakConstraints', 0, 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('weakConstraints', 1, 0);

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);

model.component('comp2').physics('g3').feature('cons1').setIndex('constraintType', 'unidirectionalVar', 0);

model.result('pg1').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,100)');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [34 35 36 37 38], 0);
model.result('pg1').setIndex('looplevel', [34], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'j_react_micro');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [33], 0);
model.result('pg1').setIndex('looplevel', [33 34], 0);
model.result('pg1').setIndex('looplevel', [34], 0);
model.result('pg1').setIndex('looplevel', [2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [31], 0);
model.result('pg1').setIndex('looplevel', [29], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [21 22 23 24 25 26 27 28 29], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'cl');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [1 2 3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2 3], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [6], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [7], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [8], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [9], 0);
model.result('pg1').run;

model.component('comp2').physics('g3').feature('cons1').setIndex('constraintType', 'symmetricConstraint', 0);
model.component('comp2').physics('g3').feature('cons1').setIndex('constraintType', 'unidirectionalVar', 0);

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR_M');
model.result('pg1').feature('lngr1').set('descr', '');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [29], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [30], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [31], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [30], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [29], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'epsl_l');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [29 30], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [31], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [34], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [35], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'uM');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [35 36 37], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35], 0);
model.result('pg1').setIndex('looplevel', [36], 0);
model.result('pg1').setIndex('looplevel', [35], 0);
model.result('pg1').setIndex('looplevel', [34], 0);
model.result('pg1').setIndex('looplevel', [33], 0);
model.result('pg1').setIndex('looplevel', [32], 0);
model.result('pg1').setIndex('looplevel', [31], 0);
model.result('pg1').setIndex('looplevel', [30], 0);
model.result('pg1').setIndex('looplevel', [29], 0);
model.result('pg1').setIndex('looplevel', [28], 0);
model.result('pg1').setIndex('looplevel', [27], 0);
model.result('pg1').setIndex('looplevel', [26], 0);
model.result('pg1').setIndex('looplevel', [25 26], 0);
model.result('pg1').setIndex('looplevel', [24 25], 0);
model.result('pg1').setIndex('looplevel', [23 24], 0);
model.result('pg1').setIndex('looplevel', [23], 0);
model.result('pg1').setIndex('looplevel', [1], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'sigma_h_micro');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [36 37], 0);
model.result('pg1').setIndex('looplevel', [26], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [26 27 28 29 30], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result.create('pg3', 'PlotGroup1D');
model.result('pg3').run;
model.result.move('pg3', 1);
model.result('pg3').create('lngr1', 'LineGraph');
model.result('pg3').run;
model.result('pg3').set('data', 'dset2');
model.result('pg3').run;
model.result.dataset.create('cln1', 'CutLine2D');
model.result.dataset('cln1').set('data', 'dset2');
model.result('pg3').feature('lngr1').set('cutline', 'cln1');
model.result('pg3').feature('lngr1').set('linefirst', [2.499999936844688E-6 0 0]);
model.result('pg3').feature('lngr1').set('linesecond', [2.499999936844688E-6 3.999999975690116E-8 0]);
model.result('pg3').feature('lngr1').set('lineisinit', true);
model.result.dataset('cln1').set('method', 'twopoint');
model.result.dataset('cln1').set('genpoints', [2.5E-6 0; 2.5E-6 4.0E-8]);
model.result('pg3').feature('lngr1').set('cutmode', 'on');
model.result('pg3').feature('lngr1').set('listen', false);
model.result('pg3').feature('lngr1').set('data', 'cln1');
model.result('pg3').feature('lngr1').set('listen', true);
model.result('pg3').feature('lngr1').set('cutmode', false);
model.result('pg3').run;
model.result('pg3').feature('lngr1').set('cutline', 'cln1');
model.result.dataset('cln1').set('method', 'twopoint');
model.result.dataset('cln1').set('genpoints', [2.5E-6 0; 2.5E-6 4.0E-8]);
model.result('pg3').feature('lngr1').set('cutmode', 'on');
model.result('pg3').feature('lngr1').set('inputmode', 'linesecond');
model.result('pg3').feature('lngr1').set('linesecond', [4.788321348314639E-6 9.963514457922429E-9 -1]);
model.result.dataset('cln1').set('method', 'twopoint');
model.result.dataset('cln1').set('genpoints', [2.5E-6 0; 4.78832E-6 9.963510000000002E-9]);
model.result('pg3').feature('lngr1').set('inputmode', 'linefirst');
model.result('pg3').feature('lngr1').set('linefirst', [-3.153921568355145E-11 3.995406672174795E-8 -1]);
model.result.dataset('cln1').set('method', 'twopoint');
model.result.dataset('cln1').set('genpoints', [-3.15389E-11 3.99541E-8; 4.78832E-6 9.963510000000002E-9]);
model.result('pg3').feature('lngr1').set('inputmode', 'linesecond');
model.result('pg3').feature('lngr1').set('linesecond', [4.999990778742358E-6 3.978736984322495E-8 -1]);
model.result.dataset('cln1').set('method', 'twopoint');
model.result.dataset('cln1').set('genpoints', [-3.15389E-11 3.99541E-8; 5.0E-6 3.97874E-8]);
model.result('pg3').feature('lngr1').set('cutmode', 'off');
model.result('pg3').feature('lngr1').set('expr', 'T_RR');
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('lngr1').set('cutline', 'cln1');
model.result.dataset('cln1').set('method', 'twopoint');
model.result.dataset('cln1').set('genpoints', [-3.15389E-11 3.99541E-8; 5.0E-6 3.97874E-8]);
model.result('pg3').feature('lngr1').set('cutmode', 'off');
model.result('pg3').run;
model.result('pg3').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('surf1').set('expr', 'cs/cs_max_neg');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').set('looplevel', [34]);
model.result('pg2').run;
model.result('pg2').set('allowtableupdate', false);
model.result('pg2').set('xlabel', '');
model.result('pg2').set('ylabel', '');
model.result('pg2').feature('surf1').set('rangeunit', '1');
model.result('pg2').feature('surf1').set('rangecolormin', 0.014389489081455526);
model.result('pg2').feature('surf1').set('rangecolormax', 0.1682702498299943);
model.result('pg2').feature('surf1').set('rangecoloractive', 'off');
model.result('pg2').feature('surf1').set('rangedatamin', 0.014389489081455526);
model.result('pg2').feature('surf1').set('rangedatamax', 0.1682702498299943);
model.result('pg2').feature('surf1').set('rangedataactive', 'off');
model.result('pg2').feature('surf1').set('rangeactualminmax', [0.014389489081455526 0.1682702498299943]);
model.result('pg2').set('allowtableupdate', true);
model.result.table('evl2').