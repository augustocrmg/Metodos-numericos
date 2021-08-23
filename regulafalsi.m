function sol = regulafalsi(a,b)
  
  %calcula-se o valor da funcao no extremos dos intervalos
  fa=funcaoteste(a);
  fb=funcaoteste(b);
  
  %calcula-se o tamanho do intervalo de confinamento
  int=min(abs(fa),abs(fb));  
  toldef=0.0000001;
  
  it=1

  
  %teste para ver se tem raiz 
  if (fa*fb > 0) 
    disp("erro: o intervalo nao contem raiz");
  else
    disp("o intervalo possui raiz: buscando raiz");
    
    %inicio do procedimento de reducao do intervalo
    while (int>toldef)
      %estimativa da raiz pelo metodo da bissecao
      %c=(a+b)/2
      
      %estimativa da raiz (valor de x em que a secante cruza o eixo x)
      c=(a*fb-b*fa)/(fb-fa)
      
      fc=funcaoteste(c);
      
      %Teste para saber o lado da raiz    
      if (fa*fc) < 0
        b=c;
        fb=fc;
      else
        a=c;
        fa=fc;
      endif
      %calcula o novo tamanho do intervalo
      int=min(abs(fa),abs(fb)); 
      it=it+1          
    endwhile
    disp("Fim do procedimento de reducao do intervalo");
    sol=(a*fb-b*fa)/(fb-fa);
    
  endif
  
endfunction
