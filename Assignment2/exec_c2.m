clear all;

omegaR   = 800; 
gamma    = 7;
vR       = 1.4;
a        = 0.6;
c        = 340;

omegamin = 760;
omegamax = 840;
omegapoints = 600;
omega1  = linspace((omegamin-omegaR)/gamma, (omegamax-omegaR)/gamma, omegapoints+1);

kBmin = -pi/a;
kBmax = pi/a;
kBpoints = 600;
kB1     = linspace(kBmin*a, kBmax*a, kBpoints+1);

f1     = zeros(kBpoints, omegapoints);

% [X, Y] = meshgrid(kB1,omega1);

for omegaindex=0:omegapoints
    omega = omegamin+(omegamax-omegamin)*omegaindex/omegapoints;
    
    for kBindex=0:kBpoints
        kB = kBmin+(kBmax-kBmin)*kBindex/kBpoints;
        
        f1(omegaindex+1, kBindex+1) = -log(abs(det(ScatteringMatrix4(omega,omegaR,vR,gamma,a,c)-BlochMatrix4(kB,a))));
%         f1(omegaindex+1, kBindex+1) = cond(ScatteringMatrix4(omega,omegaR,vR,gamma,a,c)-BlochMatrix4(kB,a));
%         f2(kBindex+1, omegaindex+1) = det(inv(ScatteringMatrix4(omega,omegaR,vR,gamma)-BlochMatrix4(kB,a,b)));
    end
end

figure;
set(gca,'FontName', 'Times', 'fontsize', 20);
imagesc(kB1,omega1,f1);
set(gca,'YDir','normal');
colorbar;
colormap jet;
ylim([(omegamin-omegaR)/gamma (omegamax-omegaR)/gamma]);
xlim([kBmin*a kBmax*a]);
xlabel('k_B', 'fontsize', 20);
ylabel('\omega', 'fontsize', 20);