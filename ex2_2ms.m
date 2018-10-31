t=0:.002:15;
%voi reprezenta 3 perioade ale semnalului cu perioada de 5 secunde si
%rezolutia temporala de 2 ms
x=1.5*sawtooth(2*pi*0.2*t)-0.5;
%am notat x=sawtooth(2*pi*0.2*t)inclusa in intervalul -1:1 si am
%considerat o transformare liniara de forma y=a*x+b pentru a ajunge la cele
%doua nivele de minim si maxim dorite
%cum perioada este 5 secunde, frecventa este de 0.2 Hz
%iar prin 2*pi*0.2*t am modificat perioada functiei sawtooth care
%este initial 2*pi
%nu am reusit sa indeplinesc conditia de panta 
plot(t,x)
axis([0 15 -3 3])
% am limitat axele de coordonate pe orizontala pentru a-mi afisa cele 3
% perioade
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal triunghiular periodic')