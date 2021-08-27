
function sol=alternativeNewtonRapson()
  Fun=inline('8-4.5*(x-sin(x))');
  D_Fun=inline('-4.5*(1-cos(x))');
  x0=2.5;
  Err=1e-5;
  imax=50;
  
  for i=1: imax
    xi=x0-feval(Fun,x0)/feval(D_Fun,x0);
    if abs((xi-x0)/x0)<Err
      xz=xi;
      break
    endif
    x0=xi;
  endfor

  fprintf('Solução xz = %11.6f',xz)
  fprintf(' , obtida em %i iterações',i)