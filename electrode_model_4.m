(2/3)', 0);
model.component('comp1').physics('g').feature('cons1').setIndex('R', '-(1-gamma)*(ux+1)^2-2*gamma*(u/x+1)^2+(1+gamma)*(J_c)^(2/3)', 0);

model.param.set('omega', '3.8^(1/3)/cs_max_neg');

model.component('comp1').physics('g').feature('cons1').setIndex('constraintMethod', 'elemental', 0);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 1, 0);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 0, 0);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg3').run;

model.component('comp1').variable('var1').set('J_c', '1+3*omega*(c-cs_0_neg)');

model.result('pg3').run;

model.component('comp1').variable('var1').set('J_c', '1+omega*c');

model.param.set('omega', '(3.8^(1/3)-1)/cs_max_neg');

model.result('pg4').run;
model.result('pg3').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'cx');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_tt');
model.result('pg1').run;

model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 1, 0);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 0, 0);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 1, 0);

model.study('std1').feature('time').set('usertol', false);

model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;

model.param.set('omega', '0');

model.component('comp1').physics('g').feature('cons1').setIndex('R', '-T_RR', 0);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 0, 0);

model.sol('sol1').runAll;

model.result('pg1').run;

model.param.set('omega', '(3.8^(1/3)-1)/cs_max_neg*0.01');

model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 0, 0);

model.param.set('omega', '0');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.param.set('omega', '(3.8^(1/3)-1)/cs_max_neg');

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-omega*c)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-omega*c*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-omega*c/R_const/T*T_h_x)', 0);

model.param.set('eta', '0.23');

model.component('comp1').variable('var1').set('J_c', '1+3*eta*c/cs_max_neg');

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-eta*c/cs_max_neg/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-3*eta*c/cs_max_neg/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 1, 0);
model.component('comp1').physics('g').feature('cons1').setIndex('weakConstraints', 0, 0);

model.component('comp1').variable('var1').set('T_RR', '(J_c)^(-1/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux+1)^2+2*gamma*(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*((ux)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_tt', '(J_c)^(-1/3)*E/(4*(1+gamma)*(1-2*gamma))*(gamma*(ux+1)^2+(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*((u/x+1)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_RR', '(J_c)^(-1/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux+1)^2+2*gamma*(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*((ux)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_tt', '(J_c)^(-1/3)/2*E/(4*(1+gamma)*(1-2*gamma))*(gamma*(ux+1)^2+(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*((u/x+1)^2/(1+ux))');
model.component('comp1').variable('var1').set('T_RR', '(J_c)^(-1/3)/2*E/(4*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux+1)^2+2*gamma*(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*(ux+1)');
model.component('comp1').variable('var1').set('T_tt', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(gamma*(ux+1)^2+(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*(u/x+1)');
model.component('comp1').variable('var1').set('T_RR', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux+1)^2+2*gamma*(u/x+1)^2-(1+gamma)*(J_c)^(2/3))*(ux+1)');

model.component('comp1').physics('g').feature('cons1').active(false);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result('pg2').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,100)');

model.result('pg2').run;
model.result('pg2').setIndex('looplevelinput', 'manual', 0);
model.result('pg2').setIndex('looplevel', [62], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [61], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [58], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [49], 0);
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_tt');
model.result('pg3').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [2], 0);
model.result('pg4').run;

model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 1, 0);

model.study('std1').feature('time').set('usertol', true);

model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_RR');
model.result('pg3').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [3], 0);
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [4], 0);
model.result('pg4').run;
model.result('pg1').run;
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [2], 0);
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [1], 0);
model.result('pg4').run;

model.study('std1').feature('time').set('rtol', '0.0005');

