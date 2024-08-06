clear all;

omegaR = 800; 
gamma  = 10;
a      = 1;
c      = 340;

omegamin = 740;
omegamax = 820;
omegapoints = 800;
omega1  = linspace(omegamin, omegamax, omegapoints+1);

kBmin = -2*pi/a;
kBmax = 2*pi/a;
kBpoints = 800;
kB1     = linspace(kBmin, kBmax, kBpoints+1);

f1     = zeros(kBpoints, omegapoints);
f2     = zeros(kBpoints, omegapoints);


[X, Y] = meshgrid(kB1,omega1);

for omegaindex=0:omegapoints
    omega = omegamin+(omegamax-omegamin)*omegaindex/omegapoints;
    
    for kBindex=0:kBpoints
        kB = kBmin+(kBmax-kBmin)*kBindex/kBpoints;
        
        f1(omegaindex+1, kBindex+1) = -20*log(abs(det(ScatMatrix2(omega,omegaR,gamma,kB,a,c))));
%         f2(omegaindex+1, kBindex+1) = cond(ScatMatrix2(omega,omegaR,gamma,kB,a,c));
    end
end

figure;
set(gca,'FontName', 'Times', 'fontsize', 20);
imagesc(kB1,omega1,f1);
set(gca,'YDir','normal');
colormap jet;
ylim([740 820]);
xlim([kBmin kBmax]);
xlabel('k_B', 'fontsize', 20);
ylabel('\omega', 'fontsize', 20);

figure;
set(gca,'FontName', 'Times', 'fontsize', 20);
contourf(kB1,omega1,f1);
colormap jet;
ylim([740 820]);
xlim([kBmin kBmax]);
xlabel('k_B', 'fontsize', 20);
ylabel('\omega', 'fontsize', 20);


% figure;
% set(gca,'FontName', 'Times', 'fontsize', 20);
% contourf(kB1,omega1,f2);
% set(gca,'YDir','normal');
% colorbar;
% colormap jet;
% ylim([760 840]);
% xlim([kBmin kBmax]);
% xlabel('k_B', 'fontsize', 20);
% ylabel('\omega', 'fontsize', 20);