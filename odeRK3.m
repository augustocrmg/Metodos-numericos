function [x, y] = odeRK3(ODE,a,b,h,y1)
  x(1) = a;
y(1) = y1;
n = (b-a)/h;
for i = 1:n
x(i+1) = x(i) + h;
K1 = feval(ODE,x(i),y(i));
xhalf = x(i) + h/2;
yK1 = y(i) + K1*h/2;
K2 = feval(ODE,xhalf,yK1);
yK2 = y(i) - K1*h + 2*K2*h;
K3 = feval(ODE,xhalf,yK2);
y(i+1) = y(i) + (K1 + 4*K2 + K3)*h/6;
end