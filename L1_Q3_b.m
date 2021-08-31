# Script da alternativa 'b', da questão 3, da lista 1 da matéria de metódos 
# numéricos para engenharia da universidade de brasilia
#{
clear all;
F = inline('(sqrt(9+x)-3)/x');
a=0.005;
b=0.010;
imax=20;
tol=0.000001;

Fa=F(a);
Fb=F(b);

if Fa*Fb>0
  disp('Erro : A função tem o mesmo sinal nos pontos a e b')
else
  disp('iteration  a    b   (xNS)Solução     f(xNS)  Tolerância')
  
  for i=1:imax
    xNS=(a+b)/2;
    toli=(b-a)/2;
    FxNS=F(xNS);
    fprintf('%3i  %11.6f%11.6f%11.6f %11.6f%11.6f\n',i,a,b,xNS,FxNS,toli)
    if FxNS==0
      fprintf('Uma solução exata x=%11.6f foi obtida',xNS)
      break
    end
    if toli<tol
      break
    end
    if i==imax
      fprintf('Solução não obtida em in %i iterações',imax)
      break
    end
    if F(a)*FxNS<0
      b=xNS;
    else
      a=xNS;
    end
  end
end 
#}

format long
fprintf('\n');
valorVerdadeiro = ((sqrt(9+0.005)-3)/0.005)*((sqrt(9+0.005)+3)/(sqrt(9+0.005)+3))
fprintf('\n');
valorValidado = 0.166643
fprintf('\n');
fprintf('\n');
erroAbsoluto = abs(valorVerdadeiro-valorValidado)
fprintf('\n');
erroRelativo= erroAbsoluto/valorVerdadeiro
fprintf('\n');



























