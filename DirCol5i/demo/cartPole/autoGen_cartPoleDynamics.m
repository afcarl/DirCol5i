function eqns = autoGen_cartPoleDynamics(ddx,q,dq,ddq,u,m1,m2,g,l)
%AUTOGEN_CARTPOLEDYNAMICS
%    EQNS = AUTOGEN_CARTPOLEDYNAMICS(DDX,Q,DQ,DDQ,U,M1,M2,G,L)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    13-Apr-2016 09:28:47

t2 = cos(q);
t3 = sin(q);
eqns = [u-ddx.*m1-m2.*(ddx-dq.^2.*l.*t3+ddq.*l.*t2);-l.*m2.*(ddq.*l+ddx.*t2+g.*t3)];
