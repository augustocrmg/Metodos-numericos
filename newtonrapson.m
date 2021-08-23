function sol=newtonrapson(x1)
  
  %define tolerancia do zero da funcao
  tol=0.000001;
  
  %calculo do valor da funcao e sua respectiva derivada
  [y1,dy1dx1]=funcao2newton(x1);  
  
  it=1;
  
  while (abs(y1)>tol)
      
    %estimativa do proximo valor
    x2=x1-(y1/dy1dx1);
    %Substitui o valor de x1 para a proxima iteracao
    x1=x2;
    
    %calculo do valor da funcao e sua respectiva derivada
    [y1,dy1dx1]=funcao2newton(x1);
    
    %adiciona o valor da iteracao
    it=it+1
    y1
    
  endwhile
  
  %Solucao do ultimo valor calculado
  sol=x1;  
  
endfunction
