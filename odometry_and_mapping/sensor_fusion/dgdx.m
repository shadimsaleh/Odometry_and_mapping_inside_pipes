function fcn = dgdx(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,z_vo1,z_vo2,z_vo3,z_vo4,z_vo5,z_vo6,z_vo7)
%DGDX
%    FCN = DGDX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,Z_VO1,Z_VO2,Z_VO3,Z_VO4,Z_VO5,Z_VO6,Z_VO7)

%    This function was generated by the Symbolic Math Toolbox version 6.0.
%    28-Jul-2016 21:45:54

t2 = x1.^2;
t3 = x2.^2;
t4 = x3.^2;
t5 = x4.^2;
t6 = t2+t3+t4+t5;
t7 = 1.0./t6.^2;
t8 = 1.0./t6;
t9 = t8.*z_vo6;
t10 = t8.*z_vo5;
t11 = t8.*z_vo7;
t12 = t7.*x1.*x2.*z_vo6.*2.0;
t13 = t7.*x1.*x2.*z_vo5.*2.0;
t14 = t7.*x1.*x3.*z_vo7.*2.0;
t15 = t7.*x2.*x3.*z_vo6.*2.0;
t16 = t7.*x2.*x3.*z_vo5.*2.0;
t17 = t7.*x1.*x3.*z_vo6.*2.0;
t18 = t7.*x1.*x4.*z_vo5.*2.0;
t19 = t7.*x3.*x4.*z_vo7.*2.0;
t20 = t7.*x2.*x4.*z_vo7.*2.0;
t21 = t7.*x2.*x4.*z_vo5.*2.0;
t22 = t7.*x3.*x4.*z_vo6.*2.0;
t23 = t7.*x1.*x4.*z_vo7.*2.0;
t24 = t7.*x2.*x4.*z_vo6.*2.0;
t25 = t7.*x1.*x2.*z_vo7.*2.0;
t26 = t7.*x1.*x3.*z_vo5.*2.0;
t27 = t7.*x1.*x4.*z_vo6.*2.0;
t28 = t13+t17+t23;
t29 = t8.*x1.*z_vo6;
t30 = t8.*x2.*z_vo7;
t57 = t3.*t7.*z_vo6.*2.0;
t31 = t9+t16+t25-t57;
t58 = t3.*t7.*z_vo7.*2.0;
t32 = t11-t12+t21-t58;
t33 = t3.*t7.*z_vo5.*2.0;
t34 = -t10+t15+t20+t33;
t35 = t7.*x2.*x3.*z_vo7.*2.0;
t36 = t8.*x2.*z_vo6;
t60 = t4.*t7.*z_vo5.*2.0;
t37 = t10-t14+t15-t60;
t38 = t4.*t7.*z_vo6.*2.0;
t39 = -t9+t16+t19+t38;
t61 = t4.*t7.*z_vo7.*2.0;
t40 = t11+t22+t26-t61;
t41 = t7.*x3.*x4.*z_vo5.*2.0;
t42 = t8.*x2.*z_vo5;
t43 = t8.*x3.*z_vo6;
t44 = t8.*x4.*z_vo7;
t64 = t5.*t7.*z_vo5.*2.0;
t45 = t10+t20+t27-t64;
t65 = t5.*t7.*z_vo6.*2.0;
t46 = t9-t18+t19-t65;
t47 = t5.*t7.*z_vo7.*2.0;
t48 = -t11+t21+t22+t47;
t49 = t23-t24+t41;
t50 = t8.*x1.*z_vo5;
t51 = t8.*x4.*z_vo6;
t52 = t11+t12-t26-t2.*t7.*z_vo7.*2.0;
t53 = t9+t18-t25-t2.*t7.*z_vo6.*2.0;
t54 = t10+t14-t27-t2.*t7.*z_vo5.*2.0;
t55 = t8.*x1.*z_vo7;
t56 = t8.*x3.*z_vo5;
t59 = t13+t24-t35;
t62 = t17+t35-t41;
t63 = t8.*x3.*z_vo7;
fcn = reshape([z_vo1,z_vo2,z_vo3,z_vo4,t50+t51+x1.*(t10+t14-t2.*t7.*z_vo5.*2.0-t7.*x1.*x4.*z_vo6.*2.0)-x3.*(t11+t12-t2.*t7.*z_vo7.*2.0-t7.*x1.*x3.*z_vo5.*2.0)+x4.*(t9+t18-t2.*t7.*z_vo6.*2.0-t7.*x1.*x2.*z_vo7.*2.0)-t28.*x2-t8.*x3.*z_vo7,t29+t30-t28.*x3+t52.*x2+t53.*x1-t54.*x4-t8.*x4.*z_vo5,-t36+t55+t56-t28.*x4+t52.*x1-t53.*x2+t54.*x3,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-z_vo2,z_vo1,z_vo4,-z_vo3,t42+t43+t44+t31.*x3+t32.*x4-t34.*x2-x1.*(t13+t24-t7.*x2.*x3.*z_vo7.*2.0),-t36+t55+t56-t31.*x2+t32.*x1-t34.*x3+t59.*x4,-t29-t30-t31.*x1-t32.*x2-t34.*x4-t59.*x3+t8.*x4.*z_vo5,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-z_vo3,-z_vo4,z_vo1,z_vo2,t36-t37.*x3-t39.*x2-t40.*x1-x4.*(t17+t35-t7.*x3.*x4.*z_vo5.*2.0)-t8.*x1.*z_vo7-t8.*x3.*z_vo5,t42+t43+t44+t37.*x2-t39.*x3+t40.*x4-t62.*x1,t50+t51-t63+t37.*x1-t39.*x4-t40.*x3+t62.*x2,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-z_vo4,z_vo3,-z_vo2,z_vo1,t29+t30+t46.*x1-t45.*x4-t48.*x2+t49.*x3-t8.*x4.*z_vo5,-t50-t51+t63-t45.*x1-t46.*x4-t48.*x3-t49.*x2,t42+t43+t44+t45.*x2+t46.*x3-t49.*x1-t48.*x4,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0],[28, 28]);