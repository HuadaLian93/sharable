max_neg)/(1000[mol/m^3])*(max(cl[mol/m^3]/cl_ref,eps^2))^aa_neg)');

model.func('int2').setIndex('fununit', 'A/m^2', 0);

model.component('comp1').variable('var3').set('i0', 'max(eps^2,i0_int1(cs_surf/cs_max_neg)*(max(cl[mol/m^3]/cl_ref,eps^2))^aa_neg)');

model.component('comp2').physics('g4').feature('gfeq1').setIndex('Ga', {'0' '-y^2*Ds_int1(cs/cs_max_neg)*(csy-cs/R_const/T*(omega1/(J_c)^(2/3)*T_h_y-2/3*omega1^2*T_h*csy/(J_c)^(5/3)))'}, 0);

model.func('int1').setIndex('fununit', 'm^2/s', 0);
model.func.create('int3', 'Interpolation');
model.func('int3').setIndex('table', 20, 0, 0);
model.func('int3').setIndex('table', '', 0, 1);
model.func('int3').setIndex('table', 27, 1, 0);
model.func('int3').setIndex('table', '', 1, 1);
model.func('int3').setIndex('table', 34, 2, 0);
model.func('int3').setIndex('table', '', 2, 1);
model.func('int3').setIndex('table', 41, 3, 0);
model.func('int3').setIndex('table', '', 3, 1);
model.func('int3').setIndex('table', 48, 4, 0);
model.func('int3').setIndex('table', '', 4, 1);
model.func('int3').setIndex('table', 55, 5, 0);
model.func('int3').setIndex('table', '', 5, 1);
model.func('int3').setIndex('table', 62, 6, 0);
model.func('int3').setIndex('table', '', 6, 1);
model.func('int3').setIndex('table', 69, 7, 0);
model.func('int3').setIndex('table', '', 7, 1);
model.func('int3').setIndex('table', 76, 8, 0);
model.func('int3').setIndex('table', '', 8, 1);
model.func('int3').setIndex('table', 83, 9, 0);
model.func('int3').setIndex('table', '', 9, 1);
model.func('int3').setIndex('table', 90, 10, 0);
model.func('int3').setIndex('table', '', 10, 1);
model.func('int3').setIndex('table', 20, 0, 0);
model.func('int3').setIndex('table', '', 0, 1);
model.func('int3').setIndex('table', 27, 1, 0);
model.func('int3').setIndex('table', '', 1, 1);
model.func('int3').setIndex('table', 34, 2, 0);
model.func('int3').setIndex('table', '', 2, 1);
model.func('int3').setIndex('table', 41, 3, 0);
model.func('int3').setIndex('table', '', 3, 1);
model.func('int3').setIndex('table', 48, 4, 0);
model.func('int3').setIndex('table', '', 4, 1);
model.func('int3').setIndex('table', 55, 5, 0);
model.func('int3').setIndex('table', '', 5, 1);
model.func('int3').setIndex('table', 62, 6, 0);
model.func('int3').setIndex('table', '', 6, 1);
model.func('int3').setIndex('table', 69, 7, 0);
model.func('int3').setIndex('table', '', 7, 1);
model.func('int3').setIndex('table', 76, 8, 0);
model.func('int3').setIndex('table', '', 8, 1);
model.func('int3').setIndex('table', 83, 9, 0);
model.func('int3').setIndex('table', '', 9, 1);
model.func('int3').setIndex('table', 90, 10, 0);
model.func('int3').setIndex('table', '', 10, 1);
model.func('int3').setIndex('table', 27, 1, 0);
model.func('int3').setIndex('table', 34, 2, 0);
model.func('int3').setIndex('table', 41, 3, 0);
model.func('int3').setIndex('table', 48, 4, 0);
model.func('int3').setIndex('table', 55, 5, 0);
model.func('int3').setIndex('table', 62, 6, 0);
model.func('int3').setIndex('table', 69, 7, 0);
model.func('int3').setIndex('table', 76, 8, 0);
model.func('int3').setIndex('table', 76, 8, 0);
model.func('int3').setIndex('table', 83, 9, 0);
model.func('int3').setIndex('table', 90, 10, 0);
model.func('int3').remove('table', 10);
model.func('int3').setIndex('table', 90, 10, 0);
model.func('int3').setIndex('table', '', 10, 1);
model.func('int3').setIndex('table', 90, 10, 0);
model.func('int3').setIndex('table', '', 10, 1);
model.func('int3').setIndex('table', '', 10, 0);
model.func('int3').setIndex('table', 90, 10, 1);
model.func('int3').setIndex('table', 90, 10, 1);
model.func('int3').setIndex('table', '', 9, 0);
model.func('int3').setIndex('table', 83, 9, 1);
model.func('int3').setIndex('table', 83, 9, 1);
model.func('int3').setIndex('table', '', 8, 0);
model.func('int3').setIndex('table', 76, 8, 1);
model.func('int3').setIndex('table', 76, 8, 1);
model.func('int3').setIndex('table', '', 7, 0);
model.func('int3').setIndex('table', 69, 7, 1);
model.func('int3').setIndex('table', 69, 7, 1);
model.func('int3').setIndex('table', '', 6, 0);
model.func('int3').setIndex('table', 62, 6, 1);
model.func('int3').setIndex('table', 62, 6, 1);
model.func('int3').setIndex('table', '', 5, 0);
model.func('int3').setIndex('table', 55, 5, 1);
model.func('int3').setIndex('table', 55, 5, 1);
model.func('int3').setIndex('table', '', 4, 0);
model.func('int3').setIndex('table', 48, 4, 1);
model.func('int3').setIndex('table', 48, 4, 1);
model.func('int3').setIndex('table', '', 3, 0);
model.func('int3').setIndex('table', 41, 3, 1);
model.func('int3').setIndex('table', 41, 3, 1);
model.func('int3').setIndex('table', '', 2, 0);
model.func('int3').setIndex('table', 34, 2, 1);
model.func('int3').setIndex('table', 34, 2, 1);
model.func('int3').setIndex('table', '', 1, 0);
model.func('int3').setIndex('table', 27, 1, 1);
model.func('int3').setIndex('table', 27, 1, 1);
model.func('int3').setIndex('table', '', 0, 0);
model.func('int3').setIndex('table', 20, 0, 1);
model.func('int3').setIndex('table', 20, 0, 1);
model.func('int3').setIndex('table', 1, 0, 0);
model.func('int3').setIndex('table', 0.9, 1, 0);
model.func('int3').setIndex('table', 0.8, 2, 0);
model.func('int3').setIndex('table', 0.7, 3, 0);
model.func('int3').setIndex('table', 0.6, 4, 0);
model.func('int3').setIndex('table', 0.5, 5, 0);
model.func('int3').setIndex('table', 0.4, 6, 0);
model.func('int3').setIndex('table', 0.3, 7, 0);
model.func('int3').setIndex('table', 0.2, 8, 0);
model.func('int3').setIndex('table', 0.1, 9, 0);
model.func('int3').setIndex('table', 0, 10, 0);
model.func('int3').set('funcname', 'E_int1');

