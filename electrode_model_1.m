function out = model
%
% Electrode_model_with_experiment_deLi_constant_thickness_clean.m
%
% Model exported on Oct 22 2023, 09:37 by COMSOL 6.1.0.252.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\lianh\OneDrive\Desktop');

model.comments([native2unicode(hex2dec({'67' '2a'}), 'unicode')  native2unicode(hex2dec({'54' '7d'}), 'unicode')  native2unicode(hex2dec({'54' '0d'}), 'unicode') '\n\n']);

model.param.set('theta', '2/9*E*omega^2/(R_const*T*(1-gamma))');
model.param.set('t0', '0.38', 'transport number');
model.param.set('T', '298.15[K]');
model.param.set('soc_min_pos', '0.2', 'Min soc in cathode');
model.param.set('soc_max_pos', '0.8', 'Max soc in cathode');
model.param.set('SoC_0', '1', 'Initial SoC');
model.param.set('rp_secondary', '3[um]');
model.param.set('rp_primary', '0.1[um]', 'The radius of primary particle in cathode');
model.param.set('Q_total_L1', '4/3*pi*rp_secondary^3*(1-Poro_sec)*cs_max_pos*F_const*(soc_max_pos-soc_min_pos)');
model.param.set('Q_total', 'Q_total_L1');
model.param.set('Poro_sec', '0.3', 'The porosity of the seperator');
model.param.set('omega_macro', 'omega*epss_AM_P_c');
model.param.set('omega', '0[m^3/mol]');
model.param.set('ks', '3.8[S/m]');
model.param.set('kr_pos', '9.32e-11[m/s]');
model.param.set('kr_neg', '1.12e-10[m/s]');
model.param.set('kl', '0.8[S/m]');
model.param.set('k_ks', '1', 'Factor of Solid Conductivity');
model.param.set('k_kr_pos', '1', 'Factor of reaction rate');
model.param.set('k_kl', '1', 'Factor of liquid conductivity');
model.param.set('k_Ds_pos', '1', 'Factor of Solid Diffusivity coefficient');
model.param.set('k_Dl', '1', 'Factor of Liquid Diffusivity coefficient');
model.param.set('I_input', 'Q_total*C/3600[s]', 'Input current');
model.param.set('i_input', 'I_input/(4*pi*rp_secondary^2)');
model.param.set('gamma_macro', 'gamma*epss_AM_P_c');
model.param.set('gamma', '0.3');
model.param.set('eta0', '-0.05');
model.param.set('epss_AM_P_c', '1-Poro_sec', 'The AM volume fraction of agglomerate in cathode domain');
model.param.set('E_macro', 'E*epss_AM_P_c');
model.param.set('E', '60[GPa]');
model.param.set('Ds', '1e-14[m^2/s]');
model.param.set('Dl', '1e-10[m^2/s]');
model.param.set('cs_max_pos', '45635[mol/m^3]', 'Max Li ion concentration in cathode');
model.param.set('cs_0_pos', 'cs_max_pos*((soc_max_pos-soc_min_pos)*(1-SoC_0)+soc_min_pos)', 'Initial Li ion concentration in cathode');
model.param.set('cl_ref', '1000[mol/m^3]');
model.param.set('c0', '1000[mol/m^3]', 'Initial Li ion concentration in electrolyte');
model.param.set('C', '1', 'C-rate factor');
model.param.set('ac_pos', '0.5');
model.param.set('aa_pos', '1-ac_pos');
model.param.set('a_v', '3/rp_primary*epss_AM_P_c');

model.label('Single_particle.mph');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 1);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').geom('geom1').lengthUnit([native2unicode(hex2dec({'00' 'b5'}), 'unicode') 'm']);
model.component('comp1').geom('geom1').create('i1', 'Interval');
model.component('comp1').geom('geom1').feature('i1').set('p2', 'rp_primary');
model.component('comp1').geom('geom1').feature('i1').set('selresult', true);
model.component('comp1').geom('geom1').feature('i1').set('selresultshow', 'all');
model.component('comp1').geom('geom1').run('fin');

model.component('comp1').physics.create('dode', 'DomainODE', {'u'});
model.component('comp1').physics('dode').create('aleq1', 'AlgebraicEquation', 1);
model.component('comp1').physics('dode').feature.remove('aleq1');
model.component('comp1').physics.remove('dode');
model.component('comp1').physics.create('dg', 'DeformedGeometry', 'geom1');
model.component('comp1').physics.remove('dg');
model.component('comp1').physics.create('g', 'GeneralFormPDE', {'u'});
model.component('comp1').physics('g').feature('gfeq1').setIndex('da', 0, 0);

