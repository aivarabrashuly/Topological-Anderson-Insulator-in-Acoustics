clear all;

omegaR   = 800; 
gamma    = 10;
a        = 0.6;
vR       = 7.5;
c        = 340;
N        = 10;

omegamin = 780;
omegamax = 840;
omegapoints = 500;
omega1  = linspace((omegamin-omegaR)/gamma, (omegamax-omegaR)/gamma, omegapoints+1);

kBmin = -4*pi/(3*a);
kBmax = 4*pi/(3*a);
kBpoints = 500;
kB1     = linspace(kBmin*a, kBmax*a, kBpoints+1);

f1     = zeros(kBpoints, omegapoints);

for omegaindex=0:omegapoints
    omega = omegamin+(omegamax-omegamin)*omegaindex/omegapoints;
    
    for kBindex=0:kBpoints
        kB = kBmin+(kBmax-kBmin)*kBindex/kBpoints;
        
        f1(omegaindex+1, kBindex+1) = -log(abs(det(xl)));
    end
end

figure;
set(gca,'FontName', 'Times', 'fontsize', 20);
imagesc(kB1,omega1,f1);
set(gca,'YDir','normal');
colormap jet;
ylim([(omegamin-omegaR)/gamma (omegamax-omegaR)/gamma]);
xlim([kBmin*a kBmax*a]);
xlabel('k_B\cdot a', 'fontsize', 20);
ylabel('(\omega-\omega_R)/\gamma', 'fontsize', 20);