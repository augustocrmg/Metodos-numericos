function [A,B] = PivotaParcial2(A,B)
  
#A0 = [3 4 -2 3;4 9 -3 5;-2 -3 7 6;1 4 6 7];

#B = [2 ; 8 ; 10 ; 2]

A = [A B];
[n,n2]=size(A);

# Pivotando

for i=1:n-1
  for j=i+1:n
    if abs(A(j,i))>abs(A(i,i))
      T=A(j,:);
      A(j,:)=A(i,:);
      A(i,:)=T;
    endif
  endfor
endfor

 disp('Matriz após ser pivotada : ');
 disp(A);
 disp(' ');
 
# Fazendo a forma triangularizada

for k=1:n-1
   for i=k+1:n
     m=A(i,k)/A(k,k);
     for j=k:n+1
       A(i,j)=A(i,j)-m*A(k,j);
     endfor
   endfor
endfor

disp('Matriz na forma triangularizada : ');
disp(A);
disp(' ');