model.component('comp2').variable('var2').set('T_RR', '(J_c)^(-1/3)*E_int1(cs/cs_max_neg)/(2*(1+gamma)*(1-2*gamma))*((1-gamma)*(uy+1)^2+2*gamma*(u_y+1)^2-(1+gamma)*(J_c)^(2/3))*(uy+1)');
model.component('comp2').variable('var2').set('T_tt', '(J_c)^(-1/3)*E_int1(cs/cs_max_neg)/(2*(1+gamma)*(1-2*gamma))*(gamma*(uy+1)^2+(u_y+1)^2-(1+gamma)*(J_c)^(2/3))*(u_y+1)');

model.func('int3').setIndex('fununit', 'GPa', 0);

model.result.table.create('tbl3', 'Table');
model.result.table('tbl3').label('0.05C');
model.result.table('tbl3').set('tablebuffersize', 1000000);

model.label('Electrode_model_with_3_electrode.mph');

model.result.table('tbl3').set('tablebuffersize', 100000);
model.result.table('tbl3').label('0.5C');
model.result.table('tbl3').active(false);
model.result.table.remove('tbl3');
model.result.table.create('tbl3', 'Table');

model.label('Electrode_model_with_3_electrode.mph');

model.result.table('tbl3').set('tablebuffersize', 100000);
model.result.table('tbl3').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 2_31um_0_275_poro\20220322\0.05C.xlsx'], '', '');
model.result.table('tbl3').label('0.05C');
model.result.table.create('tbl4', 'Table');
model.result.table('tbl4').label('0.5C');
model.result.table('tbl4').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 2_31um_0_275_poro\20220322\0.5C.xlsx'], '', '');
model.result.table.create('tbl5', 'Table');
model.result.table('tbl5').label('1C');
model.result.table('tbl5').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 2_31um_0_275_poro\20220322\1C.xlsx'], '', '');
model.result.table.create('tbl6', 'Table');
model.result.table('tbl6').loadFile(['F:\group\Research\Mechanic-electrochemic coupling method\Impedance model\SiOx' native2unicode(hex2dec({'9a' '8c'}), 'unicode')  native2unicode(hex2dec({'8b' 'c1'}), 'unicode')  native2unicode(hex2dec({'5b' '9e'}), 'unicode')  native2unicode(hex2dec({'9a' '8c'}), 'unicode') '\Group 2_31um_0_275_poro\20220322\2C.xlsx'], '', '');
model.result.table('tbl6').label('2C');
model.result.create('pg48', 'PlotGroup1D');
model.result('pg48').set('data', 'none');
model.result('pg48').create('tblp1', 'Table');
model.result('pg48').feature('tblp1').set('source', 'table');
model.result('pg48').feature('tblp1').set('table', 'tbl3');
model.result('pg48').run;
model.result.create('pg49', 'PlotGroup1D');
model.result('pg49').set('data', 'none');
model.result('pg49').create('tblp1', 'Table');
model.result('pg49').feature('tblp1').set('source', 'table');
model.result('pg49').feature('tblp1').set('table', 'tbl4');
model.result('pg49').run;
model.result.create('pg50', 'PlotGroup1D');
model.result('pg50').set('data', 'none');
model.result('pg50').create('tblp1', 'Table');
model.result('pg50').feature('tblp1').set('source', 'table');
model.result('pg50').feature('tblp1').set('table', 'tbl5');
model.result('pg50').run;
model.result.create('pg51', 'PlotGroup1D');
model.result('pg51').set('data', 'none');
model.result('pg51').create('tblp1', 'Table');
model.result('pg51').feature('tblp1').set('source', 'table');
model.result('pg51').feature('tblp1').set('table', 'tbl6');
model.result('pg51').run;
model.result('pg48').run;
model.result('pg48').feature('tblp1').label('0.05C');
model.result('pg49').run;
model.result('pg49').feature('tblp1').label('0.5C');
model.result('pg50').run;
model.result('pg50').feature('tblp1').label('1C');
model.result('pg51').run;
model.result('pg51').feature('tblp1').label('2C');
model.result('pg48').run;
model.result('pg51').run;
model.result('pg49').run;
model.result('pg48').feature.copy('tblp2', 'pg49/tblp1');
model.result('pg49').feature.remove('tblp1');
model.result('pg50').run;
model.result('pg48').feature.copy('tblp3', 'pg50/tblp1');
model.result('pg50').feature.remove('tblp1');
model.result('pg51').run;
model.result('pg48').feature.copy('tblp4', 'pg51/tblp1');
model.result('pg51').feature.remove('tblp1');
model.result('pg50').run;
model.result('pg49').run;
model.result.remove('pg49');
model.result.remove('pg50');
model.result.remove('pg51');
model.result('pg48').run;
model.result('pg48').feature('tblp1').set('preprocx', 'linear');
model.result('pg48').feature('tblp1').set('scalingx', '1/3.62');
model.result('pg48').run;
model.result('pg48').feature('tblp2').set('preprocx', 'linear');
model.result('pg48').feature('tblp2').set('scalingx', '1/3.62');
model.result('pg48').run;
model.result('pg48').feature('tblp3').set('preprocx', 'linear');
model.result('pg48').feature('tblp3').set('scalingx', '1/3.62');
model.result('pg48').run;
model.result('pg48').feature('tblp4').set('preprocx', 'linear');
model.result('pg48').feature('tblp4').set('scalingx', '1/3.62');
model.result('pg48').run;
model.result('pg48').run;
model.result('pg40').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;

