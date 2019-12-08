%Machine Problem 5 (Piecewise Function 2)
%Input sin((3*n*pi)/100)
%Generating a vector
n = (0:1:199); 
%User Input Function
xfunction = input('Input the Function (X(n)): ');
y = zeros(size(xfunction));
%Main plot of the Function
%For loop for the Piecewise Function
for i =1:length(n)
    if n(i) == 0
        y(i) = -1.5*xfunction(i)+2*xfunction(i+1)-0.5*xfunction(i+2);%First Function
    elseif n(i)<=198
        y(i) = 1.5*xfunction(i)-2*xfunction(i-1)+0.5*xfunction(i-1); %Second Function
    else
        y(i) = 1.5*xfunction(i) - 2*xfunction(i-1)+0.5*xfunction(i-2);%Third Function
    end
end
plot (n,xfunction,'-b');hold on;
plot (n,y,'y-');hold off
legend ('x-axis','y-axis');
xlabel('n');
title('Graph of the Functions X and Y');

