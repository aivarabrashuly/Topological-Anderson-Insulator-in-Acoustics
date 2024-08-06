function S = ScatteringMatrix3(omega,omegaR,vR,gamma)

S      = zeros(3,3);

S(1,1) = -1+(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(1,2) = exp(1i*4*pi/3)*(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+exp(1i*2*pi/3)*(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(1,3) = exp(1i*2*pi/3)*(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+exp(1i*4*pi/3)*(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(2,1) = exp(1i*2*pi/3)*(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+exp(1i*4*pi/3)*(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(2,2) = -1+(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(2,3) = exp(1i*4*pi/3)*(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+exp(1i*2*pi/3)*(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(3,1) = exp(1i*4*pi/3)*(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+exp(1i*2*pi/3)*(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(3,2) = exp(1i*2*pi/3)*(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+exp(1i*4*pi/3)*(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
S(3,3) = -1+(2i*gamma/3)/(omega-omegaR-vR+1i*gamma)+(2i*gamma/3)/(omega-omegaR+vR+1i*gamma);
end