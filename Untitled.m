clear all
clc
%---------------------------------------------------------
h=1;
x=linspace(-2,2,5);
x1=3;
N=length(x);

for i=1:N
    f(i)=x(i)^3-2*x(i)^2-3*x(i);
end
fext=(f(3+h)-f(3-h))*inv(2*h);
%----------------------------------------------------------
 esp=input('Shap:');
for i=1:N
    for j=1:N
        r(i,j)=abs(x(1,i)-x(1,j));
        B(i,j)=sqrt(1+((esp^2)*(r(i,j))^2));
    end
end
Alpha=B\(f');
%----------------------------------------------------------

for i=1:N
    for j=1:N
      H(i,j)=[(esp^2)*(x(i)-x(j))]/sqrt(1+(esp*(r(i)-r(j))^2));
    end
end
format short
 for i=3:3
    for j=1:N
      H1(3,j)=[(esp^2)*(x(3)-x(j))]/sqrt(1+(esp*(r(3)-r(j))^2));
    end
end
%----------------------------------------------------------
F=H*Alpha;
H1
F1= H1*Alpha
%----------------------------------------------------------
% xx=0:0.01:6;
% yext=linspace(fext,fext,6)
% yinter=interp1(x,y,F','spline')
% plot(x,yinter,'r');
% hold on
% plot(yext);
% hold on
% xlim auto
% ylim auto
% hold on
% xlabel('Shape parameter');
% ylabel('y=df(x)/dx');
% title('Comparison of Solutions');
% legend('Computed Results','Exact Solutions');
% grid on;
