clear all
clc
%---------------------------------------------------------
h=1;
x=linspace(-2,2,5);
x1=3;
N=length(x);
for i=1:N
    y(i)=x(i)^3-2*x(i)^2-3*x(i);
    yd(i)=3*x(i)^2-4*x(i)-3;
end
fext=(y(3+h)-y(3-h))*inv(2*h);
% %---------------------------------------------------------
% 
%  esp=input('Constante:');
%  
% for i=1:N
%     for j=1:N
%         r(i,j)=abs(x(1,i)-x(1,j));
%         D(i,j)=(1+(esp*(r(i,j))^2))^(0.5);
%     end
% end
% Alpha=D\(y');
% %----------------------------------------------------------
% x=linspace(-2,2,5);
% 
% for i=1:N
%     for j=1:N
%         r1(i,j)=(x(1,i)-x(1,j));
%         H(i,j)=((esp^2)*(x(i)-x(j))/(1+(esp*(r1(i,j)^2)))^(0.5));
%     end
% end
% 
% %     for j=1:N
% %         H(3,j)=((esp^2)*(x(3)-x(j))/(1+(esp*(r(i,j)^2)))^(0.5))
% %     end
% 

%----------------------------------------------------------
% F=H*Alpha
% H(3,1:5)
% F(3)
%------------------------Diff----------------------------------
xg=linspace(0,6,100);

% Ng=length(xg);
% g(i)=xg(i)^3-2*xg(i)^2-3*xg(i);
% xgd(i)=3*xg(i)^2-4*xg(i)-3;

s=sin(xg);
sd=cos(xg);
xi=0:0.01:20;


%--------------------------------------------------------------
rr=(0:10:10);
yy=linspace(-2,-2,length(rr));

grid on
plot(xg,s,'r');
hold on
plot(xg,sd,'k')
hold on
plot(rr,yy,'r');
legend('sin(x)','cos(x)');
title('sin to cos');
% xlabel('Information of x')
% xv=-2:0.1:1;

% plot(xv,vv,'r')
% yext=linspace(fext,fext,6)
% plot(yext);
% xlabel('Shape parameter');
% ylabel('y=df(x)/dx');
% title('Comparison of Solutions');
% legend('Computed Results','Exact Solutions');
% grid on;
