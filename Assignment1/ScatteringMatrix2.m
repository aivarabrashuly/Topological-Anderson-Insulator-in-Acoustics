function S=ScatteringMatrix2(omega,omega0,gamma1,gamma2)

S = zeros(2,2);

S(1,1) = (omega0-omega+1i*(gamma1-gamma2))/(omega-omega0+1i*(gamma1+gamma2));
S(1,2) = 2i*sqrt(gamma1*gamma2)/(omega-omega0+1i*(gamma1+gamma2));
S(2,1) = 2i*sqrt(gamma1*gamma2)/(omega-omega0+1i*(gamma1+gamma2));
S(2,2) = (omega0-omega+1i*(gamma2-gamma1))/(omega-omega0+1i*(gamma1+gamma2));

end