model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result.move('pg4', 2);
model.result('pg2').run;
model.result('pg4').run;
model.result.move('pg4', 3);
model.result('pg3').run;
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [2], 0);
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [1], 0);
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [2], 0);
model.result('pg2').setIndex('looplevel', [35], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [34], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [36], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [2], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [3], 0);
model.result('pg2').setIndex('looplevel', [4], 0);
model.result('pg2').setIndex('looplevel', [5], 0);
model.result('pg2').setIndex('looplevel', [6], 0);
model.result('pg2').setIndex('looplevel', [7], 0);
model.result('pg2').setIndex('looplevel', [8], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [9], 0);
model.result('pg2').setIndex('looplevel', [10], 0);
model.result('pg2').setIndex('looplevel', [11], 0);
model.result('pg2').setIndex('looplevel', [12], 0);
model.result('pg2').setIndex('looplevel', [13], 0);
model.result('pg2').setIndex('looplevel', [14], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [15], 0);
model.result('pg2').setIndex('looplevel', [16], 0);
model.result('pg2').setIndex('looplevel', [17], 0);
model.result('pg2').setIndex('looplevel', [18], 0);
model.result('pg2').setIndex('looplevel', [19], 0);
model.result('pg2').setIndex('looplevel', [20], 0);
model.result('pg2').run;
model.result.create('pg5', 'PlotGroup1D');
model.result('pg5').run;
model.result.move('pg5', 2);
model.result('pg5').create('ptgr1', 'PointGraph');
model.result('pg5').feature('ptgr1').selection.set([1]);
model.result('pg5').feature('ptgr1').set('expr', 'T_RR');
model.result('pg5').run;
model.result('pg5').run;
model.result('pg5').feature('ptgr1').set('expr', 'T_h');
model.result('pg5').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg5').run;
model.result('pg5').run;
model.result('pg5').feature('ptgr1').set('expr', 'pd(T_RR,x)');
model.result('pg5').run;
model.result.remove('pg5');

model.component('comp1').variable('var1').set('u_x', 'if(x==0,0,u/x)');
model.component('comp1').variable('var1').set('T_RR', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*((1-gamma)*(ux+1)^2+2*gamma*(u_x+1)^2-(1+gamma)*(J_c)^(2/3))*(ux+1)');
model.component('comp1').variable('var1').set('T_tt', '(J_c)^(-1/3)*E/(2*(1+gamma)*(1-2*gamma))*(gamma*(ux+1)^2+(u_x+1)^2-(1+gamma)*(J_c)^(2/3))*(u_x+1)');

model.label('Single_particle.mph');

model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [21], 0);
model.result('pg1').setIndex('looplevel', [23], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [22], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [18], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_tt');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [22], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [23], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [27], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [29], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'cx');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'cx-3*eta*c/cs_max_neg/R_const/T*T_h_x');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', '3*eta*c/cs_max_neg/R_const/T*T_h_x');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_h_x');
model.result('pg2').run;

model.component('comp1').physics('g2').create('cons1', 'Constraint', 0);
model.component('comp1').physics('g2').feature('cons1').selection.set([1]);
model.component('comp1').physics('g2').feature('cons1').setIndex('R', '-cx', 0);

model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'cx');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [30], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [32], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [33], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [32], 0);
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [2], 0);
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [3], 0);
model.result('pg4').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_tt');
model.result('pg3').run;
model.result('pg2').run;
model.result('pg1').run;

model.study('std1').feature('time').set('rtol', '0.0001');

model.component('comp1').mesh('mesh1').feature('size').set('custom', true);
model.component('comp1').mesh('mesh1').feature('size').set('table', 'cfd');
model.component('comp1').mesh('mesh1').feature('size').set('custom', true);
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '3E-5');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 25);

model.study('std1').feature('time').set('rtol', '0.0002');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1e-5');
model.component('comp1').mesh('mesh1').run;

model.study('std1').feature('time').set('rtol', '0.0005');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '3e-5');
model.component('comp1').mesh('mesh1').run;

model.study('std1').feature('time').set('rtol', 0.001);

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'hnlin');

model.component('comp1').mesh('mesh1').feature('size').set('custom', true);
model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-4');
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;
model.component('comp1').mesh('mesh1').run;

model.study('std1').feature('time').set('rtol', '0.0001');

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'const');

model.study('std1').feature('time').set('rtol', 0.001);

model.component('comp1').physics('g').feature('dir1').setIndex('weakConstraints', 0, 0);

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'hnlin');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '1E-5');
model.component('comp1').mesh('mesh1').run;

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol1').feature('t1').set('stabcntrl', true);

model.component('comp1').physics('g2').feature('cons1').active(false);
model.component('comp1').physics('g2').feature('cons1').active(true);

model.sol('sol1').feature('t1').feature('fc1').set('minstep', 1.0E-10);
model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'const');

