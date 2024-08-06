function T = RibbonMatrix(N,omega,omegaR,vR,gamma,a,c)

T  = zeros(2*N,2*N);

M  = MatrixUnit(N,omega,omegaR,vR,gamma,a,c);

for i = 1:(2*N)
    for j = 1:(2*N)
        T(i,j) = M(i+1,j+1)+(M(i+1,2*N+2)*(M(2*N+2,j+1)*(1-M(1,1))+M(2*N+2,1)*M(1,j+1))+M(i+1,1)*(M(1,j+1)*(1-M(2*N+2,2*N+2))+M(1,2*N+2)*M(2*N+2,j+1)))/(-M(1,2*N+2)*M(2*N+2,1)+(1-M(1,1))*(1-M(2*N+2,2*N+2)));
    end
end
end