model.component('comp1').variable.create('var1');

model.component('comp1').physics.create('g2', 'GeneralFormPDE', {'u2'});
model.component('comp1').physics.remove('g2');
model.component('comp1').physics('g').field('dimensionless').component({'u' 'u2'});
model.component('comp1').physics('g').field('dimensionless').component(2, 'c');

model.component('comp1').variable('var1').set('T_RR', 'E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2)');
model.component('comp1').variable('var1').set('temp', 'ux');
model.component('comp1').variable('var1').set('T_RR', 'E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(1+3*omega*c))*((ux)^2/(1+ux))');
model.component('comp1').variable('var1').rename('temp', 'T_tt');
model.component('comp1').variable('var1').set('T_tt', 'E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(1+3*omega*c))*((ux)^2/(1+ux))');
model.component('comp1').variable('var1').set('J_c', '1+3*omega*c');
model.component('comp1').variable('var1').set('T_RR', 'J_c^(2/3)*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*J_c^(2/3))*((ux)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_tt', 'J_c^(2/3)*E/(4*(1+gamma)*(1-2*gamma))*(gamma*(ux)^2+(u/x+1)^2-(1+gamma)*J_c^(2/3))*((u/x+1)^2/(1+ux))');

model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 0, 1);

model.component('comp1').variable('var1').set('T_h', '(T_RR+2*T_tt)/3');

model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-cx', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', 'T_RRx', 0);

model.component('comp1').variable('var1').selection.geom('geom1', 1);
model.component('comp1').variable('var1').selection.set([1]);

model.component('comp1').physics('g').field('dimensionless').component({'u' 'c' 'u3'});
model.component('comp1').physics('g').field('dimensionless').component({'u' 'c'});
model.component('comp1').physics.create('dode', 'DomainODE', {'u2'});
model.component('comp1').physics.remove('dode');

model.func.create('extm1', 'MATLAB');
model.func.remove('extm1');
model.func.create('ext1', 'External');
model.func.remove('ext1');

model.component.create('comp2', true);

model.component('comp2').geom.create('geom2', 2);

model.component('comp2').mesh.create('mesh2');

model.component('comp2').geom('geom2').lengthUnit([native2unicode(hex2dec({'00' 'b5'}), 'unicode') 'm']);
model.component('comp2').geom('geom2').create('r1', 'Rectangle');
model.component('comp2').geom('geom2').feature('r1').set('size', {'rp_secondary' 'rp_primary'});
model.component('comp2').geom('geom2').run('r1');

model.component('comp2').physics.create('solid', 'SolidMechanics', 'geom2');

model.component('comp2').geom('geom2').run;

model.component.remove('comp2');

model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', 'J_c^(2/3)*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*J_c^(2/3))*((ux)^2/(1+ux))', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', 'T_RR-T_tt', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', '-2(T_RR-T_tt)', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', '-2*(T_RR-T_tt)', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('f', '-2*(T_RR-T_tt)/x', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-Ds*cx', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-Ds*cx+', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-Ds*cx+omega*', 1);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '-Ds*cx+omega*c', 1);

model.component('comp1').variable('var1').set('N', '-Ds*cx+omega*c*T_h');
model.component('comp1').variable('var1').set('T_tt', 'J_c^(2/3)*E/(4*(1+gamma)*(1-2*gamma))*(gamma*(ux)^2+(u/x+1)^2-(1+gamma)*(1+3*omega*c)^(2/3))*((u/x+1)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_RR', 'J_c^(2/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(1+3*omega*c)^(2/3))*((ux)^2/(1+ux))');

model.component('comp1').physics('g').field('dimensionless').component({'u'});
model.component('comp1').physics.create('w', 'WeakFormPDE', {'u2'});
model.component('comp1').physics.remove('w');

model.component('comp1').variable('var1').set('T_h_x', 'pd(T_h,x)');

model.component('comp1').physics.create('g2', 'GeneralFormPDE', {'u2'});
model.component('comp1').physics('g2').field('dimensionless').component(1, 'c');
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-Ds*cx+omega*c*T_h_x', 0);
model.component('comp1').physics('g2').prop('Units').set('DependentVariableQuantity', 'concentration');
model.component('comp1').physics('g2').prop('Units').set('SourceTermQuantity', 'reactionrate');
model.component('comp1').physics('g').prop('Units').set('DependentVariableQuantity', 'displacement');
model.component('comp1').physics('g').prop('Units').set('SourceTermQuantity', 'springconstantpervolume');

model.component('comp1').variable('var1').set('J_c', '1+3*omega*c');
model.component('comp1').variable('var1').set('N', '-Ds*(cx+omega*c/R_const/T*T_h_x)');

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', 'N', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-Ds*(cx+omega*c/R_const/T*T_h_x)', 0);

