clear all
clc
h=1;
x=linspace(-2,2,5);
x1=3;
N=length(x);
esp=input('Constante:');
 for i=1:N
    y(i)=x(i)^3-2*x(i)^2-3*x(i);
    yd(i)=3*x(i)^2-4*x(i)-3;
end
for i=1:N
    for j=1:N
        r(i,j)=abs(x(1,i)-x(1,j));
        D(i,j)=(1+(esp*(r(i,j))^2))^(0.5);
    end
end
Alpha=D\(y');

 for i=1:N
     for j=1:N
         r1(3,j)=(x(1,3)-x(1,j));
         H(3,j)=((esp^2)*(x(i)-x(j))/(1+(esp*(r1(3,j)^2)))^(0.5));
     end
 end