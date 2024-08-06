function S=ScatMatrix2(omega,omega0,gamma,kB,a,c)

S = zeros(2,2);

S(1,1) = ((omega0-omega)/(omega-omega0+1i*(gamma+gamma)))*exp(1i*omega*a/c);
S(1,2) = 2i*gamma/(omega-omega0+1i*(gamma+gamma))*exp(1i*omega*a/c)-exp(-1i*kB*a);
S(2,1) = 2i*gamma/(omega-omega0+1i*(gamma+gamma))*exp(1i*omega*a/c)-exp(1i*kB*a);
S(2,2) = ((omega0-omega)/(omega-omega0+1i*(gamma+gamma)))*exp(1i*omega*a/c);

end