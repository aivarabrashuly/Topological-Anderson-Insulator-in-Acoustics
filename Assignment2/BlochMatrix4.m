function B = BlochMatrix4(kB,a)

B = zeros(4,4);

B(1,3) = exp(-1i*kB*a*cos(0));
B(2,4) = exp(-1i*kB*a*cos(60));
B(3,1) = exp(1i*kB*a*cos(0));
B(4,2) = exp(1i*kB*a*cos(60));

end