% Przedmiot: Techniki Obliczeniowe 
% Kierunek studiów: Mechatronika 
% Semestr: 2
% Rok akademicki: 2019/2020
% Data (dzień-miesiąc-rok): 05-06-2020
%
% Imię:             Mariusz
% Nazwisko:         Sendyk
% Numer albumu ZUT: 46767

f = @(x,y, dx, dy) 1 ./ (1 + (x-dx).^2 + (y-dy).^2);
g = @(x,y) f(x,y, 0, 0) + 0.5 * f(x, y, 4, 0);

x = -6 : 0.1 : 6;
y = -6 : 0.1 : 6;

[xx, yy] = meshgrid(x,y);

zz = g(xx, yy);

surf(xx, yy, zz);
axis off
