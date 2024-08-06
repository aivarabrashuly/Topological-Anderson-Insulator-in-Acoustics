clear all;

omegaR  = 800;
gamma  = 1;
omegamin = 790;
omegamax = 810;
vR=0;
vRopt=gamma/sqrt(3);

omegapoints = 456;

x = omegamin+(omegamax-omegamin)*[0:omegapoints]/omegapoints;

S21    = zeros(1, omegapoints);
S31    = zeros(1, omegapoints);
S21opt = zeros(1, omegapoints);
S31opt = zeros(1, omegapoints);

for omegaindex=0:omegapoints
    omega=omegamin+(omegamax-omegamin)*omegaindex/omegapoints;

    S    = ScatteringMatrix3(omega,omegaR,vR,gamma);
    Sopt = ScatteringMatrix3(omega,omegaR,vRopt,gamma);
    S21(omegaindex+1)     = S(2,1);
    S31(omegaindex+1)     = S(3,1);
    S21opt(omegaindex+1)  = Sopt(2,1);
    S31opt(omegaindex+1)  = Sopt(3,1);
end

figure;
set(gca, 'FontName', 'Times', 'fontsize', 20);
plot(x, abs(S21), 'b-');
hold on;
plot(x, abs(S31), 'k.');
ylim([0 1]);
xlim([omegaR-5*1.38564 omegaR+5*1.38564]);
legend('|S_{21}|','|S_{31}|');
xlabel('\omega', 'fontsize', 20);
ylabel('Transmission', 'fontsize', 20);

figure;
set(gca, 'FontName', 'Times', 'fontsize', 20);
plot(x, abs(S21opt), 'b-');
hold on;
plot(x, abs(S31opt), 'k.');
ylim([0 1]);
xlim([omegaR-5*1.38564 omegaR+5*1.38564]);
legend('|S_{21}|','|S_{31}|');
xlabel('\omega', 'fontsize', 20);
ylabel('Transmission', 'fontsize', 20);