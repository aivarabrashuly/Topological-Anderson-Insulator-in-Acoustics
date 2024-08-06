clear all;

omega0  = 40;
gamma1  = 1;
gamma2  = 1;
omegamin = 20;
omegamax = 60;

omegapoints = 300;

x = omegamin+(omegamax-omegamin)*[0:omegapoints]/omegapoints;

S11    = zeros(1, omegapoints);
S12    = zeros(1, omegapoints);
S21    = zeros(1, omegapoints);
S22    = zeros(1, omegapoints);

for omegaindex=0:omegapoints
    omega=omegamin+(omegamax-omegamin)*omegaindex/omegapoints;

    S = ScatteringMatrix2(omega,omega0,gamma1,gamma2);
    S11(omegaindex+1)  = S(1,1);
    S12(omegaindex+1)  = S(1,2);
    S21(omegaindex+1)  = S(2,1);
    S22(omegaindex+1)  = S(2,2);
end

figure;
set(gca, 'FontName', 'Times', 'fontsize', 20);
plot(x, abs(S11), 'r.');
hold on;
plot(x, abs(S12), 'k-');
hold on;
plot(x, abs(S21), 'b*');
hold on;
plot(x, abs(S22), 'g--');
legend('|S_{11}|','|S_{12}|','|S_{21}|','|S_{22}|')
xlabel('\omega', 'fontsize', 20);
ylabel('Transmission', 'fontsize', 20);