model.component('comp1').variable('var1').remove('N');

model.param.rename('cs_0_pos', 'cs_0_neg');
model.param.rename('cs_max_pos', 'cs_max_neg');
model.param.set('cs_0_neg', 'cs_max_neg*((soc_max_pos-soc_min_pos)*(1-SoC_0)+soc_min_pos)');
model.param.set('Q_total_L1', '4/3*pi*rp_secondary^3*(1-Poro_sec)*cs_max_neg*F_const*(soc_max_neg-soc_min_neg)');
model.param.rename('soc_max_pos', 'soc_max_neg');
model.param.rename('soc_min_pos', 'soc_min_neg');
model.param.set('soc_min_neg', '0');
model.param.set('soc_max_neg', '0.95');
model.param.set('cs_0_neg', 'cs_max_neg*((soc_max_neg-soc_min_neg)*(1-SoC_0)+soc_min_neg)');

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').propertyGroup.create('ElectrodePotential', 'Equilibrium potential');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func.create('int1', 'Interpolation');
model.component('comp1').material('mat1').propertyGroup.create('OperationalSOC', 'Operational electrode state-of-charge');
model.component('comp1').material('mat1').label('Silicon electrode, LixSi (Negative, Li-ion Battery)');
model.component('comp1').material('mat1').comments(['vs Li/Li+, T=25 C\nEeq for fully lithiated at 1\nEeq for delithiated at 0\n\nReferences\nElectrochemical properties:\nV. A. Sethuraman, V. Srinivasan, and J. Newman, "Analysis of Electrochemical Lithiation and Delithiation Kinetics in Silicon", J. Electrochem. Soc., vol. 160, p. A394, 2013\n\nDensity averaged from:\nV. A. Sethuraman, V. Srinivasan, and J. Newman, "Analysis of Electrochemical Lithiation and Delithiation Kinetics in Silicon", J. Electrochem. Soc., vol. 160, p. A394, 2013\nB. A. Boukamp, G. C. Lesh, R. A. Huggins, "All' native2unicode(hex2dec({'20' '10'}), 'unicode') 'Solid Lithium Electrodes with Mixed' native2unicode(hex2dec({'20' '10'}), 'unicode') 'Conductor Matrix", J. Electrochem. Soc., vol. 128, p. 725, 1981\n']);
model.component('comp1').material('mat1').set('groups', {'electrodes' 'Electrodes'});
model.component('comp1').material('mat1').propertyGroup('def').label('Basic');
model.component('comp1').material('mat1').propertyGroup('def').set('density', '1500');
model.component('comp1').material('mat1').propertyGroup('def').set('diffusion', {'1e-12' '0' '0' '0' '1e-12' '0' '0' '0' '1e-12'});
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').label('Equilibrium potential');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').label('Interpolation 1');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('funcname', 'Eeq_int1');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('table', {'0.000' '0.800';  ...
'0.004' '0.613';  ...
'0.031' '0.569';  ...
'0.066' '0.515';  ...
'0.095' '0.488';  ...
'0.124' '0.461';  ...
'0.156' '0.434';  ...
'0.194' '0.416';  ...
'0.220' '0.403';  ...
'0.255' '0.390';  ...
'0.281' '0.381';  ...
'0.311' '0.372';  ...
'0.343' '0.367';  ...
'0.375' '0.358';  ...
'0.401' '0.354';  ...
'0.430' '0.340';  ...
'0.468' '0.331';  ...
'0.491' '0.322';  ...
'0.520' '0.313';  ...
'0.546' '0.305';  ...
'0.576' '0.296';  ...
'0.596' '0.287';  ...
'0.625' '0.278';  ...
'0.651' '0.264';  ...
'0.675' '0.255';  ...
'0.701' '0.246';  ...
'0.727' '0.237';  ...
'0.759' '0.228';  ...
'0.788' '0.219';  ...
'0.826' '0.210';  ...
'0.849' '0.202';  ...
'0.873' '0.197';  ...
'0.896' '0.193';  ...
'0.913' '0.184';  ...
'0.934' '0.179';  ...
'0.957' '0.170';  ...
'0.983' '0.157';  ...
'0.992' '0.143';  ...
'1' '0.062'});
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('interp', 'piecewisecubic');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').func('int1').set('fununit', 'V');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('Eeq', '');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('dEeqdT', '');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('cEeqref', '');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('Eeq', 'Eeq_int1(soc)');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('dEeqdT', '0');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('cEeqref', '278000');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').set('soc', 'c/cEeqref');
model.component('comp1').material('mat1').propertyGroup('ElectrodePotential').addInput('concentration');
model.component('comp1').material('mat1').propertyGroup('OperationalSOC').label('Operational electrode state-of-charge');
model.component('comp1').material('mat1').propertyGroup('OperationalSOC').set('socmin', '');
model.component('comp1').material('mat1').propertyGroup('OperationalSOC').set('socmax', '');
model.component('comp1').material('mat1').propertyGroup('OperationalSOC').set('socmin', '0');
model.component('comp1').material('mat1').propertyGroup('OperationalSOC').set('socmax', '1');
model.component('comp1').material('mat1').set('family', 'plastic');

