f=input('Ingrese la funcion f(x)= ','s');
a=input('Ingrese el limite inferior de la integral: ');
b=input('Ingrese el limite superior de la integral: ');
n=input('Ingrese el numero de intervalos: ');
h=(b-a)/n; g=inline(f);%para que sea una funcion lineal
s=g(a);
for i=1:1:n-1
    s=s+2*g(a+i*h);  %sumatoria 
end
s=(s+g(b))*h/2;%ultimo valor de la ecuacion I
 fprintf('La integral es: %.4f\n',s);