model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [22], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [23], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [22], 0);
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c-cs_max_neg');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c/cs_max_neg');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [23], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [22], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'cx');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result('pg2').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg3').run;
model.result('pg3').feature('ptgr1').set('expr', 'T_RR');
model.result('pg3').run;

model.component('comp1').physics('g2').feature('cons1').active(false);

model.result('pg3').run;
model.result('pg3').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [27], 0);
model.result('pg2').setIndex('looplevel', [26], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [21], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [20], 0);
model.result('pg2').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx)', 0);

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [27], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [2], 0);
model.result('pg2').setIndex('looplevel', [101], 0);
model.result('pg2').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-3*eta*c/cs_max_neg/R_const/T*T_h_x)', 0);

model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [3], 0);
model.result('pg2').setIndex('looplevel', [20], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'cx');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', '3*eta*c/cs_max_neg/R_const/T*T_h_x');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', '3*eta*c/cs_max_neg/R_const/T');
model.result('pg2').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-3*eta*c/cs_max_neg/J_c^(2/3)/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-eta*c/cs_max_neg/J_c^(2/3)/R_const/T*T_h_x)', 0);
model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);

model.component('comp1').variable('var1').set('J_c', '1+omega*c');

model.result('pg2').run;

model.param.set('omega', '(3.8-1)/cs_max_neg');

model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'omega*c/J_c^(2/3)/R_const/T');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'J_c^(2/3)');
model.result('pg2').run;

model.label('Single_particle.mph');

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-1/3*omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);

model.result('pg1').run;

model.component('comp1').physics('g').feature.remove('cons1');

model.component('comp1').mesh('mesh1').feature('size').set('hmax', '3E-5');
model.component('comp1').mesh('mesh1').run;

model.param.set('C', '0.1');

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [30], 0);
model.result('pg1').run;
model.result.move('pg1', 1);
model.result('pg3').run;
model.result('pg1').run;
model.result.move('pg1', 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [14], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'cx');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [24], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [29], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [32], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_h');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [3], 0);
model.result('pg2').setIndex('looplevel', [33], 0);
model.result('pg2').setIndex('looplevel', [32], 0);
model.result('pg2').setIndex('looplevel', [31], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [28], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [23], 0);
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result.remove('pg3');
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').feature('lngr1').set('expr', 'u');
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [32], 0);
model.result('pg4').run;
model.result('pg4').setIndex('looplevel', [33], 0);
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').feature('lngr1').set('expr', 'ux+1');
model.result('pg4').run;
model.result('pg4').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;

model.component('comp1').variable('var1').set('u_x', 'if(x==0,0,ux)');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [100], 0);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [2], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').setIndex('looplevel', [4], 0);
model.result('pg1').setIndex('looplevel', [5], 0);
model.result('pg1').setIndex('looplevel', [5 6], 0);
model.result('pg1').setIndex('looplevel', [6 7], 0);
model.result('pg1').setIndex('looplevel', [7 8], 0);
model.result('pg1').setIndex('looplevel', [9], 0);
model.result('pg1').setIndex('looplevel', [10], 0);
model.result('pg1').setIndex('looplevel', [11], 0);
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_h_x');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [81], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_h');
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [3], 0);
model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [43], 0);
model.result('pg1').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').feature('lngr1').set('expr', 'u');
model.result('pg4').run;
model.result('pg2').run;
model.result.create('pg5', 'PlotGroup1D');
model.result('pg5').run;
model.result('pg5').create('lngr1', 'LineGraph');
model.result('pg5').feature('lngr1').set('expr', 'c');
model.result('pg5').feature('lngr1').selection.all;
model.result('pg5').run;

model.param.set('C', '1');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').setIndex('looplevel', [101], 0);
model.result('pg1').run;
model.result('pg5').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_h_x');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [101], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg1').run;
model.result('pg1').feature('lngr1').set('expr', 'T_tt');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature.remove('lngr1');
model.result('pg1').run;
model.result('pg1').create('ptgr1', 'PointGraph');
model.result('pg1').feature('ptgr1').selection.set([2]);
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', '');
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'T_tt');
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'all', 0);
model.result('pg1').run;
model.result('pg2').run;
model.result.move('pg2', 2);
model.result('pg5').run;
model.result('pg2').run;
model.result.move('pg2', 1);
model.result('pg5').run;

