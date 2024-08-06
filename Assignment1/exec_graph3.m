clear all;

omegaR  = 800;
gamma  = 0.4;
vRmin = 0;
vRmax = 0.6;
omega=omegaR;

vRpoints = 456;

x = vRmin+(vRmax-vRmin)*[0:vRpoints]/vRpoints;

S21    = zeros(1, vRpoints);
S31    = zeros(1, vRpoints);
for vRindex=0:vRpoints
    vR=vRmin+(vRmax-vRmin)*vRindex/vRpoints;

    S    = ScatteringMatrix3(omega,omegaR,vR,gamma);
    S21(vRindex+1)     = S(2,1);
    S31(vRindex+1)     = S(3,1);
end

figure;
set(gca, 'FontName', 'Times', 'fontsize', 20);
plot(x, abs(S21), 'b-');
hold on;
plot(x, abs(S31), 'k.');
ylim([0 1]);
text(0.53,0.5,'\omega=\omega_R', 'fontsize', 16)
legend('|S_{21}|','|S_{31}|');
xlabel('\omega', 'fontsize', 20);
ylabel('Transmission', 'fontsize', 20);

% figure;
% set(gca, 'FontName', 'Times', 'fontsize', 20);
% plot(x, abs(S21opt), 'b-');
% hold on;
% plot(x, abs(S31opt), 'k*');
% ylim([0 1]);
% xlim([omegaR-5*1.38564 omegaR+5*1.38564]);
% legend('|S_{21}|','|S_{31}|');
% xlabel('\omega', 'fontsize', 20);
% ylabel('Transmission', 'fontsize', 20);