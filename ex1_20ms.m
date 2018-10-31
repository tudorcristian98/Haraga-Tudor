t=0:.02:8;
%voi reprezenta 4 perioade cu rezolutie temporara de 20ms
x=0.75*square(2*pi*0.5*t,25)-0.25;
%am notat x=square(2*pi*0.5*t) ce ia valori -1 sau 1 si am
%considerat o transformare liniara de forma y=a*x+b pentru a ajunge la cele
%doua nivele de minim si maxim dorite adica determinarea coeficietilor
%cum perioada este 2 secunde, frecventa este de 0.5 Hz
%iar prin 2*pi*0.5*t am modificat perioada functiei square care
%este initial 2*pi
plot(t,x)
axis([0 8 -2 2])
% am limitat axele de coordonate pe orizontala pentru a-mi afisa cele 4
% perioade
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal dreptunghiular cu factor de umplere 25%')