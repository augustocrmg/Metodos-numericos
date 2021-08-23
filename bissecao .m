function sol = bissecao(a,b)
  
  %calcula-se o valor da funcao no extremos dos intervalos
  fa=funcaoteste(a);
  fb=funcaoteste(b);
  
  %calcula-se o tamanho do intervalo de confinamento
  int=abs(a-b);  
  toldef=0.0000001;
  
  it=1

  %teste para ver se tem raiz 
  if (fa*fb > 0) 
    disp("erro: o intervalo n�o contem raiz");
  else
    disp("o intervalo possui raiz: buscando raiz");
    
    %inicio do procedimento de reducao do intervalo
    while (int>toldef)
      %estimativa da raiz (valor intermediario)
      c=(a+b)/2
      fc=funcaoteste(c);
      
      %Teste para saber o lado da raiz    
      if (fa*fc) < 0
        b=c;
        fb=fc;
      else
        a=c;
        fa=fc;
      endif
      %calcula o tamanho do intervalo
      int=abs(a-b);
      it=it+1     
    endwhile
    disp("Fim do procedimento de reducao do intervalo");
    sol=(a+b)/2;
    
  endif
  
endfunction
