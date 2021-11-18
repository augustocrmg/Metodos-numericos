function [t, x, y] = Sys2ODEsRK4(ODE1,ODE2,a,b,h,x1,y1)
t(1)=a; x(1) = x1;
y(1) = y1;
n = (b-a)/h;
for i = 1:n
t(i+1) = t(i) + h;
tm = t(i) + h/2;
Kx1 = feval(ODE1,t(i),x(i),y(i));
Ky1 = feval(ODE2,t(i),x(i),y(i));
Kx2 = feval(ODE1,tm,x(i)+Kx1*h/2,y(i)+Ky1*h/2);
Ky2 = feval(ODE2,tm,x(i)+Kx1*h/2,y(i)+Ky1*h/2);
Kx3 = feval(ODE1,tm,x(i)+Kx2*h/2,y(i)+Ky2*h/2);
Ky3 = feval(ODE2,tm,x(i)+Kx2*h/2,y(i)+Ky2*h/2);
Kx4 = feval(ODE1,t(i+1),x(i)+Kx3*h,y(i)+Ky3*h);
Ky4 = feval(ODE2,t(i+1),x(i)+Kx3*h,y(i)+Ky3*h);
x(i+1) = x(i) + (Kx1 + 2*Kx2 + 2*Kx3 + Kx4)*h/6;
y(i+1) = y(i) + (Ky1 + 2*Ky2 + 2*Ky3 + Ky4)*h/6;
end