model.study('std1').feature('param').setIndex('pname', 'C', 0);
model.study('std1').feature('param').setIndex('plistarr', 0.05, 0);

model.param.set('L', '31[um]');

model.component('comp1').geom('geom2').run('fin');

model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.study('std1').feature('time').set('tlist', 'range(0,3600/C/100,3600/C)');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

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
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.02, 10, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1.551, 10, 1);
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
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.02, 10, 0);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1.551, 10, 1);

model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1<0.01', 0);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondarr', '', 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondActive', true, 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 2'], 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondarr', '', 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondActive', true, 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 2'], 1);
model.sol('sol1').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1<0.01', 1);

model.param.set('rp_primary', '2.69[um]');

model.component('comp2').geom('geom3').run('fin');

model.component('comp2').mesh('mesh3').run;
model.component('comp1').mesh('mesh2').run;
model.component('comp1').mesh('mesh2').feature('size').set('hauto', 2);
model.component('comp1').mesh('mesh2').run;

model.sol('sol1').feature('t1').feature('st1').remove('stopcondterminateon', 1);
model.sol('sol1').feature('t1').feature('st1').remove('stopcondActive', 1);
model.sol('sol1').feature('t1').feature('st1').remove('stopconddesc', 1);
model.sol('sol1').feature('t1').feature('st1').remove('stopcondarr', [1]);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p1').run('compute');

