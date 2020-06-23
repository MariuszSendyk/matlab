% Przedmiot: Techniki Obliczeniowe 
% Kierunek studiów: Mechatronika 
% Semestr: 2
% Rok akademicki: 2019/2020
% Data (dzień-miesiąc-rok): 23-06-2020
%
% Imię:             Mariusz
% Nazwisko:         Sendyk
% Numer albumu ZUT: 46767

p = 997; % [kg/m^3] Gęstość wody

g = 9.81; % [m/s^2] Przyspieszenie ziemskie

d = 1; % [m] średnica bańki

r = d/2; % [m] ramię bańki

N = d*1000; % Częstość próbkowania co 1 mm

h = linspace(0,d,N); % [m] Głębokość zanurzenia od powierzchni do całkowitego zanurzenia bańki

V = ((pi.*h.^2)/3).*(3.*r-h); % [m^3] objętość zanurzonej części bańki

Fw = p*g*V; % [N] Siła wyporu

plot(h,Fw,'LineWidth',2);  % Wykres siły wyporu w funkcji zanurzenia
ylabel('Fw [N]')
xlabel('h [m]')
grid on