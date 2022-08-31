A=input('Ingrese la matriz: ');
        b=input('Ingrese la matriz de terminos independientes: ');
        x=input('Ingrese la solucion inicial: ');
        tolerancia=input('Ingrese la tolerancia: ');
        m=input('Ingrese numero maximo de iteraciones: ');
        n=length(x);
        for k=1:m
            w=x;
            for i=1:n
                s=A(i,1:i-1)*x(1:i-1)+A(i,i+1:n)*x(i+1:n);
                x(i)=(b(i)-s)/A(i,i);
            end
            if norm(x-w,inf)<tolerancia
                return
            end
            fprintf('\n la solucion del sistema en la iteración %4.0f\n',k)
            for i=1:n
                fprintf('       x(%1.0f)=%6.8f\n',i,x(i))
            end
        end 