model.result('pg34').run;

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.062, 0, 1);
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 1.231, 10, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p1').run('compute');

model.result('pg34').run;

model.study.create('std2');
model.study('std2').create('time', 'Transient');
model.study('std2').feature('time').setSolveFor('/physics/g3', true);
model.study('std2').feature('time').setSolveFor('/physics/g4', true);
model.study('std2').feature('time').setSolveFor('/physics/g', true);
model.study('std2').feature('time').setSolveFor('/physics/g2', true);
model.study('std2').feature('time').setSolveFor('/physics/dode', true);
model.study('std2').feature('time').set('tlist', 'range(0,3600/C/100,3600/C)');
model.study('std2').feature('time').set('useinitsol', true);
model.study('std2').feature('time').set('initmethod', 'sol');
model.study('std2').feature('time').set('initstudy', 'std1');
model.study('std2').feature('time').set('initsol', 'sol1');
model.study('std2').feature('time').set('solnum', 101);
model.study('std2').feature('time').set('usesol', true);
model.study('std2').feature('time').set('notsolmethod', 'sol');
model.study('std2').feature('time').set('notstudy', 'std1');
model.study('std2').feature('time').set('notsol', 'sol1');
model.study('std2').feature('time').set('notsolnum', 101);

model.sol.create('sol4');
model.sol('sol4').study('std2');

model.study('std2').feature('time').set('notlistsolnum', 1);
model.study('std2').feature('time').set('notsolnum', '101');
model.study('std2').feature('time').set('listsolnum', 1);
model.study('std2').feature('time').set('solnum', '101');

model.sol('sol4').create('st1', 'StudyStep');
model.sol('sol4').feature('st1').set('study', 'std2');
model.sol('sol4').feature('st1').set('studystep', 'time');
model.sol('sol4').create('v1', 'Variables');
model.sol('sol4').feature('v1').set('control', 'time');
model.sol('sol4').create('t1', 'Time');
model.sol('sol4').feature('t1').set('tlist', 'range(0,3600/C/100,3600/C)');
model.sol('sol4').feature('t1').set('plot', 'off');
model.sol('sol4').feature('t1').set('plotgroup', 'pg34');
model.sol('sol4').feature('t1').set('plotfreq', 'tout');
model.sol('sol4').feature('t1').set('probesel', 'all');
model.sol('sol4').feature('t1').set('probes', {'pdom1' 'dom1'});
model.sol('sol4').feature('t1').set('probefreq', 'tsteps');
model.sol('sol4').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol4').feature('t1').set('endtimeinterpolation', true);
model.sol('sol4').feature('t1').set('control', 'time');
model.sol('sol4').feature('t1').create('seDef', 'Segregated');
model.sol('sol4').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol4').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol4').feature('t1').feature.remove('fcDef');
model.sol('sol4').feature('t1').feature.remove('seDef');
model.sol('sol4').attach('std2');
model.sol('sol4').feature('t1').create('st1', 'StopCondition');
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondarr', '', 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondterminateon', 'true', 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondActive', true, 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopconddesc', [native2unicode(hex2dec({'50' '5c'}), 'unicode')  native2unicode(hex2dec({'6b' '62'}), 'unicode')  native2unicode(hex2dec({'88' '68'}), 'unicode')  native2unicode(hex2dec({'8f' 'be'}), 'unicode')  native2unicode(hex2dec({'5f' '0f'}), 'unicode') ' 1'], 0);
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1<0.01', 0);

model.param.set('Flag', '1');

