0);
model.component('comp1').physics('g2').feature('cons1').setIndex('constraintType', 'unidirectionalVar', 0);
model.component('comp1').physics('g2').feature('cons1').setIndex('weakConstraints', 0, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics('g2').feature('cons1').setIndex('constraintType', 'symmetricConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics('g2').feature('cons1').setIndex('constraintType', 'unidirectionalConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics('g2').feature('cons1').setIndex('weakConstraints', 1, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics('g2').feature('cons1').setIndex('constraintType', 'unidirectionalVar', 0);
model.component('comp1').physics('g2').feature('cons1').setIndex('constraintType', 'symmetricConstraint', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset1');
model.result('pg8').run;
model.result('pg8').run;
model.result('pg17').run;
model.result('pg17').set('data', 'dset11');
model.result('pg17').setIndex('looplevelinput', 'manual', 2);
model.result('pg17').setIndex('looplevel', [3], 2);
model.result('pg17').setIndex('looplevel', [4], 2);
model.result('pg17').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg17').setIndex('looplevelindices', 50, 0);
model.result('pg17').run;
model.result('pg17').run;
model.result('pg17').run;
model.result('pg17').run;
model.result('pg17').setIndex('looplevelinput', 'all', 0);
model.result('pg17').run;

model.component('comp1').variable('var3').set('epsl_l_1', 'max((0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M),eps^2)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').variable('var3').set('epsl_s_1', 'min((((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M),1-eps^2)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').variable('var3').set('epsl_l_1', 'max(epsl_l,eps^2)');
model.component('comp1').variable('var3').set('epsl_s_1', 'min(0.92-epsl_l,1-eps^2)');

model.result('pg18').run;

model.param.set('Dl', '4e-11[m^2/s]');

model.result('pg8').run;
model.result('pg8').set('data', 'dset11');
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'manual', 2);
model.result('pg8').setIndex('looplevel', [4], 2);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg23').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [3], 2);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [2], 2);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg19').run;

model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+1E7[Pa]', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset1');
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons2').active(true);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg8').run;
model.result('pg14').run;
model.result('pg8').run;
model.result('pg1').run;
model.result('pg17').run;
model.result('pg19').run;

model.param.set('M', '0.1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg8').run;

model.component('comp1').physics('dode').prop('ShapeProperty').set('order', 1);
model.component('comp1').physics('dode').prop('ShapeProperty').set('shapeFunctionType', 'shhwdisc');
model.component('comp1').physics('g2').feature('cons2').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);
model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+1E5[Pa]', 0);
model.component('comp1').physics('g2').feature('cons1').setIndex('constraintType', 'unidirectionalVar', 0);

