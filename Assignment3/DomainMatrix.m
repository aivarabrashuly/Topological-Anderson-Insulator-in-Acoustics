function T = DomainMatrix(omega,omegaR,vR,gamma,a,c)

M1 = MatrixUnit(2,omega,omegaR,vR,gamma,a,c);
M2 = MatrixUnit(2,omega,omegaR,-vR,gamma,a,c);

T = zeros(10,10);

for i = 1:5
    for j = 1:5
        T(i,j) = M1(i,j)+M1(i,6)*M1(6,j)*M2(1,1)/(1-M1(6,6)*M2(1,1));
        T(i+5,j+5) = M2(i+1,j+1)+M2(i+1,1)*M2(1,j+1)*M1(6,6)/(1-M1(6,6)*M2(1,1));
    end
end

for i = 1:5
    for j = 6:10
        T(i,j) = M1(i,6)*M2(1,j-4)/(1-M1(6,6)*M2(1,1));
        T(j,i) = M2(j-4,1)*M1(6,i)/(1-M1(6,6)*M2(1,1));
    end
end

end