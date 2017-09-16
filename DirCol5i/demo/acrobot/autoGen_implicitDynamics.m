function [eqn1,eqn2] = autoGen_implicitDynamics(q1,q2,dq1,dq2,ddq1,ddq2,u,m1,m2,g,l1,l2)
%AUTOGEN_IMPLICITDYNAMICS
%    [EQN1,EQN2] = AUTOGEN_IMPLICITDYNAMICS(Q1,Q2,DQ1,DQ2,DDQ1,DDQ2,U,M1,M2,G,L1,L2)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    06-Apr-2016 08:50:40

t2 = cos(q1);
t3 = cos(q2);
t4 = sin(q1);
t5 = sin(q2);
t6 = dq1.^2;
t7 = dq2.^2;
t8 = l1.*t4;
t9 = l2.*t5;
t10 = t8+t9;
t11 = l1.^2;
t12 = ddq1.*l1.*t2;
t13 = ddq2.*l2.*t3;
t14 = t12+t13-l1.*t4.*t6-l2.*t5.*t7;
t15 = ddq1.*l1.*t4;
t16 = ddq2.*l2.*t5;
t17 = l1.*t2.*t6;
t18 = l2.*t3.*t7;
t19 = t15+t16+t17+t18;
eqn1 = -m2.*t14.*(l1.*t2+l2.*t3)-g.*m2.*t10-m2.*t10.*t19-g.*l1.*m1.*t4-m1.*t2.*t11.*(ddq1.*t2-t4.*t6)-m1.*t4.*t11.*(ddq1.*t4+t2.*t6);
if nargout > 1
    eqn2 = u-g.*l2.*m2.*t5-l2.*m2.*t3.*t14-l2.*m2.*t5.*t19;
end
