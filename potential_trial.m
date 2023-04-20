clc;
clear;
%Program to calculate Electric Field Intensity E=-del(V)
%Consider a point charge Q=+1C at origin(0,0)
%Potential function is V=(9e9*Q)/r;
%r is the distance from the point charge, where V is calculated
% r=sqrt(x^2+y^2)
[x,y] = meshgrid(-1:.08:1, -1:.08:1);  %x-y plane of (-1,1) to (-1,1)with 26x26 points
% Calculating distance function r=sqrt(x^2+y^2) and potential function.
% x, y, r, V, E are matrices of size(26x26)
size_x=size(x,1);
for i=1:size_x
    for j=1:size_x
    r(i,j)=sqrt(x(i,j)^2+y(i,j)^2);% distance
    V(i,j)=9e9/r(i,j);% potential V at various r
    end
end
figure(1)
surf(x,y,V); %value of V(z axis) at various(x,y)-within (-1,1), (-1,1)
title('Absolute potential wrt x-y plane due to a point charge at origin');
figure(2)
[Ex,Ey]=gradient(V);%Electric field intensity at various points
Ex=Ex*(-1); %E in the direction of unit vector ax
Ey=Ey*(-1); %E in the direction of unit vector ay
E=sqrt(Ex^2+Ey^2); % magnitude of E at various points
contour (x,y,V); %equipotential countour wrt x-y plane
hold on;
quiver(x,y,Ex,Ey); %Variation of potential
title('Equipotential contour and voltage gradient');
