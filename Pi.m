function ret=Pi(iteracoes)
  format long;
  ret=0;
  faltante=iteracoes;
  for i=1:iteracoes,
    ret=ret+((-1)^(i-1))*(1/(2*i-1));
    faltante=faltante-1;
    #disp(faltante)
  endfor
  ret=4*ret;
  
  valorVerdadeiro = pi
  valorValidado = ret
  erroAbsoluto = abs(valorVerdadeiro-valorValidado)
  erroRelativo= erroAbsoluto/valorVerdadeiro
endfunction