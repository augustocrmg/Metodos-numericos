function dhdt=ODEHW8_19(t,h)
At=3.13; Ap=0.06; K1=300; K2=200; rho=1000;
C=pi/12; g=9.81;
dhdt=(K1+K2*cos(C*t)-rho*Ap*sqrt(2*g*h))/(At*rho);