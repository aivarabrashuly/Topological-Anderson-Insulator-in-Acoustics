function B = BlochMatrix(N,kB,a)

B = zeros(2*N+2,2*N+2);

B(1,2*N+2) = exp(-1i*N*kB*a*cos(60));
B(2*N+2,1) = exp(1i*N*kB*a*cos(60));

for i = 1:N
    B(2*i+1,2*i) = exp(1i*kB*a);
    B(2*i,2*i+1) = exp(-1i*kB*a);
end

end