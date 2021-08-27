function [saida] = funcLoop (x)
  i = 0;
  
  disp('while');
  while(i<x)
    disp('valor de i :');
    disp(i);
    i=i+1;
  endwhile
  
  disp('for');
  for i = 1:5:100
    disp(i);
  endfor

endfunction