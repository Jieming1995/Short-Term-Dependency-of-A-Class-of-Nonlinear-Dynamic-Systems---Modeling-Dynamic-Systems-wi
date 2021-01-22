mu=4*pi*1e-7;
xps=1.33;
a=1e-7;%100nm half thick
b=5*1e-6;%5um radi
d=12*1e-9;% 12 nm diameter of the adsorbed magnetic nanoparticles
p=2980;% 2.98g/ml=2980kg/m3 density
eta=1.34;%viscosity between 1.3-41.9 mPa.s

v=pi*b^2*2*a;%volumn  of plate 
% Pab=(b/a)^2;
% S=(2/a)*(Pab-1)^(-0.5)*((tan((Pab-1)^(0.5)))^(-1));
% f=4*(1-Pab)/(3*(2-Pab*a*S));
% f=1; 
Pab=b/a;
xi=sqrt(Pab^2-1)/Pab;

S=(2*b)*(tan(xi)^(-1)/xi);
f=4*(1-Pab^2)/(3*(S-2*Pab^2));


h=40*1000/(4*pi);% oersteds change to Tesla


i=2.5*pi*p*a*b^4;%g.cm^2
c1=2*pi*mu*xps^2*((a+d)*(b+d)^2-a*b^2)/(3*(xps+1))/i*1e-6;
c2=-(2*pi*p*a*b^3*9.8/i*1e-6);
c3=6*eta*v*f/i*1e-7;