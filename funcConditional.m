function [saida] = funcConditional (x,y)
  if (x == y)
    disp ('iguais');
  elseif (x >= y)
    disp('x é maior')
  elseif (x <= y)
    disp('y é maior')
  endif
endfunction