model.param.set('C', '100');

model.sol('sol1').runAll;

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'T_RR');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_RR');
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').selection.set([1]);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'T_h_x');
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'T_h');
model.result('pg1').run;

model.component('comp1').variable('var1').set('u_x', 'if(x==0,ux,u/x)');

model.param.set('C', '1');

model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'u_x-ux');
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'u/x');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'u');
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'u_x');
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'ux');
model.result('pg1').run;

model.component('comp1').variable('var1').set('u_x', 'if(x==0,0,u/x)');

model.param.set('C', '0.05');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg4').run;
model.result('pg5').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg4').setIndex('looplevelinput', 'all', 0);
model.result('pg4').run;
model.result('pg5').run;
model.result('pg5').run;
model.result('pg5').setIndex('looplevelinput', 'manual', 0);
model.result('pg5').setIndex('looplevel', [1], 0);
model.result('pg5').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53], 0);
model.result('pg5').run;

model.component('comp1').mesh('mesh1').feature('size').set('table', 'default');
model.component('comp1').mesh('mesh1').run;

model.param.set('C', '10');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').feature('ptgr1').set('expr', 'u');
model.result('pg1').run;
model.result('pg1').feature('ptgr1').selection.set([2]);
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [4], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4], 0);
model.result('pg2').run;

model.component('comp1').variable('var1').set('u_x', 'u/x');

model.study('std1').feature('time').set('rtol', '0.0005');
model.study('std1').feature('time').set('tlist', 'range(0,0.1,100)');

model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_tt');
model.result('pg2').run;
model.result('pg4').run;
model.result('pg4').run;
model.result('pg5').run;
model.result('pg5').run;
model.result('pg5').run;
model.result('pg5').setIndex('looplevel', [5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40], 0);
model.result('pg5').run;

model.param.set('C', '1');

model.result('pg5').run;
model.result('pg5').setIndex('looplevel', [1], 0);
model.result('pg5').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104], 0);
model.result('pg5').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,100)');
model.study('std1').feature('time').set('rtol', '0.0001');
model.study('std1').feature('time').set('usertol', false);

model.result('pg5').run;
model.result('pg5').run;
model.result('pg5').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11], 0);
model.result('pg5').run;

model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'auto');
model.sol('sol1').feature('t1').feature('fc1').set('minstep', 1.0E-4);
model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 250);
model.sol('sol1').feature('t1').feature('fc1').set('dtech', 'hnlin');

model.study.remove('std1');
model.study.create('std1');
model.study('std1').create('time', 'Transient');
model.study('std1').feature('time').activate('g', true);
model.study('std1').feature('time').activate('g2', true);
model.study('std1').feature('time').set('tlist', 'range(0,1,20)');

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
model.sol('sol1').feature('t1').set('tlist', 'range(0,1,20)');
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

model.sol('sol1').feature('t1').feature('fc1').set('jtech', 'onevery');

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

model.sol('sol1').feature('t1').feature('fc1').set('maxiter', 25);

model.study('std1').feature('time').set('usertol', true);
model.study('std1').feature('time').set('rtol', 0.001);

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

model.study('std1').feature('time').set('rtol', '0.00001');

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

model.param.set('omega', '(3.8-1)/cs_max_neg*0.1');

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

model.sol('sol1').runAll;

model.result('pg1').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,100)');

model.sol('sol1').runAll;

model.result('pg1').run;

model.study('std1').feature('time').set('tlist', 'range(0,1,1000)');