model.component('comp1').physics('g').feature('flux2').setIndex('g', '-i_input*Flag', 2);

model.study('std2').create('param', 'Parametric');
model.study('std2').feature('param').setIndex('pname', 'T', 0);
model.study('std2').feature('param').setIndex('plistarr', '', 0);
model.study('std2').feature('param').setIndex('punit', 'K', 0);
model.study('std2').feature('param').setIndex('pname', 'T', 0);
model.study('std2').feature('param').setIndex('plistarr', '', 0);
model.study('std2').feature('param').setIndex('punit', 'K', 0);
model.study('std2').feature('param').setIndex('pname', 'C', 0);
model.study('std2').feature('param').setIndex('plistarr', '0.05 0.5 1 2', 0);
model.study('std2').feature('param').setIndex('pname', 'T', 1);
model.study('std2').feature('param').setIndex('plistarr', '', 1);
model.study('std2').feature('param').setIndex('punit', 'K', 1);
model.study('std2').feature('param').setIndex('pname', 'T', 1);
model.study('std2').feature('param').setIndex('plistarr', '', 1);
model.study('std2').feature('param').setIndex('punit', 'K', 1);
model.study('std2').feature('param').setIndex('pname', 'Flag', 1);
model.study('std2').feature('param').setIndex('plistarr', -1, 1);

model.batch.create('p2', 'Parametric');
model.batch('p2').study('std2');
model.batch('p2').create('so1', 'Solutionseq');
model.batch('p2').feature('so1').set('seq', 'sol4');
model.batch('p2').feature('so1').set('store', 'on');
model.batch('p2').feature('so1').set('clear', 'on');
model.batch('p2').feature('so1').set('psol', 'none');
model.batch('p2').set('pname', {'C' 'Flag'});
model.batch('p2').set('plistarr', {'0.05 0.5 1 2' '-1'});
model.batch('p2').set('sweeptype', 'sparse');
model.batch('p2').set('probesel', 'all');
model.batch('p2').set('probes', {'pdom1' 'dom1'});
model.batch('p2').set('plot', 'off');
model.batch('p2').set('err', 'on');
model.batch('p2').attach('std2');
model.batch('p2').set('control', 'param');

model.sol.create('sol5');
model.sol('sol5').study('std2');
model.sol('sol5').label([native2unicode(hex2dec({'53' 'c2'}), 'unicode')  native2unicode(hex2dec({'65' '70'}), 'unicode')  native2unicode(hex2dec({'53' '16'}), 'unicode')  native2unicode(hex2dec({'89' 'e3'}), 'unicode') ' 2']);

model.batch('p2').feature('so1').set('psol', 'sol5');

model.result.create('pg49', 'PlotGroup2D');
model.result('pg49').set('data', 'dset12');
model.result('pg49').create('surf1', 'Surface');
model.result('pg49').feature('surf1').set('expr', 'u');
model.result.create('pg50', 'PlotGroup2D');
model.result('pg50').set('data', 'dset12');
model.result('pg50').create('surf1', 'Surface');
model.result('pg50').feature('surf1').set('expr', 'cs');
model.result.create('pg51', 'PlotGroup1D');
model.result('pg51').set('data', 'dset11');
model.result('pg51').create('lngr1', 'LineGraph');
model.result('pg51').feature('lngr1').set('xdata', 'expr');
model.result('pg51').feature('lngr1').set('xdataexpr', 'x');
model.result('pg51').feature('lngr1').selection.all;
model.result('pg51').feature('lngr1').set('expr', 'cl');
model.result.create('pg52', 'PlotGroup1D');
model.result('pg52').set('data', 'dset11');
model.result('pg52').create('lngr1', 'LineGraph');
model.result('pg52').feature('lngr1').set('xdata', 'expr');
model.result('pg52').feature('lngr1').set('xdataexpr', 'x');
model.result('pg52').feature('lngr1').selection.all;
model.result('pg52').feature('lngr1').set('expr', 'uM');
model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset11');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg52');
model.result.remove('pg53');
model.result.remove('pg50');
model.result.remove('pg51');
model.result.remove('pg49');

model.study('std2').feature('param').set('sweeptype', 'filled');

