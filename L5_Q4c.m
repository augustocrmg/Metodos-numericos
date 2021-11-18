clear all;dF=inline('x-y');
h=0.5; N=3;
x(1) = 0; y(1) = 1;
for i = 1:N
  x(i+1) = x(i) + h;
  K1= dF(x(i),y(i));
  K2= dF(x(i)+0.5*h,y(i)+K1*h/2);
  K3= dF(x(i)+0.5*h,y(i)+K2*h/2);
  K4= dF(x(i+1),y(i)+K3*h);
  y(i+1) = y(i) + (K1+2*K2+2*K3+K4)*h/6;
end
x
y
error=x+2*exp(-x)-1-y