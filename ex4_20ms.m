t=0:.02:12;
%reprezentarea o voi face cu rezolutia temporara de 20ms
y=sin(2*pi*1/3*t);
x=abs(y);
%abs(z) trebuie sa primeasca un vector cu valori complexe, insa cum numere
%reale sunt incluse in cele complexe am considerat folosirea celor doua
%functii ca fiind o metoda rapida
z=0.4*(x+y);
plot(t,z);
axis([0 12 -1 1])
% am limitat axele de coordonate pe orizontala pentru a-mi afisa cele 3
% perioade
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')