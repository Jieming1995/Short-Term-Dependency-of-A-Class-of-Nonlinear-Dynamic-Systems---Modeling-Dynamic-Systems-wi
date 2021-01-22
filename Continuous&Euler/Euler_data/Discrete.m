
c1=4.2816*1e-7;
c2=1.568;
c3=5.7534;
di=0.01;

S=999; 

phi1(1)=0; %angle
phi2(1)=0; %angular velocity
H=20 %Control input (magnetic strength).   
for s=1:S 
   hinput(s)=H*1000/(4*pi);
 % get the input from value table
   phi1(s+1)=phi1(s)+di*phi2(s);
   phi2(s+1)=phi2(s)+di*(-c3*phi2(s)+c2*cos(phi1(s))+c1*(hinput(s)*abs(hinput(s))*sin(2*phi1(s))));
%phi2(t+1)=phi2(t)+di*(-c3*phi2(t)+c2*hinput(t)/(abs(hinput(t)))*cos(phi1(t))+c1*(hinput(t)*(abs(hinput(t))))*sin(2*phi1(t)));

end

%Try different control inputs H=20,40,60,80. and 
%save angle sequence phi1 as d20,d40,d60,d80.  
