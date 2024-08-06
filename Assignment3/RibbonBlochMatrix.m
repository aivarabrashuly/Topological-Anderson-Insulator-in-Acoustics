function B = RibbonBlochMatrix(N,kB,a)

B = zeros(2*N,2*N);

for i = 1:N
    B(2*i,2*i-1) = exp(1i*kB*a);
    B(2*i-1,2*i) = exp(-1i*kB*a);
end

end