model.result.create('pg49', 'PlotGroup2D');
model.result('pg49').set('data', 'dset12');
model.result('pg49').create('surf1', 'Surface');
model.result('pg49').feature('surf1').set('expr', 'u');
model.result.create('pg50', 'PlotGroup2D');
model.result('pg50').set('data', 'dset12');
model.result('pg50').create('surf1', 'Surface');
model.result('pg50').feature('surf1').set('expr', 'cs');
model.result.create('pg51', 'PlotGroup1D');
model.result('pg51').set('data', 'dset11');
model.result('pg51').create('lngr1', 'LineGraph');
model.result('pg51').feature('lngr1').set('xdata', 'expr');
model.result('pg51').feature('lngr1').set('xdataexpr', 'x');
model.result('pg51').feature('lngr1').selection.all;
model.result('pg51').feature('lngr1').set('expr', 'cl');
model.result.create('pg52', 'PlotGroup1D');
model.result('pg52').set('data', 'dset11');
model.result('pg52').create('lngr1', 'LineGraph');
model.result('pg52').feature('lngr1').set('xdata', 'expr');
model.result('pg52').feature('lngr1').set('xdataexpr', 'x');
model.result('pg52').feature('lngr1').selection.all;
model.result('pg52').feature('lngr1').set('expr', 'uM');
model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset11');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result.remove('pg52');
model.result.remove('pg53');
model.result.remove('pg50');
model.result.remove('pg51');
model.result.remove('pg49');

model.sol('sol4').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol4').feature('t1').feature('st1').setIndex('stopcondarr', 'comp1.ppb1>2', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p1').run('compute');

model.result('pg34').run;

model.study('std2').feature('time').set('solnum', 101);
model.study('std2').feature('time').set('notsolnum', 101);

model.result.create('pg49', 'PlotGroup2D');
model.result('pg49').set('data', 'dset12');
model.result('pg49').create('surf1', 'Surface');
model.result('pg49').feature('surf1').set('expr', 'u');
model.result.create('pg50', 'PlotGroup2D');
model.result('pg50').set('data', 'dset12');
model.result('pg50').create('surf1', 'Surface');
model.result('pg50').feature('surf1').set('expr', 'cs');
model.result.create('pg51', 'PlotGroup1D');
model.result('pg51').set('data', 'dset11');
model.result('pg51').create('lngr1', 'LineGraph');
model.result('pg51').feature('lngr1').set('xdata', 'expr');
model.result('pg51').feature('lngr1').set('xdataexpr', 'x');
model.result('pg51').feature('lngr1').selection.all;
model.result('pg51').feature('lngr1').set('expr', 'cl');
model.result.create('pg52', 'PlotGroup1D');
model.result('pg52').set('data', 'dset11');
model.result('pg52').create('lngr1', 'LineGraph');
model.result('pg52').feature('lngr1').set('xdata', 'expr');
model.result('pg52').feature('lngr1').set('xdataexpr', 'x');
model.result('pg52').feature('lngr1').selection.all;
model.result('pg52').feature('lngr1').set('expr', 'uM');
model.result.create('pg53', 'PlotGroup1D');
model.result('pg53').set('data', 'dset11');
model.result('pg53').create('lngr1', 'LineGraph');
model.result('pg53').feature('lngr1').set('xdata', 'expr');
model.result('pg53').feature('lngr1').set('xdataexpr', 'x');
model.result('pg53').feature('lngr1').selection.all;
model.result('pg53').feature('lngr1').set('expr', 'epsl_l');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg49').run;
model.result('pg53').run;
model.result('pg52').run;
model.result('pg51').run;
model.result('pg46').run;
model.result('pg48').run;
model.result('pg48').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset12');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset11');
model.result('pg19').run;
model.result('pg19').feature('ptgr1').selection.set([1]);
model.result('pg19').run;

model.component('comp1').physics('g2').feature('cons2').active(true);
model.component('comp1').physics('g2').feature('cons1').active(false);

model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').feature('ptgr1').set('xdata', 'expr');
model.result('pg19').feature('ptgr1').set('xdataexpr', 't/3600*C');
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p1').run('compute');

model.result('pg34').run;
model.result('pg14').run;
model.result('pg8').run;
model.result('pg17').run;
model.result('pg19').run;
model.result('pg17').run;
model.result('pg34').run;
model.result('pg8').run;
model.result('pg15').run;
model.result('pg23').run;
model.result('pg8').run;
model.result('pg39').run;
model.result('pg25').run;
model.result('pg25').setIndex('looplevel', [39], 0);
model.result('pg25').run;
model.result('pg25').setIndex('looplevel', [40], 0);
model.result('pg25').run;
model.result('pg25').run;
model.result('pg25').run;
model.result('pg26').run;
model.result('pg26').run;
model.result('pg26').run;
model.result('pg26').run;
model.result('pg26').feature('lngr1').setIndex('looplevel', [40], 0);
model.result('pg26').run;

