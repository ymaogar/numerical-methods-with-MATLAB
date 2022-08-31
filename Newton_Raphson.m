syms x
f=input('Ingrese la funcion f(x)= ');
n=input('Ingrese el numero de iteraciones: ');
b=input('Ingrese el valor inicial de Xo: ');
df=diff(f);
f=inline(f);
df=inline(df);
for i=1:1:n
xn=b-(f(b)/df(b));
b=xn;

end
fprintf('El valor de la ultima iteracion es: %.4f',b);