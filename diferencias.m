 syms x
f=input('Ingrese la funcion f(x): ');
x=input('Ingrese el valor que desea evaluar: ');
h=input('Ingrese el valor de variacion: ');
m1=(subs(f,x)-subs(f,x-h))/h;
m2=(subs(f,x+h)-subs(f,x))/h;
m3=(subs(f,x+h)-subs(f,x-h))/(2*h);
eval(m1);
eval(m2);
eval(m3);
fprintf('\t\t m1=%.4f \n \t\t m2=%.4f \n \t\t m3=%.4f',eval(m1),eval(m2),eval(m3))
