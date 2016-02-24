clear all
clc
Tm = 1000; % melting Temperature
T0 = 300;  % Ambient Temperature
tn = 100;  % Total Time  
dt = 1;   %Time Step
xn = 120;  %length of mold
alpha = 1; 
dx = 2; 
k = alpha*dt/(dx^2); % must be less then or equal to 0.5
T = zeros(xn+1,tn);
k = 0.3; 
a = 1:xn-1;
for i = 1:tn
    T(1,i) = Tm;
end
for i = 2 : xn+1
    T(i,1) = T0;
end

for t = 1:tn-1
 for x = 2:xn-1
         T(x,t+1) = T(x,t) + k*(T(x+1,t)-2*T(x,t)+T(x-1,t));
 end
  T(xn,t+1) = T(xn,t)+k*(T0 - 2*T(xn,t)+T(xn-1,t)); 
end

xa = [0:-1:-(xn-1)];
a(1) = 1000;
for j = 1 : dt : tn
 for i = 2:xn
     a(i) = T(i,j);    
 end
    figure(1), clf
    plot(xa,a,'-r+','Linewidth',1,'Markersize',5);
    xlabel('Distance(m)');
    ylabel('Temperature(degree Celsius)');
    title(['Temperature Vs Distance Curve in Mold at time : ',num2str(j)]);
    drawnow
end
 


    
