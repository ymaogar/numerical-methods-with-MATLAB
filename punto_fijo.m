clc 
clear   
format long;
Xo=input('ingrese el valor inicial\n');
Iter=input('\ningrese el número de iteraciones\n');
Tol=input('\ningrese la tolerancia que desea\n');
Fun=input('\ningrese la funcion en comillas simples\n');
G=input('\ningrese la funcion despejada en comillas simples\n');


f=inline(Fun);
g=inline(G);


Yn=f(Xo);
Error=Tol+1;
Cont=0;
Z1=[Cont,Xo,Yn,Error];

Z=[Cont,Xo,Yn,Error];

while Yn~=0 & Error>Tol & Cont<Iter 
Xn=g(Xo); 
Yn=f(Xn); 
Error=abs((Xn-Xo)/Xn);
%Error=abs(Xn-X0);
Cont=Cont+1; 
Z(Cont,1)=Cont; 
Z(Cont,2)=Xn; 
Z(Cont,3)=Yn; 
Z(Cont,4)=Error; 
Xo=Xn; 
end
if Yn==0
fprintf('\n\nSOLUCION:\n')
fprintf('%g es raiz\n\n',Xo);
else
if Error<Tol
fprintf('\n\nSOLUCION:\n')
fprintf('%g es una aproximacion con un tolerancia de %g\n\n',Xo,Tol);
else
fprintf('\n\nSOLUCION:\n')   
fprintf('Fracaso en %g iteraciones\n\n',Iter);
end
end
fprintf('TABLA\n\n Cont                   Xn                    Yn                 Error Relativo\n\n')
 disp(Z1);
disp(Z);
ezplot(f);
grid on