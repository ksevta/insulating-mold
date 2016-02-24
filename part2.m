Tm = 1000;   %melting point of mold (K)
T0 = 300;    %Ambient Temperature (K)
Ps = 2700;   %density of metal(Aluminium) (Kg/m^3)
H = 398;     %heat of fusion(Aluminium)  ( Kj/Kg)

Pm = 7600;   %density of mold(mild steel) (Kg/m^3)
Km = 50.2;   %Thermal Conductivity(mild steel) W/(m.K)
Cm = 510.78; %Specific Heat(J/(Kg.K))

t = 1 : 100;
s = (2/sqrt(pi))*((Tm-T0)/(Ps*H))*sqrt(Km*Pm*Cm)*sqrt(t);
figure(1)
plot(t,s,'-r*','Linewidth',2,'Markersize',3);
xlabel('t(seconds)');ylabel('S(m)'),title('Solidification thickness Vs Time');
figure(2)
plot(sqrt(t),s,'-b+','Linewidth',2,'Markersize',3);
xlabel('sqrt(t)');ylabel('S(m)'),title('Solidification thickness vs sqrt(Time)');
figure(3)
plot(t,s,'-r*','Linewidth',2,'Markersize',3);
xlabel('t');
ylabel('S');
hold on
plot(sqrt(t),s,'-b+','Linewidth',2,'Markersize',3);