model.param.set('cs_max_neg', '278000[mol/m^3]');

model.component('comp1').physics('g2').feature('init1').set('c', 'cs_0_neg');
model.component('comp1').physics('g2').create('dir1', 'DirichletBoundary', 0);
model.component('comp1').physics('g2').feature.remove('dir1');
model.component('comp1').physics('g2').create('flux1', 'FluxBoundary', 0);
model.component('comp1').physics('g2').feature('flux1').selection.set([2]);
model.component('comp1').physics('g2').feature('flux1').setIndex('g', 'i_input', 0);
model.component('comp1').physics('g2').feature('flux1').setIndex('g', 'i_input/F_const', 0);
model.component('comp1').physics('g').create('dir1', 'DirichletBoundary', 0);
model.component('comp1').physics('g').feature('dir1').selection.set([2]);

model.study.create('std1');
model.study('std1').create('time', 'Transient');
model.study('std1').feature('time').activate('g', true);
model.study('std1').feature('time').activate('g2', true);

model.sol.create('sol1');
model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.component('comp1').variable('var1').set('T_RR', '(1+3*omega*c)^(2/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(1+3*omega*c)^(2/3))*((ux)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_tt', '(1+3*omega*c)^(2/3)*E/(4*(1+gamma)*(1-2*gamma))*(gamma*(ux)^2+(u/x+1)^2-(1+gamma)*(1+3*omega*c)^(2/3))*((u/x+1)^2/(1+ux))');

model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(1+3*omega*c)^(2/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(1+3*omega*c)^(2/3))*((ux)^2/(1+ux))', 0);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.param.set('omega', '0.2[m^3/mol]');

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.component('comp1').physics('g').feature.remove('dir1');

model.param.set('soc_min_neg', '0.01');

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.sol('sol1').clearSolutionData;

model.label('Single_particle.mph');

model.component('comp1').physics('g2').feature('gfeq1').setIndex('f', 0, 0);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.param.remove('k_Dl');
model.param.remove('k_Ds_pos');
model.param.remove('k_kl');
model.param.remove('k_kr_pos');
model.param.remove('k_ks');
model.param.remove('kl');
model.param.remove('kr_neg');
model.param.remove('kr_pos');
model.param.remove('ks');
model.param.remove('omega_macro');
model.param.remove('Poro_sec');
model.param.set('Q_total_L1', '4/3*pi*rp_primary^3*cs_max_neg*F_const*(soc_max_neg-soc_min_neg)');
model.param.remove('Q_total');
model.param.rename('Q_total_L1', 'Q_total');
model.param.set('i_input', 'I_input/(4*pi*rp_primary^2)');
model.param.remove('E_macro');
model.param.remove('epss_AM_P_c');
model.param.remove('eta0');
model.param.remove('gamma_macro');
model.param.remove('t0');
model.param.remove('theta');
model.param.remove('rp_secondary');
model.param.remove('a_v');
model.param.remove('aa_pos');
model.param.remove('ac_pos');
model.param.remove('c0');
model.param.remove('cl_ref');

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.component('comp1').physics('g2').feature('flux1').setIndex('g', 0, 0);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'Default');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').set('data', 'dset1');
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').set('xdata', 'expr');
model.result('pg1').feature('lngr1').set('xdataexpr', 'x');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result.create('pg2', 'PlotGroup1D');
model.result('pg2').set('data', 'dset1');
model.result('pg2').create('lngr1', 'LineGraph');
model.result('pg2').feature('lngr1').set('xdata', 'expr');
model.result('pg2').feature('lngr1').set('xdataexpr', 'x');
model.result('pg2').feature('lngr1').selection.all;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result.remove('pg2');
model.result.remove('pg1');