model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevelinput', 'manual', 0);
model.result('pg2').setIndex('looplevel', [1], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665 666 667 668 669 670 671 672 673 674 675 676 677 678 679 680 681 682], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461 462 463 464 465 466 467 468 469 470 471 472 473 474 475 476 477 478 479 480 481 482 483 484 485 486 487 488 489 490 491 492 493 494 495 496 497 498 499 500 501 502 503 504 505 506 507 508 509 510 511 512 513 514 515 516 517 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 533 534 535 536 537 538 539 540 541 542 543 544 545 546 547 548 549 550 551 552 553 554 555 556 557 558 559 560 561 562 563 564 565 566 567 568 569 570 571 572 573 574 575 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595 596 597 598 599 600 601 602 603 604 605 606 607 608 609 610 611 612 613 614 615 616 617 618 619 620 621 622 623 624 625 626 627 628 629 630 631 632 633 634 635 636 637 638 639 640 641 642 643 644 645 646 647 648 649 650 651 652 653 654 655 656 657 658 659 660 661 662 663 664 665], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [602], 0);
model.result('pg2').setIndex('looplevel', [461], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261 262 263 264 265 266 267 268 269 270 271 272 273 274 275 276 277 278 279 280 281 282 283 284 285 286 287 288 289 290 291 292 293 294 295 296 297 298 299 300 301 302 303 304 305 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325 326 327 328 329 330 331 332 333 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353 354 355 356 357 358 359 360 361 362 363 364 365 366 367 368 369 370 371 372 373 374 375 376 377 378 379 380 381 382 383 384 385 386 387 388 389 390 391 392 393 394 395 396 397 398 399 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 428 429 430 431 432 433 434 435 436 437 438 439 440 441 442 443 444 445 446 447 448 449 450 451 452 453 454 455 456 457 458 459 460 461], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [3], 0);
model.result('pg2').setIndex('looplevel', [129], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [133], 0);
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'J_c');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [490], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [471], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [456], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [350], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [351], 0);
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [360], 0);
model.result('pg2').run;

model.study('std1').feature('time').set('rtol', '0.00001');

model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [243], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'c');
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_h');
model.result('pg2').run;

model.label('Single_particle.mph');

model.param.set('omega', '(3.8-1)/cs_max_neg');
model.param.set('C', '10');

model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [3], 0);
model.result('pg2').setIndex('looplevel', [4], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4], 0);
model.result('pg2').run;

model.component('comp1').physics('g2').feature('gfeq1').setIndex('Ga', '-x^2*Ds*(cx-omega*c/J_c^(2/3)/R_const/T*T_h_x)', 0);

model.study('std1').feature('time').set('usertol', false);
model.study('std1').feature('time').set('tlist', 'range(0,0.1,1000)');

model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result.create('pg3', 'PlotGroup1D');
model.result('pg3').run;
model.result('pg3').create('lngr1', 'LineGraph');
model.result('pg3').feature('lngr1').selection.named('geom1_i1_dom');
model.result('pg3').feature('lngr1').set('expr', 'c');
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').setIndex('looplevelinput', 'manual', 0);
model.result('pg3').setIndex('looplevel', [25 26], 0);
model.result('pg3').setIndex('looplevel', [25], 0);
model.result('pg3').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25], 0);
model.result('pg3').run;

model.param.set('E', '40[GPa]');
model.param.set('C', '100');

model.result('pg2').run;
model.result('pg2').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').run;
model.result('pg3').setIndex('looplevel', [16], 0);
model.result('pg3').setIndex('looplevel', [15], 0);
model.result('pg3').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15], 0);
model.result('pg3').run;
model.result('pg3').run;
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_RR');
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [4 5 6 7 8 9 10 11 12 13 14 15], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4], 0);
model.result('pg2').setIndex('looplevel', [13], 0);
model.result('pg2').setIndex('looplevel', [1], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15], 0);
model.result('pg2').run;

model.param.set('Ds', '1e-17[m^2/s]');

model.result('pg1').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94], 0);
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94], 0);
model.result('pg2').run;
model.result('pg3').run;
model.result('pg3').setIndex('looplevel', [5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94], 0);
model.result('pg3').setIndex('looplevel', [1 2 3 4 5], 0);
model.result('pg3').setIndex('looplevel', [1], 0);
model.result('pg3').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94], 0);
model.result('pg3').run;

model.param.set('Ds', '1e-16[m^2/s]');
model.param.set('E', '70[GPa]');

model.result('pg3').run;
model.result('pg3').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14], 0);
model.result('pg3').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 14], 0);
model.result('pg2').run;
model.result('pg2').run;
model.result('pg2').feature('lngr1').set('expr', 'T_tt');
model.result('pg2').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').run;
model.result('pg1').setIndex('looplevelinput', 'manual', 0);
model.result('pg1').setIndex('looplevel', [14 15], 0);
model.result('pg1').setIndex('looplevel', [14], 0);
model.result('pg1').setIndex('looplevel', [1 2 3 4 5 6 7 8 9 10 11 12 13 