model.param.set('M', '0.1');

model.component('comp1').variable('var3').set('j_react_micro', 'i0*(exp(aa_neg*eta*F_const/R_const/T)*exp(-aa_neg*M*T_h_all*omega/J_c_micro^(2/3)/R_const/T)-exp(-ac_neg*eta*F_const/R_const/T)*exp(ac_neg*M*T_h_all*omega/J_c_micro^(2/3)/R_const/T))');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p1').run('compute');

model.result('pg34').run;
model.result('pg48').run;
model.result('pg46').run;
model.result('pg26').run;
model.result('pg26').run;
model.result('pg26').feature('lngr1').setIndex('looplevel', [85], 0);
model.result('pg26').run;
model.result('pg19').run;

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.12, 0, 1);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.001, 10, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.param.remove('E');
model.param.remove('Ds');
model.param.remove('eta');

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0, 10, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0.001, 10, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp2').variable('var2').set('T_RR_y', '-1/3*omega*csy*T_RR/J_c+(J_c)^(-1/3)*E_int1(cs/cs_max_neg)/(2*(1+gamma)*(1-2*gamma))*(3*(1-gamma)*(uy+1)^2*uyy+4*gamma*(u_y+1)*(uy/y-u/y^2)*(uy+1)+2*gamma*(u_y+1)^2*uyy-(1+gamma)*(J_c)^(-2/3)*uyy-2/3*(1+gamma)/(J_c)^(1/3)*omega*csy*(uy+1))');
model.component('comp2').variable('var2').set('T_tt_y', '-1/3*omega*csy*T_tt/J_c+(J_c)^(-1/3)*E_int1(cs/cs_max_neg)/(2*(1+gamma)*(1-2*gamma))*(2*gamma*uyy*(uy+1)*(u_y+1)+gamma*(uy+1)^2*(uy/y-u/y^2)+3*(u_y+1)^2*(uy/y-u/y^2)-(1+gamma)*(J_c)^(2/3)*(uy/y-u/y^2)-2/3*(1+gamma)/(J_c)^(1/3)*omega*csy*(u_y+1))');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').variable('var4').set('E_macro', 'E_int1(cs_ave/cs_max_neg)*epsl_s');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').setIndex('table', 0, 10, 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg1').run;
model.result('pg8').run;

model.study('std1').feature.remove('param');

model.param.set('C', '0.05');

model.batch.remove('p1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.result('pg48').run;
model.result('pg46').run;
model.result('pg37').run;
model.result('pg37').set('data', 'dset1');
model.result('pg37').run;
model.result('pg8').run;
model.result('pg26').run;
model.result('pg37').run;
model.result('pg37').run;
model.result('pg37').run;
model.result('pg37').setIndex('looplevelinput', 'manual', 0);
model.result('pg37').setIndex('looplevel', [1], 0);
model.result('pg37').run;

model.component('comp1').physics('dode').feature('aleq1').setIndex('f', 'epsl_l-(1-0.08-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);

model.result('pg28').run;
model.result('pg28').set('data', 'dset1');
model.result('pg28').run;

model.component('comp1').physics('g2').feature('cons2').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);
model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M-1E6[Pa]', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;

model.param.set('M', '1');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg19').run;
model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg19').run;

model.study('std2').feature('time').set('solnum', 101);
model.study('std2').feature('time').set('notsolnum', 101);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg19').run;
model.result('pg24').run;
model.result('pg24').set('data', 'dset1');
model.result('pg24').run;
model.result('pg24').run;
model.result('pg10').run;
model.result('pg18').run;
model.result('pg18').set('data', 'dset11');
model.result('pg18').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset11');
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('ptgr1').selection.set([1]);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg46').run;
model.result('pg42').run;
model.result('pg41').set('window', 'window1');
model.result('pg41').run;
model.result('pg46').run;
model.result('pg48').run;
model.result('pg22').run;
model.result('pg15').run;
model.result('pg14').run;
model.result('pg22').run;
model.result('pg16').run;
model.result('pg21').run;
model.result('pg23').run;
model.result('pg7').run;
model.result('pg17').run;
model.result('pg19').run;
model.result('pg20').run;
model.result('pg17').run;
model.result('pg19').run;

model.component('comp1').physics('g2').feature('cons1').setIndex('R', 'T_xx_M+1E6[Pa]', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg19').run;
model.result('pg19').set('data', 'dset1');
model.result('pg19').run;
model.result('pg24').run;
model.result('pg23').run;
model.result('pg8').run;
model.result('pg20').run;
model.result('pg19').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');
model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg8').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset9');
model.result('pg19').run;
model.result('pg19').run;
model.result('pg19').set('data', 'dset11');
model.result('pg19').run;
model.result('pg8').run;
model.result('pg18').run;
model.result('pg30').run;
model.result('pg39').run;
model.result('pg40').run;
model.result('pg25').run;
model.result('pg24').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset1');
model.result('pg8').run;

model.component('comp1').physics('dode').feature('aleq1').setIndex('f', 'epsl_l-(1-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);
model.component('comp1').physics('dode').feature('aleq1').setIndex('f', 'epsl_l-(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)', 0);

model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runFromTo('st1', 'v1');

model.result('pg17').run;
model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg19').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg32').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('ptgr1').set('expr', '0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M');
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('ptgr1').set('expr', 'epsl_l_1');
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result.dataset('dset7').set('solution', 'none');
model.result.dataset('dset8').set('solution', 'none');

model.sol.remove('sol2');

model.result('pg8').run;
model.result('pg8').set('data', 'dset2');
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset1');
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('ptgr1').selection.set([1 2]);
model.result('pg8').run;
model.result('pg8').run;

model.label('Electrode_model_with_3_electrode.mph');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg14').run;
model.result('pg8').run;
model.result('pg8').feature('ptgr1').set('expr', 'epsl_l');
model.result('pg8').feature('ptgr1').set('descr', [native2unicode(hex2dec({'56' 'e0'}), 'unicode')  native2unicode(hex2dec({'53' 'd8'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode') ' epsl_l']);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature('ptgr1').set('expr', '(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');
model.result('pg8').run;

model.component('comp1').variable('var3').set('epsl_l', '(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M)');

model.component('comp1').physics('dode').active(false);
model.component('comp1').physics.remove('dode');

model.label('Electrode_model_with_3_electrode.mph');

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

model.component('comp1').variable('var3').remove('epsl_l');

model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').feature.remove('ptgr1');
model.result('pg8').run;
model.result('pg8').create('lngr1', 'LineGraph');
model.result('pg8').feature('lngr1').selection.set([1]);
model.result('pg8').feature('lngr1').set('expr', 'epsl_l');
model.result('pg8').feature('lngr1').set('descr', [native2unicode(hex2dec({'56' 'e0'}), 'unicode')  native2unicode(hex2dec({'53' 'd8'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode') ' epsl_l']);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevelinput', 'manual', 0);
model.result('pg8').setIndex('looplevel', [1], 0);
model.result('pg8').run;

model.component('comp1').mesh('mesh2').feature('size').set('hauto', 1);
model.component('comp1').mesh('mesh2').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [2], 0);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [3], 0);
model.result('pg8').run;

model.component('comp1').physics('dode').prop('ShapeProperty').set('shapeFunctionType', 'shlag');

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevel', [1], 0);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;

model.component('comp1').physics('dode').feature('aleq1').setIndex('f', '10*(epsl_l-(0.92-((cs_ave-cs_0_neg)*omega+1)*epsl_s_0/det_F_M))', 0);

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.sol('sol1').runAll;

model.result('pg17').run;
model.result('pg8').run;

model.component('comp1').probe('pdom1').genResult('none');
model.component('comp1').probe('dom1').genResult('none');

model.batch('p2').run('compute');

model.result('pg19').run;
model.result('pg8').run;
model.result('pg8').set('data', 'dset11');
model.result('pg8').setIndex('looplevelinput', 'manual', 2);
model.result('pg8').setIndex('looplevel', [4], 2);
model.result('pg8').setIndex('looplevelinput', 'manualindices', 0);
model.result('pg8').setIndex('looplevelindices', 5, 0);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevelindices', 20, 0);
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').run;
model.result('pg8').setIndex('looplevelindices', 50, 0);
model.result('pg8').run;

model.component('comp1').physics('g2').feature('cons1').setIndex('constraintType', 'unidirectionalConstraint', 