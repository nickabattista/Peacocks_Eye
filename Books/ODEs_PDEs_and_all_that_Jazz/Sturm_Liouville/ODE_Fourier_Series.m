function ODE_Fourier_Series()

%[-L,L]
x=-pi:0.025:pi;

%function, f(x) = x
y=1/4*x;

y1 = compute_Series(1,x);
y5 = compute_Series(5,x);
y10= compute_Series(10,x);
y25= compute_Series(25,x);
y50= compute_Series(50,x);

LW = 3;
plot(x,y,'-','LineWidth',LW); hold on;
plot(x,y1,'g-','LineWidth',LW); hold on;
plot(x,y5,'c-','LineWidth',LW); hold on;
plot(x,y10,'m-','LineWidth',LW); hold on;
plot(x,y25,'k-','LineWidth',LW); hold on;
plot(x,y50,'r-','LineWidth',LW); hold on;
plot(x,y,'-','LineWidth',LW); hold on;
title('\fontsize{20} Fourier Series of f(x) = x on [-pi,pi]');
xlabel('\fontsize{20} x');
ylabel('\fontsize{20} y');
legend('\fontsize{20} f(x)=x','\fontsize{20}1 term','\fontsize{20}3 terms','\fontsize{20}5 terms','\fontsize{20}10 terms','\fontsize{20} 20 terms');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Compute Fourier Series for f(x) = x on [-pi,pi]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function yVec = compute_Series(N,xVec)

for j=1:length(xVec)
    x = xVec(j);
    series = 0;
    for n=1:N
        series = series + ( 2/(n*(3+n^2)) )*(-1)^(n+1) * sin(n*x);
    end
    yVec(j) = series;
end