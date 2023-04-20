clc; clear; 
% Coulomb's law F = (Q1*Q2*9e9)/(r^2) ar
%Electric Field Intensity dE = (dQ*9e9)/(r^2) ar
%Potential dV = (dQ*9e9)/r

%Point charge dQ= Q
%Line charge  dQ = row_l * dl
%Surface charge dQ = row_s * ds

dQ = input('Enter charge in Coulombs: ')
P1 = input('Enter coordinates of the charge location: ');
P2 = input('Enter coordinates of the destination: ');
r = sqrt((P2(1)-P1(1))^2 + (P2(2)-P1(2))^2 +(P2(3)-P1(3))^2);
ax = P2(1)-P1(1)/r;
ay = P2(2)-P1(2)/r;
az = P2(3)-P1(3)/r;

dEx = ((dQ*9e9)/(r^2))*ax;
dEy = ((dQ*9e9)/(r^2))*ay;
dEz = ((dQ*9e9)/(r^2))*az;
dV = (dQ*9e9)/r;
sprintf('Electric field intensity = %.2fax + %.2fay + %.2faz V/m',dEx, dEy, dEz)
sprintf('Potential = %.2f V',dV)