model.sol('sol1').feature('t1').feature('fc1').set('ntolfact', 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('lngr1').set('expr', '(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');
model.result('pg8').run;
model.result('pg8').run;

model.component('comp1').variable('var3').set('epsl_l_1', 'max((0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M),eps^2)');
model.component('comp1').variable('var3').remove('a_v_1');
model.component('comp1').variable('var3').remove('epsl_s_1');
model.component('comp1').variable('var4').set('ks_eff', 'ks*epsl_s^1.5');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').physics.create('c', 'CoefficientFormPDE', {'u7'});

model.study('std1').feature('time').setSolveFor('/physics/c', true);
model.study('std2').feature('time').setSolveFor('/physics/c', true);

model.component('comp1').physics('dode').active(false);
model.component('comp1').physics('c').field('dimensionless').field('epsl_l');
model.component('comp1').physics('c').field('dimensionless').component(1, 'u7');
model.component('comp1').physics.remove('dode');
model.component('comp1').physics('c').field('dimensionless').component(1, 'epsl_l');
model.component('comp1').physics('c').feature('cfeq1').setIndex('c', 0, 0);
model.component('comp1').physics('c').feature('cfeq1').setIndex('f', '(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);
model.component('comp1').physics('c').feature('cfeq1').setIndex('da', 0, 0);
model.component('comp1').physics('c').feature('cfeq1').setIndex('a', 1, 0);
model.component('comp1').physics('c').feature('init1').set('epsl_l', 'epsl_l_0');

model.component('comp1').variable('var3').set('epsl_l_1', 'max(epsl_l,eps^2)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('lngr1').set('expr', 'epsl_l');
model.result('pg8').run;

model.component('comp1').variable('var3').set('epsl_l_1', 'max((0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M),eps^2)');
model.component('comp1').variable('var3').set('epsl_lt', '1');

model.component('comp1').physics.remove('c');

model.component('comp1').variable('var3').set('epsl_lt', 'd((0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M))');
model.component('comp1').variable('var3').set('epsl_l', '(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');
model.component('comp1').variable('var3').set('epsl_lt', 'd(epsl_l,t)');
model.component('comp1').variable('var3').set('epsl_l_1', 'max(epsl_l,eps^2)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').variable('var3').set('epsl_lt', 'pd(epsl_l,t)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').variable('var3').set('epsl_l', '0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M');
model.component('comp1').variable('var3').set('epsl_lt', '(j_react_micro/F_const*a_v*omega*det_F_M-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0*det_F_M_dt)/det_F_M^2');

model.label('Electrode_model_with_3_electrode.mph');

model.result('pg19').run;
model.result('pg8').run;

model.component('comp1').variable('var3').remove('epsl_l');
model.component('comp1').variable('var3').remove('epsl_lt');

model.component('comp1').physics.create('dode', 'DomainODE', 'geom2');
model.component('comp1').physics('dode').field.label([native2unicode(hex2dec({'52' '17'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode') ]);
model.component('comp1').physics('dode').field('dimensionless').component({'epsl_l'});
model.component('comp1').physics('dode').prop.label([native2unicode(hex2dec({'52' '17'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode') ]);
model.component('comp1').physics('dode').feature.label([native2unicode(hex2dec({'52' '17'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode') ]);
model.component('comp1').physics('dode').feature.create('aleq1', 'AlgebraicEquation', 1);
model.component('comp1').physics('dode').feature('dode1').set('f', 0);
model.component('comp1').physics('dode').feature('dode1').set('da', 0);
model.component('comp1').physics('dode').feature('dode1').feature.label([native2unicode(hex2dec({'52' '17'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode') ]);
model.component('comp1').physics('dode').feature('init1').set('epsl_l', 'epsl_l_0');
model.component('comp1').physics('dode').feature('init1').feature.label([native2unicode(hex2dec({'52' '17'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode') ]);
model.component('comp1').physics('dode').feature('aleq1').set('f', 'epsl_l-(1-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');
model.component('comp1').physics('dode').feature('aleq1').feature.label([native2unicode(hex2dec({'52' '17'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode') ]);

model.init.remove('init5');

model.coeff.remove('coeff7');

model.shape.remove('shape11');

model.field.remove('field11');

model.shape.create('shape11', 'spatial2');
model.shape('shape11').valuetype('complex');
model.shape('shape11').feature.create('shfun1', 'ShDisc');
model.shape('shape11').feature('shfun1').set('basename', 'comp1.epsl_l');
model.shape('shape11').feature('shfun1').set('order', 2);
model.shape('shape11').feature('shfun1').set('mdim', 1);

model.field.create('field11', 'epsl_l');
model.field('field11').shape({'shape11'});

model.init.create('init5');
model.init('init5').set('root.comp1.epsl_l', 'epsl_l_0');
model.init('init5').set('root.comp1.epsl_lt', '0');
model.init('init5').selection.geom('geom2', 1);
model.init('init5').selection.set([1]);
model.init('init5').selection.inherit(false);
model.init('init5').selection.extraDim('');

model.coeff.create('coeff7', {'field11'});
model.coeff('coeff7').intRule({'intrule2'});
model.coeff('coeff7').create('coeff1');
model.coeff('coeff7').feature('coeff1').set('f', {'epsl_l-(1-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)'});
model.coeff('coeff7').feature('coeff1').selection.geom('geom2', 1);
model.coeff('coeff7').feature('coeff1').selection.set([1]);
model.coeff('coeff7').feature('coeff1').selection.inherit(false);

model.component('comp1').physics('dode').feature('aleq1').setIndex('f', 'epsl_l-(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);

model.result('pg8').run;

model.component('comp1').variable('var3').set('epsl_l_2', '(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');

model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;

model.param.set('M', '1');

model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('lngr1').set('expr', 'epsl_l_2');
model.result('pg8').run;
model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg19').run;
model.result('pg8').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset1');
model.result('pg18').run;
model.result('pg25').run;
model.result('pg32').run;
model.result('pg32').run;
model.result('pg32').run;
model.result('pg32').run;
model.result('pg32').run;

model.param.set('epsl_s_0', '1-epsl_l_0');

model.component('comp1').physics('dode').feature('aleq1').setIndex('f', 'epsl_l-(1-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);

model.component('comp1').variable('var3').set('epsl_l_2', '(1-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg20').run;
model.result('pg20').run;
model.result('pg19').run;
model.result('pg17').run;
model.result('pg17').set('data', 'dset1');
model.result('pg17').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg19').run;
model.result('pg8').run;

model.study('std2').feature('time').set('solnum', 101);
model.study('std2').feature('time').set('notsolnum', 101);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg19').run;

model.func('int2').setIndex('table', '0.0316998500247530', 9, 1);
model.func('int2').set('extrap', 'interior');
model.func('int2').setIndex('table', 0, 10, 0);
model.func('int2').setIndex('table', 0.01, 10, 1);
model.func('int2').set('extrap', 'const');

model.result('pg8').run;
model.result('pg8').set('data', 'dset11');
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'manual', 2);
model.result('pg8').setIndex('looplevel', [4], 2);
model.result('pg8').run;

model.param.remove('kr_neg');

model.study('std2').feature('param').setIndex('plistarr', '0.05 0.5 1 2 5', 0);
model.study('std2').feature('param').setIndex('plistarr', '0.05 0.5 1 2 5 10', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg19').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [6], 2);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [5], 2);
model.result('pg8').run;
model.result('pg34').run;
model.result('pg17').run;
model.result('pg17').set('data', 'dset11');
model.result('pg17').setIndex('looplevelinput', 'manual', 2);
model.result('pg17').setIndex('looplevel', [2], 2);
model.result('pg17').setIndex('looplevel', [6], 2);
model.result('pg17').run;
model.result('pg17').run;
model.result('pg17').run;
model.result('pg17').setIndex('looplevel', [5], 2);
model.result('pg17').run;
model.result('pg17').setIndex('looplevel', [4], 2);
model.result('pg17').run;

model.func.create('an2', 'Analytic');
model.func('an2').set('funcname', 'Dl_an1');
model.func('an2').set('expr', 'k_Dl*(1.137E05+5056*(T/1[K]-273.15)-(1.055E+05)*(c/1000[mol/m^3])+81.1*(T/1[K]-273.15)^2-4226*(T/1[K]-273.15)*(c/1000[mol/m^3])+5.036E04*(c/1000[mol/m^3])^2+0.4504*(T/1[K]-273.15)^3-47.75*(T/1[K]-273.15)^2*(c/1000[mol/m^3])+1546*(T/1[K]-273.15)*(c/1000[mol/m^3])^2-1.665E04*(c/1000[mol/m^3])^3-0.1066*(T/1[K]-273.15)^3*(c/1000[mol/m^3])+8.437*(T/1[K]-273.15)^2*(c/1000[mol/m^3])^2-237.3*(T/1[K]-273.15)*(c/1000[mol/m^3])^3+2437*(c/1000[mol/m^3])^4)*1e-15[m^2/s]');
model.func('an2').set('args', 'c');

model.param.set('k_Dl', '1');

model.func('an2').setIndex('argunit', 'mol/m^3', 0);
model.func('an2').setIndex('plotargs', 10, 0, 1);
model.func('an2').setIndex('plotargs', 10000, 0, 2);
model.func('an2').set('periodic', false);
model.func.remove('an2');
model.func.create('int4', 'Interpolation');
model.func('int4').set('funcname', 'Dl_int1');
model.func('int4').setIndex('table', 0.025, 0, 0);
model.func('int4').setIndex('table', '2.93E-06', 0, 1);
model.func('int4').setIndex('table', 0.05, 1, 0);
model.func('int4').setIndex('table', '2.87E-06', 1, 1);
model.func('int4').setIndex('table', 0.1, 2, 0);
model.func('int4').setIndex('table', '2.75E-06', 2, 1);
model.func('int4').setIndex('table', 0.15, 3, 0);
model.func('int4').setIndex('table', '2.63E-06', 3, 1);
model.func('int4').setIndex('table', 0.2, 4, 0);
model.func('int4').setIndex('table', '2.52E-06', 4, 1);
model.func('int4').setIndex('table', 0.25, 5, 0);
model.func('int4').setIndex('table', '2.42E-06', 5, 1);
model.func('int4').setIndex('table', 0.3, 6, 0);
model.func('int4').setIndex('table', '2.33E-06', 6, 1);
model.func('int4').setIndex('table', 0.35, 7, 0);
model.func('int4').setIndex('table', '2.24E-06', 7, 1);
model.func('int4').setIndex('table', 0.4, 8, 0);
model.func('int4').setIndex('table', '2.15E-06', 8, 1);
model.func('int4').setIndex('table', 0.45, 9, 0);
model.func('int4').setIndex('table', '2.07E-06', 9, 1);
model.func('int4').setIndex('table', 0.5, 10, 0);
model.func('int4').setIndex('table', '2.00E-06', 10, 1);
model.func('int4').setIndex('table', 0.55, 11, 0);
model.func('int4').setIndex('table', '1.92E-06', 11, 1);
model.func('int4').setIndex('table', 0.6, 12, 0);
model.func('int4').setIndex('table', '1.85E-06', 12, 1);
model.func('int4').setIndex('table', 0.65, 13, 0);
model.func('int4').setIndex('table', '1.78E-06', 13, 1);
model.func('int4').setIndex('table', 0.7, 14, 0);
model.func('int4').setIndex('table', '1.71E-06', 14, 1);
model.func('int4').setIndex('table', 0.75, 15, 0);
model.func('int4').setIndex('table', '1.64E-06', 15, 1);
model.func('int4').setIndex('table', 0.8, 16, 0);
model.func('int4').setIndex('table', '1.58E-06', 16, 1);
model.func('int4').setIndex('table', 0.85, 17, 0);
model.func('int4').setIndex('table', '1.51E-06', 17, 1);
model.func('int4').setIndex('table', 0.9, 18, 0);
model.func('int4').setIndex('table', '1.45E-06', 18, 1);
model.func('int4').setIndex('table', 0.95, 19, 0);
model.func('int4').setIndex('table', '1.39E-06', 19, 1);
model.func('int4').setIndex('table', 1, 20, 0);
model.func('int4').setIndex('table', '1.33E-06', 20, 1);
model.func('int4').setIndex('table', 1.05, 21, 0);
model.func('int4').setIndex('table', '1.27E-06', 21, 1);
model.func('int4').setIndex('table', 1.1, 22, 0);
model.func('int4').setIndex('table', '1.22E-06', 22, 1);
model.func('int4').setIndex('table', 1.15, 23, 0);
model.func('int4').setIndex('table', '1.16E-06', 23, 1);
model.func('int4').setIndex('table', 1.2, 24, 0);
model.func('int4').setIndex('table', '1.11E-06', 24, 1);
model.func('int4').setIndex('table', 1.25, 25, 0);
model.func('int4').setIndex('table', '1.05E-06', 25, 1);
model.func('int4').setIndex('table', 1.3, 26, 0);
model.func('int4').setIndex('table', '1.00E-06', 26, 1);
model.func('int4').setIndex('table', 1.35, 27, 0);
model.func('int4').setIndex('table', '9.54E-07', 27, 1);
model.func('int4').setIndex('table', 1.4, 28, 0);
model.func('int4').setIndex('table', '9.07E-07', 28, 1);
model.func('int4').setIndex('table', 1.45, 29, 0);
model.func('int4').setIndex('table', '8.62E-07', 29, 1);
model.func('int4').setIndex('table', 1.5, 30, 0);
model.func('int4').setIndex('table', '8.18E-07', 30, 1);
model.func('int4').setIndex('table', 1.55, 31, 0);
model.func('int4').setIndex('table', '7.76E-07', 31, 1);
model.func('int4').setIndex('table', 1.6, 32, 0);
model.func('int4').setIndex('table', '7.35E-07', 32, 1);
model.func('int4').setIndex('table', 1.65, 33, 0);
model.func('int4').setIndex('table', '6.96E-07', 33, 1);
model.func('int4').setIndex('table', 1.7, 34, 0);
model.func('int4').setIndex('table', '6.59E-07', 34, 1);
model.func('int4').setIndex('table', 1.75, 35, 0);
model.func('int4').setIndex('table', '6.23E-07', 35, 1);
model.func('int4').setIndex('table', 2, 36, 0);
model.func('int4').setIndex('table', '4.63E-07', 36, 1);
model.func('int4').setIndex('table', 2.5, 37, 0);
model.func('int4').setIndex('table', '2.22E-07', 37, 1);
model.func('int4').setIndex('table', 2.75, 38, 0);
model.func('int4').setIndex('table', '1.40E-07', 38, 1);
model.func('int4').setIndex('table', 3, 39, 0);
model.func('int4').setIndex('table', '8.02E-08', 39, 1);
model.func('int4').setIndex('table', 0.025, 0, 0);
model.func('int4').setIndex('table', '2.93E-06', 0, 1);
model.func('int4').setIndex('table', 0.05, 1, 0);
model.func('int4').setIndex('table', '2.87E-06', 1, 1);
model.func('int4').setIndex('table', 0.1, 2, 0);
model.func('int4').setIndex('table', '2.75E-06', 2, 1);
model.func('int4').setIndex('table', 0.15, 3, 0);
model.func('int4').setIndex('table', '2.63E-06', 3, 1);
model.func('int4').setIndex('table', 0.2, 4, 0);
model.func('int4').setIndex('table', '2.52E-06', 4, 1);
model.func('int4').setIndex('table', 0.25, 5, 0);
model.func('int4').setIndex('table', '2.42E-06', 5, 1);
model.func('int4').setIndex('table', 0.3, 6, 0);
model.func('int4').setIndex('table', '2.33E-06', 6, 1);
model.func('int4').setIndex('table', 0.35, 7, 0);
model.func('int4').setIndex('table', '2.24E-06', 7, 1);
model.func('int4').setIndex('table', 0.4, 8, 0);
model.func('int4').setIndex('table', '2.15E-06', 8, 1);
model.func('int4').setIndex('table', 0.45, 9, 0);
model.func('int4').setIndex('table', '2.07E-06', 9, 1);
model.func('int4').setIndex('table', 0.5, 10, 0);
model.func('int4').setIndex('table', '2.00E-06', 10, 1);
model.func('int4').setIndex('table', 0.55, 11, 0);
model.func('int4').setIndex('table', '1.92E-06', 11, 1);
model.func('int4').setIndex('table', 0.6, 12, 0);
model.func('int4').setIndex('table', '1.85E-06', 12, 1);
model.func('int4').setIndex('table', 0.65, 13, 0);
model.func('int4').setIndex('table', '1.78E-06', 13, 1);
model.func('int4').setIndex('table', 0.7, 14, 0);
model.func('int4').setIndex('table', '1.71E-06', 14, 1);
model.func('int4').setIndex('table', 0.75, 15, 0);
model.func('int4').setIndex('table', '1.64E-06', 15, 1);
model.func('int4').setIndex('table', 0.8, 16, 0);
model.func('int4').setIndex('table', '1.58E-06', 16, 1);
model.func('int4').setIndex('table', 0.85, 17, 0);
model.func('int4').setIndex('table', '1.51E-06', 17, 1);
model.func('int4').setIndex('table', 0.9, 18, 0);
model.func('int4').setIndex('table', '1.45E-06', 18, 1);
model.func('int4').setIndex('table', 0.95, 19, 0);
model.func('int4').setIndex('table', '1.39E-06', 19, 1);
model.func('int4').setIndex('table', 1, 20, 0);
model.func('int4').setIndex('table', '1.33E-06', 20, 1);
model.func('int4').setIndex('table', 1.05, 21, 0);
model.func('int4').setIndex('table', '1.27E-06', 21, 1);
model.func('int4').setIndex('table', 1.1, 22, 0);
model.func('int4').setIndex('table', '1.22E-06', 22, 1);
model.func('int4').setIndex('table', 1.15, 23, 0);
model.func('int4').setIndex('table', '1.16E-06', 23, 1);
model.func('int4').setIndex('table', 1.2, 24, 0);
model.func('int4').setIndex('table', '1.11E-06', 24, 1);
model.func('int4').setIndex('table', 1.25, 25, 0);
model.func('int4').setIndex('table', '1.05E-06', 25, 1);
model.func('int4').setIndex('table', 1.3, 26, 0);
model.func('int4').setIndex('table', '1.00E-06', 26, 1);
model.func('int4').setIndex('table', 1.35, 27, 0);
model.func('int4').setIndex('table', '9.54E-07', 27, 1);
model.func('int4').setIndex('table', 1.4, 28, 0);
model.func('int4').setIndex('table', '9.07E-07', 28, 1);
model.func('int4').setIndex('table', 1.45, 29, 0);
model.func('int4').setIndex('table', '8.62E-07', 29, 1);
model.func('int4').setIndex('table', 1.5, 30, 0);
model.func('int4').setIndex('table', '8.18E-07', 30, 1);
model.func('int4').setIndex('table', 1.55, 31, 0);
model.func('int4').setIndex('table', '7.76E-07', 31, 1);
model.func('int4').setIndex('table', 1.6, 32, 0);
model.func('int4').setIndex('table', '7.35E-07', 32, 1);
model.func('int4').setIndex('table', 1.65, 33, 0);
model.func('int4').setIndex('table', '6.96E-07', 33, 1);
model.func('int4').setIndex('table', 1.7, 34, 0);
model.func('int4').setIndex('table', '6.59E-07', 34, 1);
model.func('int4').setIndex('table', 1.75, 35, 0);
model.func('int4').setIndex('table', '6.23E-07', 35, 1);
model.func('int4').setIndex('table', 2, 36, 0);
model.func('int4').setIndex('table', '4.63E-07', 36, 1);
model.func('int4').setIndex('table', 2.5, 37, 0);
model.func('int4').setIndex('table', '2.22E-07', 37, 1);
model.func('int4').setIndex('table', 2.75, 38, 0);
model.func('int4').setIndex('table', '1.40E-07', 38, 1);
model.func('int4').setIndex('table', 3, 39, 0);
model.func('int4').setIndex('table', '8.02E-08', 39, 1);
model.func('int4').set('table', {});
model.func('int4').setIndex('table', 25, 0, 0);
model.func('int4').setIndex('table', 2.93E-10, 0, 1);
model.func('int4').setIndex('table', 50, 1, 0);
model.func('int4').setIndex('table', 2.87E-10, 1, 1);
model.func('int4').setIndex('table', 100, 2, 0);
model.func('int4').setIndex('table', 2.75E-10, 2, 1);
model.func('int4').setIndex('table', 150, 3, 0);
model.func('int4').setIndex('table', 2.63E-10, 3, 1);
model.func('int4').setIndex('table', 200, 4, 0);
model.func('int4').setIndex('table', 2.52E-10, 4, 1);
model.func('int4').setIndex('table', 250, 5, 0);
model.func('int4').setIndex('table', 2.42E-10, 5, 1);
model.func('int4').setIndex('table', 300, 6, 0);
model.func('int4').setIndex('table', 2.33E-10, 6, 1);
model.func('int4').setIndex('table', 350, 7, 0);
model.func('int4').setIndex('table', 2.24E-10, 7, 1);
model.func('int4').setIndex('table', 400, 8, 0);
model.func('int4').setIndex('table', 2.15E-10, 8, 1);
model.func('int4').setIndex('table', 450, 9, 0);
model.func('int4').setIndex('table', 2.07E-10, 9, 1);
model.func('int4').setIndex('table', 500, 10, 0);
model.func('int4').setIndex('table', '2.00E-10', 10, 1);
model.func('int4').setIndex('table', 550, 11, 0);
model.func('int4').setIndex('table', 1.92E-10, 11, 1);
model.func('int4').setIndex('table', 600, 12, 0);
model.func('int4').setIndex('table', 1.85E-10, 12, 1);
model.func('int4').setIndex('table', 650, 13, 0);
model.func('int4').setIndex('table', 1.78E-10, 13, 1);
model.func('int4').setIndex('table', 700, 14, 0);
model.func('int4').setIndex('table', 1.71E-10, 14, 1);
model.func('int4').setIndex('table', 750, 15, 0);
model.func('int4').setIndex('table', 1.64E-10, 15, 1);
model.func('int4').setIndex('table', 800, 16, 0);
model.func('int4').setIndex('table', 1.58E-10, 16, 1);
model.func('int4').setIndex('table', 850, 17, 0);
model.func('int4').setIndex('table', 1.51E-10, 17, 1);
model.func('int4').setIndex('table', 900, 18, 0);
model.func('int4').setIndex('table', 1.45E-10, 18, 1);
model.func('int4').setIndex('table', 950, 19, 0);
model.func('int4').setIndex('table', 1.39E-10, 19, 1);
model.func('int4').setIndex('table', 1000, 20, 0);
model.func('int4').setIndex('table', 1.33E-10, 20, 1);
model.func('int4').setIndex('table', 1050, 21, 0);
model.func('int4').setIndex('table', 1.27E-10, 21, 1);
model.func('int4').setIndex('table', 1100, 22, 0);
model.func('int4').setIndex('table', 1.22E-10, 22, 1);
model.func('int4').setIndex('table', 1150, 23, 0);
model.func('int4').setIndex('table', 1.16E-10, 23, 1);
model.func('int4').setIndex('table', 1200, 24, 0);
model.func('int4').setIndex('table', 1.11E-10, 24, 1);
model.func('int4').setIndex('table', 1250, 25, 0);
model.func('int4').setIndex('table', 1.05E-10, 25, 1);
model.func('int4').setIndex('table', 1300, 26, 0);
model.func('int4').setIndex('table', '1.00E-10', 26, 1);
model.func('int4').setIndex('table', 1350, 27, 0);
model.func('int4').setIndex('table', 9.54E-11, 27, 1);
model.func('int4').setIndex('table', 1400, 28, 0);
model.func('int4').setIndex('table', 9.07E-11, 28, 1);
model.func('int4').setIndex('table', 1450, 29, 0);
model.func('int4').setIndex('table', 8.62E-11, 29, 1);
model.func('int4').setIndex('table', 1500, 30, 0);
model.func('int4').setIndex('table', 8.18E-11, 30, 1);
model.func('int4').setIndex('table', 1550, 31, 0);
model.func('int4').setIndex('table', 7.76E-11, 31, 1);
model.func('int4').setIndex('table', 1600, 32, 0);
model.func('int4').setIndex('table', 7.35E-11, 32, 1);
model.func('int4').setIndex('table', 1650, 33, 0);
model.func('int4').setIndex('table', 6.96E-11, 33, 1);
model.func('int4').setIndex('table', 1700, 34, 0);
model.func('int4').setIndex('table', 6.59E-11, 34, 1);
model.func('int4').setIndex('table', 1750, 35, 0);
model.func('int4').setIndex('table', 6.23E-11, 35, 1);
model.func('int4').setIndex('table', 2000, 36, 0);
model.func('int4').setIndex('table', 4.63E-11, 36, 1);
model.func('int4').setIndex('table', 2500, 37, 0);
model.func('int4').setIndex('table', 2.22E-11, 37, 1);
model.func('int4').setIndex('table', 2750, 38, 0);
model.func('int4').setIndex('table', '1.40E-11', 38, 1);
model.func('int4').setIndex('table', 3000, 39, 0);
model.func('int4').setIndex('table', 8.02E-12, 39, 1);
model.func('int4').setIndex('table', 25, 0, 0);
model.func('int4').setIndex('table', 2.93E-10, 0, 1);
model.func('int4').setIndex('table', 50, 1, 0);
model.func('int4').setIndex('table', 2.87E-10, 1, 1);
model.func('int4').setIndex('table', 100, 2, 0);
model.func('int4').setIndex('table', 2.75E-10, 2, 1);
model.func('int4').setIndex('table', 150, 3, 0);
model.func('int4').setIndex('table', 2.63E-10, 3, 1);
model.func('int4').setIndex('table', 200, 4, 0);
model.func('int4').setIndex('table', 2.52E-10, 4, 1);
model.func('int4').setIndex('table', 250, 5, 0);
model.func('int4').setIndex('table', 2.42E-10, 5, 1);
model.func('int4').setIndex('table', 300, 6, 0);
model.func('int4').setIndex('table', 2.33E-10, 6, 1);
model.func('int4').setIndex('table', 350, 7, 0);
model.func('int4').setIndex('table', 2.24E-10, 7, 1);
model.func('int4').setIndex('table', 400, 8, 0);
model.func('int4').setIndex('table', 2.15E-10, 8, 1);
model.func('int4').setIndex('table', 450, 9, 0);
model.func('int4').setIndex('table', 2.07E-10, 9, 1);
model.func('int4').setIndex('table', 500, 10, 0);
model.func('int4').setIndex('table', '2.00E-10', 10, 1);
model.func('int4').setIndex('table', 550, 11, 0);
model.func('int4').setIndex('table', 1.92E-10, 11, 1);
model.func('int4').setIndex('table', 600, 12, 0);
model.func('int4').setIndex('table', 1.85E-10, 12, 1);
model.func('int4').setIndex('table', 650, 13, 0);
model.func('int4').setIndex('table', 1.78E-10, 13, 1);
model.func('int4').setIndex('table', 700, 14, 0);
model.func('int4').setIndex('table', 1.71E-10, 14, 1);
model.func('int4').setIndex('table', 750, 15, 0);
model.func('int4').setIndex('table', 1.64E-10, 15, 1);
model.func('int4').setIndex('table', 800, 16, 0);
model.func('int4').setIndex('table', 1.58E-10, 16, 1);
model.func('int4').setIndex('table', 850, 17, 0);
model.func('int4').setIndex('table', 1.51E-10, 17, 1);
model.func('int4').setIndex('table', 900, 18, 0);
model.func('int4').setIndex('table', 1.45E-10, 18, 1);
model.func('int4').setIndex('table', 950, 19, 0);
model.func('int4').setIndex('table', 1.39E-10, 19, 1);
model.func('int4').setIndex('table', 1000, 20, 0);
model.func('int4').setIndex('table', 1.33E-10, 20, 1);
model.func('int4').setIndex('table', 1050, 21, 0);
model.func('int4').setIndex('table', 1.27E-10, 21, 1);
model.func('int4').setIndex('table', 1100, 22, 0);
model.func('int4').setIndex('table', 1.22E-10, 22, 1);
model.func('int4').setIndex('table', 1150, 23, 0);
model.func('int4').setIndex('table', 1.16E-10, 23, 1);
model.func('int4').setIndex('table', 1200, 24, 0);
model.func('int4').setIndex('table', 1.11E-10, 24, 1);
model.func('int4').setIndex('table', 1250, 25, 0);
model.func('int4').setIndex('table', 1.05E-10, 25, 1);
model.func('int4').setIndex('table', 1300, 26, 0);
model.func('int4').setIndex('table', '1.00E-10', 26, 1);
model.func('int4').setIndex('table', 1350, 27, 0);
model.func('int4').setIndex('table', 9.54E-11, 27, 1);
model.func('int4').setIndex('table', 1400, 28, 0);
model.func('int4').setIndex('table', 9.07E-11, 28, 1);
model.func('int4').setIndex('table', 1450, 29, 0);
model.func('int4').setIndex('table', 8.62E-11, 29, 1);
model.func('int4').setIndex('table', 1500, 30, 0);
model.func('int4').setIndex('table', 8.18E-11, 30, 1);
model.func('int4').setIndex('table', 1550, 31, 0);
model.func('int4').setIndex('table', 7.76E-11, 31, 1);
model.func('int4').setIndex('table', 1600, 32, 0);
model.func('int4').setIndex('table', 7.35E-11, 32, 1);
model.func('int4').setIndex('table', 1650, 33, 0);
model.func('int4').setIndex('table', 6.96E-11, 33, 1);
model.func('int4').setIndex('table', 1700, 34, 0);
model.func('int4').setIndex('table', 6.59E-11, 34, 1);
model.func('int4').setIndex('table', 1750, 35, 0);
model.func('int4').setIndex('table', 6.23E-11, 35, 1);
model.func('int4').setIndex('table', 2000, 36, 0);
model.func('int4').setIndex('table', 4.63E-11, 36, 1);
model.func('int4').setIndex('table', 2500, 37, 0);
model.func('int4').setIndex('table', 2.22E-11, 37, 1);
model.func('int4').setIndex('table', 2750, 38, 0);
model.func('int4').setIndex('table', '1.40E-11', 38, 1);
model.func('int4').setIndex('table', 3000, 39, 0);
model.func('int4').setIndex('table', 8.02E-12, 39, 1);
model.func('int4').set('extrap', 'interior');
model.func.create('int5', 'Interpolation');
model.func('int5').set('funcname', 'kl_int1');
model.func('int5').setIndex('table', 1, 0, 0);
model.func('int5').setIndex('table', 0.5135, 0, 1);
model.func('int5').setIndex('table', 100.967, 1, 0);
model.func('int5').setIndex('table', 1.79149, 1, 1);
model.func('int5').setIndex('table', 200.933, 2, 0);
model.func('int5').setIndex('table', 3.29243, 2, 1);
model.func('int5').setIndex('table', 300.9, 3, 0);
model.func('int5').setIndex('table', 4.53959, 3, 1);
model.func('int5').setIndex('table', 400.867, 4, 0);
model.func('int5').setIndex('table', 5.5794, 4, 1);
model.func('int5').setIndex('table', 500.833, 5, 0);
model.func('int5').setIndex('table', 6.4289, 5, 1);
model.func('int5').setIndex('table', 600.8, 6, 0);
model.func('int5').setIndex('table', 7.11271, 6, 1);
model.func('int5').setIndex('table', 700.767, 7, 0);
model.func('int5').setIndex('table', 7.62578, 7, 1);
model.func('int5').setIndex('table', 800.733, 8, 0);
model.func('int5').setIndex('table', 7.98895, 8, 1);
model.func('int5').setIndex('table', 900.7, 9, 0);
model.func('int5').setIndex('table', 8.19762, 9, 1);
model.func('int5').setIndex('table', 1000.67, 10, 0);
model.func('int5').setIndex('table', 8.27217, 10, 1);
model.func('int5').setIndex('table', 1100.63, 11, 0);
model.func('int5').setIndex('table', 8.22477, 11, 1);
model.func('int5').setIndex('table', 1200.6, 12, 0);
model.func('int5').setIndex('table', 8.06652, 12, 1);
model.func('int5').setIndex('table', 1300.57, 13, 0);
model.func('int5').setIndex('table', 7.81595, 13, 1);
model.func('int5').setIndex('table', 1400.53, 14, 0);
model.func('int5').setIndex('table', 7.4986, 14, 1);
model.func('int5').setIndex('table', 1500.5, 15, 0);
model.func('int5').setIndex('table', 7.12497, 15, 1);
model.func('int5').setIndex('table', 1600.47, 16, 0);
model.func('int5').setIndex('table', 6.71384, 16, 1);
model.func('int5').setIndex('table', 1700.43, 17, 0);
model.func('int5').setIndex('table', 6.26997, 17, 1);
model.func('int5').setIndex('table', 1800.4, 18, 0);
model.func('int5').setIndex('table', 5.81167, 18, 1);
model.func('int5').setIndex('table', 1900.37, 19, 0);
model.func('int5').setIndex('table', 5.33884, 19, 1);
model.func('int5').setIndex('table', 2000.33, 20, 0);
model.func('int5').setIndex('table', 4.86637, 20, 1);
model.func('int5').setIndex('table', 2100.3, 21, 0);
model.func('int5').setIndex('table', 4.38529, 21, 1);
model.func('int5').setIndex('table', 2200.27, 22, 0);
model.func('int5').setIndex('table', 3.91953, 22, 1);
model.func('int5').setIndex('table', 2300.23, 23, 0);
model.func('int5').setIndex('table', 3.46842, 23, 1);
model.func('int5').setIndex('table', 2400.2, 24, 0);
model.func('int5').setIndex('table', 3.03212, 24, 1);
model.func('int5').setIndex('table', 2500.17, 25, 0);
model.func('int5').setIndex('table', 2.62169, 25, 1);
model.func('int5').setIndex('table', 2600.13, 26, 0);
model.func('int5').setIndex('table', 2.23749, 26, 1);
model.func('int5').setIndex('table', 2700.1, 27, 0);
model.func('int5').setIndex('table', 1.87683, 27, 1);
model.func('int5').setIndex('table', 2800.07, 28, 0);
model.func('int5').setIndex('table', 1.63572, 28, 1);
model.func('int5').setIndex('table', 2900.03, 29, 0);
model.func('int5').setIndex('table', 1.31616, 29, 1);
model.func('int5').setIndex('table', 3000, 30, 0);
model.func('int5').setIndex('table', 1.04034, 30, 1);
model.func('int5').setIndex('table', 1, 0, 0);
model.func('int5').setIndex('table', 0.5135, 0, 1);
model.func('int5').setIndex('table', 100.967, 1, 0);
model.func('int5').setIndex('table', 1.79149, 1, 1);
model.func('int5').setIndex('table', 200.933, 2, 0);
model.func('int5').setIndex('table', 3.29243, 2, 1);
model.func('int5').setIndex('table', 300.9, 3, 0);
model.func('int5').setIndex('table', 4.53959, 3, 1);
model.func('int5').setIndex('table', 400.867, 4, 0);
model.func('int5').setIndex('table', 5.5794, 4, 1);
model.func('int5').setIndex('table', 500.833, 5, 0);
model.func('int5').setIndex('table', 6.4289, 5, 1);
model.func('int5').setIndex('table', 600.8, 6, 0);
model.func('int5').setIndex('table', 7.11271, 6, 1);
model.func('int5').setIndex('table', 700.767, 7, 0);
model.func('int5').setIndex('table', 7.62578, 7, 1);
model.func('int5').setIndex('table', 800.733, 8, 0);
model.func('int5').setIndex('table', 7.98895, 8, 1);
model.func('int5').setIndex('table', 900.7, 9, 0);
model.func('int5').setIndex('table', 8.19762, 9, 1);
model.func('int5').setIndex('table', 1000.67, 10, 0);
model.func('int5').setIndex('table', 8.27217, 10, 1);
model.func('int5').setIndex('table', 1100.63, 11, 0);
model.func('int5').setIndex('table', 8.22477, 11, 1);
model.func('int5').setIndex('table', 1200.6, 12, 0);
model.func('int5').setIndex('table', 8.06652, 12, 1);
model.func('int5').setIndex('table', 1300.57, 13, 0);
model.func('int5').setIndex('table', 7.81595, 13, 1);
model.func('int5').setIndex('table', 1400.53, 14, 0);
model.func('int5').setIndex('table', 7.4986, 14, 1);
model.func('int5').setIndex('table', 1500.5, 15, 0);
model.func('int5').setIndex('table', 7.12497, 15, 1);
model.func('int5').setIndex('table', 1600.47, 16, 0);
model.func('int5').setIndex('table', 6.71384, 16, 1);
model.func('int5').setIndex('table', 1700.43, 17, 0);
model.func('int5').setIndex('table', 6.26997, 17, 1);
model.func('int5').setIndex('table', 1800.4, 18, 0);
model.func('int5').setIndex('table', 5.81167, 18, 1);
model.func('int5').setIndex('table', 1900.37, 19, 0);
model.func('int5').setIndex('table', 5.33884, 19, 1);
model.func('int5').setIndex('table', 2000.33, 20, 0);
model.func('int5').setIndex('table', 4.86637, 20, 1);
model.func('int5').setIndex('table', 2100.3, 21, 0);
model.func('int5').setIndex('table', 4.38529, 21, 1);
model.func('int5').setIndex('table', 2200.27, 22, 0);
model.func('int5').setIndex('table', 3.91953, 22, 1);
model.func('int5').setIndex('table', 2300.23, 23, 0);
model.func('int5').setIndex('table', 3.46842, 23, 1);
model.func('int5').setIndex('table', 2400.2, 24, 0);
model.func('int5').setIndex('table', 3.03212, 24, 1);
model.func('int5').setIndex('table', 2500.17, 25, 0);
model.func('int5').setIndex('table', 2.62169, 25, 1);
model.func('int5').setIndex('table', 2600.13, 26, 0);
model.func('int5').setIndex('table', 2.23749, 26, 1);
model.func('int5').setIndex('table', 2700.1, 27, 0);
model.func('int5').setIndex('table', 1.87683, 27, 1);
model.func('int5').setIndex('table', 2800.07, 28, 0);
model.func('int5').setIndex('table', 1.63572, 28, 1);
model.func('int5').setIndex('table', 2900.03, 29, 0);
model.func('int5').setIndex('table', 1.31616, 29, 1);
model.func('int5').setIndex('table', 3000, 30, 0);
model.func('int5').setIndex('table', 1.04034, 30, 1);
model.func('int5').set('extrap', 'value');
model.func('int5').set('extrapvalue', 0.1);
model.func('int5').set('extrap', 'value');
model.func('int5').setIndex('table', 4000, 31, 0);
model.func('int5').setIndex('table', 0.25, 31, 1);
model.func('int5').set('extrap', 'const');
model.func('int5').set('table', {});
model.func('int5').setIndex('table', 1, 0, 0);
model.func('int5').setIndex('table', 0.05135, 0, 1);
model.func('int5').setIndex('table', 100.967, 1, 0);
model.func('int5').setIndex('table', 0.179149, 1, 1);
model.func('int5').setIndex('table', 200.933, 2, 0);
model.func('int5').setIndex('table', 0.329243, 2, 1);
model.func('int5').setIndex('table', 300.9, 3, 0);
model.func('int5').setIndex('table', 0.453959, 3, 1);
model.func('int5').setIndex('table', 400.867, 4, 0);
model.func('int5').setIndex('table', 0.55794, 4, 1);
model.func('int5').setIndex('table', 500.833, 5, 0);
model.func('int5').setIndex('table', 0.64289, 5, 1);
model.func('int5').setIndex('table', 600.8, 6, 0);
model.func('int5').setIndex('table', 0.711271, 6, 1);
model.func('int5').setIndex('table', 700.767, 7, 0);
model.func('int5').setIndex('table', 0.762578, 7, 1);
model.func('int5').setIndex('table', 800.733, 8, 0);
model.func('int5').setIndex('table', 0.798895, 8, 1);
model.func('int5').setIndex('table', 900.7, 9, 0);
model.func('int5').setIndex('table', 0.819762, 9, 1);
model.func('int5').setIndex('table', 1000.67, 10, 0);
model.func('int5').setIndex('table', 0.827217, 10, 1);
model.func('int5').setIndex('table', 1100.63, 11, 0);
model.func('int5').setIndex('table', 0.822477, 11, 1);
model.func('int5').setIndex('table', 1200.6, 12, 0);
model.func('int5').setIndex('table', 0.806652, 12, 1);
model.func('int5').setIndex('table', 1300.57, 13, 0);
model.func('int5').setIndex('table', 0.781595, 13, 1);
model.func('int5').setIndex('table', 1400.53, 14, 0);
model.func('int5').setIndex('table', 0.74986, 14, 1);
model.func('int5').setIndex('table', 1500.5, 15, 0);
model.func('int5').setIndex('table', 0.712497, 15, 1);
model.func('int5').setIndex('table', 1600.47, 16, 0);
model.func('int5').setIndex('table', 0.671384, 16, 1);
model.func('int5').setIndex('table', 1700.43, 17, 0);
model.func('int5').setIndex('table', 0.626997, 17, 1);
model.func('int5').setIndex('table', 1800.4, 18, 0);
model.func('int5').setIndex('table', 0.581167, 18, 1);
model.func('int5').setIndex('table', 1900.37, 19, 0);
model.func('int5').setIndex('table', 0.533884, 19, 1);
model.func('int5').setIndex('table', 2000.33, 20, 0);
model.func('int5').setIndex('table', 0.486637, 20, 1);
model.func('int5').setIndex('table', 2100.3, 21, 0);
model.func('int5').setIndex('table', 0.438529, 21, 1);
model.func('int5').setIndex('table', 2200.27, 22, 0);
model.func('int5').setIndex('table', 0.391953, 22, 1);
model.func('int5').setIndex('table', 2300.23, 23, 0);
model.func('int5').setIndex('table', 0.346842, 23, 1);
model.func('int5').setIndex('table', 2400.2, 24, 0);
model.func('int5').setIndex('table', 0.303212, 24, 1);
model.func('int5').setIndex('table', 2500.17, 25, 0);
model.func('int5').setIndex('table', 0.262169, 25, 1);
model.func('int5').setIndex('table', 2600.13, 26, 0);
model.func('int5').setIndex('table', 0.223749, 26, 1);
model.func('int5').setIndex('table', 2700.1, 27, 0);
model.func('int5').setIndex('table', 0.187683, 27, 1);
model.func('int5').setIndex('table', 2800.07, 28, 0);
model.func('int5').setIndex('table', 0.163572, 28, 1);
model.func('int5').setIndex('table', 2900.03, 29, 0);
model.func('int5').setIndex('table', 0.131616, 29, 1);
model.func('int5').setIndex('table', 3000, 30, 0);
model.func('int5').setIndex('table', 0.104034, 30, 1);
model.func('int5').setIndex('table', 1, 0, 0);
model.func('int5').setIndex('table', 0.05135, 0, 1);
model.func('int5').setIndex('table', 100.967, 1, 0);
model.func('int5').setIndex('table', 0.179149, 1, 1);
model.func('int5').setIndex('table', 200.933, 2, 0);
model.func('int5').setIndex('table', 0.329243, 2, 1);
model.func('int5').setIndex('table', 300.9, 3, 0);
model.func('int5').setIndex('table', 0.453959, 3, 1);
model.func('int5').setIndex('table', 400.867, 4, 0);
model.func('int5').setIndex('table', 0.55794, 4, 1);
model.func('int5').setIndex('table', 500.833, 5, 0);
model.func('int5').setIndex('table', 0.64289, 5, 1);
model.func('int5').setIndex('table', 600.8, 6, 0);
model.func('int5').setIndex('table', 0.711271, 6, 1);
model.func('int5').setIndex('table', 700.767, 7, 0);
model.func('int5').setIndex('table', 0.762578, 7, 1);
model.func('int5').setIndex('table', 800.733, 8, 0);
model.func('int5').setIndex('table', 0.798895, 8, 1);
model.func('int5').setIndex('table', 900.7, 9, 0);
model.func('int5').setIndex('table', 0.819762, 9, 1);
model.func('int5').setIndex('table', 1000.67, 10, 0);
model.func('int5').setIndex('table', 0.827217, 10, 1);
model.func('int5').setIndex('table', 1100.63, 11, 0);
model.func('int5').setIndex('table', 0.822477, 11, 1);
model.func('int5').setIndex('table', 1200.6, 12, 0);
model.func('int5').setIndex('table', 0.806652, 12, 1);
model.func('int5').setIndex('table', 1300.57, 13, 0);
model.func('int5').setIndex('table', 0.781595, 13, 1);
model.func('int5').setIndex('table', 1400.53, 14, 0);
model.func('int5').setIndex('table', 0.74986, 14, 1);
model.func('int5').setIndex('table', 1500.5, 15, 0);
model.func('int5').setIndex('table', 0.712497, 15, 1);
model.func('int5').setIndex('table', 1600.47, 16, 0);
model.func('int5').setIndex('table', 0.671384, 16, 1);
model.func('int5').setIndex('table', 1700.43, 17, 0);
model.func('int5').setIndex('table', 0.626997, 17, 1);
model.func('int5').setIndex('table', 1800.4, 18, 0);
model.func('int5').setIndex('table', 0.581167, 18, 1);
model.func('int5').setIndex('table', 1900.37, 19, 0);
model.func('int5').setIndex('table', 0.533884, 19, 1);
model.func('int5').setIndex('table', 2000.33, 20, 0);
model.func('int5').setIndex('table', 0.486637, 20, 1);
model.func('int5').setIndex('table', 2100.3, 21, 0);
model.func('int5').setIndex('table', 0.438529, 21, 1);
model.func('int5').setIndex('table', 2200.27, 22, 0);
model.func('int5').setIndex('table', 0.391953, 22, 1);
model.func('int5').setIndex('table', 2300.23, 23, 0);
model.func('int5').setIndex('table', 0.346842, 23, 1);
model.func('int5').setIndex('table', 2400.2, 24, 0);
model.func('int5').setIndex('table', 0.303212, 24, 1);
model.func('int5').setIndex('table', 2500.17, 25, 0);
model.func('int5').setIndex('table', 0.262169, 25, 1);
model.func('int5').setIndex('table', 2600.13, 26, 0);
model.func('int5').setIndex('table', 0.223749, 26, 1);
model.func('int5').setIndex('table', 2700.1, 27, 0);
model.func('int5').setIndex('table', 0.187683, 27, 1);
model.func('int5').setIndex('table', 2800.07, 28, 0);
model.func('int5').setIndex('table', 0.163572, 28, 1);
model.func('int5').setIndex('table', 2900.03, 29, 0);
model.func('int5').setIndex('table', 0.131616, 29, 1);
model.func('int5').setIndex('table', 3000, 30, 0);
model.func('int5').setIndex('table', 0.104034, 30, 1);
model.func('int5').setIndex('table', 4000, 31, 0);
model.func('int5').setIndex('table', 0.025, 31, 1);

model.component('comp1').variable('var4').set('kl_eff', 'kl_int1(cl)*epsl_l_1^1.5');
model.component('comp1').variable('var4').set('Dl_eff', 'Dl_int1(cl)*epsl_l_1^1.5');

model.study('std2').feature('param').setIndex('plistarr', '0.05 0.5 1 2', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg19').run;
model.result('pg17').run;
model.result('pg17').set('data', 'dset9');
model.result('pg17').run;

model.func('int4').setIndex('table', 4000, 40, 0);
model.func('int4').setIndex('table', '1E-14', 40, 1);
model.func('int4').set('extrap', 'const');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.func('int4').remove('table', 40);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg19').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [2], 2);
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [4], 2);
model.result('pg8').run;
model.result('pg23').run;
model.result('pg23').set('data', 'dset11');
model.result('pg23').setIndex('looplevelinput', 'manual', 2);
model.result('pg23').setIndex('looplevel', [2], 2);
model.result('pg23').run;
model.result('pg25').run;
model.result('pg25').set('data', 'dset11');
model.result('pg25').setIndex('looplevelinput', 'manual', 2);
model.result('pg25').setIndex('looplevel', [1], 2);
model.result('pg25').setIndex('looplevel', [3], 2);
model.result('pg25').run;
model.result('pg25').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg25').setIndex('looplevelindices', 25, 0);
model.result('pg25').run;
model.result('pg25').setIndex('looplevelindices', 50, 0);
model.result('pg25').run;
model.result('pg25').setIndex('looplevelindices', 100, 0);
model.result('pg25').setIndex('looplevelindices', 98, 0);
model.result('pg25').run;
model.result('pg25').setIndex('looplevel', [4], 2);
model.result('pg25').setIndex('looplevelindices', 95, 0);
model.result('pg25').run;
model.result('pg25').setIndex('looplevelindices', 50, 0);
model.result('pg25').run;
model.result('pg39').run;
model.result('pg30').run;
model.result('pg30').set('data', 'dset11');
model.result('pg30').setIndex('looplevelinput', 'manual', 2);
model.result('pg30').setIndex('looplevel', [3], 2);
model.result('pg30').setIndex('looplevel', [4], 2);
model.result('pg30').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').setIndex('looplevelinput', 'manual', 2);
model.result('pg18').setIndex('looplevel', [2], 2);
model.result('pg18').setIndex('looplevel', [3], 2);
model.result('pg18').run;
model.result('pg18').setIndex('looplevel', [4], 2);