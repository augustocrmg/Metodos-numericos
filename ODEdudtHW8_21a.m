function dudt = ODEdudtHW8_21a(t,y,u)
g=32.2; T=7000; w=3000-80*t;
dudt = (T-w-0.008*g*u.^2)*g./w;