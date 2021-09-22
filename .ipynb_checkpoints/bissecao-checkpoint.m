function sol = bissecao(a,b)
  #Calcula-se o valor da função nos extremos dos intervalos
  fa = funcSenXCos(a);
  fb = funcSenXCos(b);
  
  #Calcula-se o tamanho do intervalo de confinamento 
  int = abs(a-b);
  toldef=1e-6;
  #Teste para ver se tem raiz
  if (fa*fb) > 0
    disp("erro, o intervalo não contém raiz\n");
  else
    disp("O intervalo possui raiz\n");
    
    #Inicio do procedimento de redução do intervalo 
    while (int<toldef)
      #estimativa da raiz (valor intermediario)
      c = (a+b)/2;
      fc = funcSenXCos(c);
      #Teste para saber o lado da raiz 
      if (fa*fc) < 0
        b = c;
        fb=fc;
      else 
        a=c;
        fa=fc;
      endif
      #calcula o tamanho do intervalo
      int=abs(a-b);
      disp(c);   
     endwhile
      disp("Fim do procedimento de redução do intervalo");
      sol = (a+b)/2;
  endif
 endfunction