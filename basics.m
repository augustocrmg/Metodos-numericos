#{
              #Comandos básicos


 help 
 disp(x) # deverá exibir valores na tela
 doc # abrirá a documentação do octave
 clear # limpar a memória
 whos # deve mostrar as varáveis existentes
 clc # limpa o terminal
 x = input('entrada') # atribui uma entrada a uma variável, no caso será x

 
              #Operação com variáveis 
              
              
 + - * / # operadores aritméticos
 X = [1 2 3] # alocação de um vetor em formato de linha
 X = [1;2;3] # alocação de um vetor em formato de coluna, ";" salta uma linha
 operadores vetoriais linha a linha:
 
      X = [1 2 3;3 3 3;3 3 3]   x*y x+y
      X = [1 2 3;3 3 3;3 3 3]   x-y x/y
      
 X' # a linha deve transpor o vetor
 ./ # deve fazer a operção elemento a elemento, não será vetorial 
 cross(X,Y) # produto vetorial entre duas matrizes
 
 
 
              #Operações matriciais
              
 Sendo :
          X = [1 2 3;4 5 6;7 8 9]
          Y = [9 9 9;9 9 9;9 9 9]
          
          
 X*Y # fará a operação valor a valor com a matrix X
 X/Y # fará a operação valor a valor com a matrix X
 X-Y # fará a operação valor a valor com a matrix X
 X+Y # fará a operação valor a valor com a matrix X
 
              #Operadores lógicos
 == # igual
 >,< # maior que, menor que
 >=, <= # maior igual, menor igual
 !=, ~= # diferente 
          
#}
 
               #Script básico 
 
disp('Script basico');
a = 2;
b = 4;
c = a+b;
 
function [saida] = basics (entrada_1,entrada_2)
       saida = entrada_1 + entrada_2; # operacao j realizada, e ja´ atribui o valor a variável de retorno 'saida'
       disp('Script rodou corretamente');      
       
endfunction