model.component('comp1').physics('g2').feature('flux1').setIndex('g', 'i_input/F_const', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx+omega*c/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('da', 'x^2', 0);

model.result.create('pg1', 'PlotGroup1D');
model.result('pg1').run;
model.result('pg1').create('lngr1', 'LineGraph');
model.result('pg1').feature('lngr1').selection.all;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;

model.component('comp1').physics('g').create('cons1', 'Constraint', 0);
model.component('comp1').physics('g').feature('cons1').selection.set([2]);
model.component('comp1').physics('g').feature('cons1').setIndex('R', 'T_RR', 0);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.label('Single_particle.mph');

model.component('comp1').mesh('mesh1').autoMeshSize(2);
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.param.remove('Dl');

model.component('comp1').physics('g').prop('Units').set('SourceTermQuantity', 'forcedensity');
model.component('comp1').physics('g').create('dir1', 'DirichletBoundary', 0);
model.component('comp1').physics('g').feature('dir1').selection.set([1]);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'J_c');
model.result('pg1').run;
model.result('pg1').run;

model.param.set('omega', '1e-6[m^3/mol]');

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.component('comp1').physics('g2').feature('flux1').setIndex('g', 'i_input/F_const*x^2', 0);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');

model.result('pg1').run;
model.result('pg1').run;

model.component('comp1').variable('var1').set('J_c', '1');

model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(1)^(2/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(1+3*omega*c)^(2/3))*((ux)^2/(1+ux))', 0);
model.component('comp1').physics('g').feature('gfeq1').setIndex('Ga', '(1)^(2/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(1)^(2/3))*((ux)^2/(1+ux))', 0);

model.component('comp1').variable('var1').set('T_tt', '(J_c)^(2/3)*E/(4*(1+gamma)*(1-2*gamma))*(gamma*(ux)^2+(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*((u/x+1)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_RR', '(J_c)^(2/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux)^2+2*gamma*(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*((ux)^2/(1+ux))');

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');
model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runFromTo('st1', 'v1');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'c');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'u');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h_x');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_h');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_tt');
model.result('pg1').run;

model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 1, 0);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').feature('st1').set('study', 'std1');
model.sol('sol1').feature('st1').set('studystep', 'time');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').feature('v1').set('control', 'time');
model.sol('sol1').create('t1', 'Time');
model.sol('sol1').feature('t1').set('tlist', 'range(0,0.1,1)');
model.sol('sol1').feature('t1').set('plot', 'off');
model.sol('sol1').feature('t1').set('plotgroup', 'pg1');
model.sol('sol1').feature('t1').set('plotfreq', 'tout');
model.sol('sol1').feature('t1').set('probesel', 'all');
model.sol('sol1').feature('t1').set('probes', {});
model.sol('sol1').feature('t1').set('probefreq', 'tsteps');
model.sol('sol1').feature('t1').set('atolglobalvaluemethod', 'factor');
model.sol('sol1').feature('t1').set('control', 'time');
model.sol('sol1').feature('t1').create('seDef', 'Segregated');
model.sol('sol1').feature('t1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('t1').feature('fc1').set('linsolver', 'dDef');
model.sol('sol1').feature('t1').feature.remove('fcDef');
model.sol('sol1').feature('t1').feature.remove('seDef');
model.sol('sol1').attach('std1');
model.sol('sol1').runFromTo('st1', 'v1');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;

model.component('comp1').physics('g').feature('cons1').setIndex('R', 'ux', 0);

model.sol('sol1').study('std1');

model.study('std1').feature('time').set('notlistsolnum', 1);
model.study('std1').feature('time').set('notsolnum', '1');
model.study('std1').feature('time').set('listsolnum', 1);
model.study('std1').feature('time').set('solnum', '1');

model.sol('sol1').feature.remove('t1');
model.sol('sol1').feature.remove('v1');
model.sol('sol1').feature.remove('st1');
model.sol('s