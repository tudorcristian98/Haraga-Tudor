t=0:.2:12;
%reprezentarea o voi face cu rezolutia temporara de 200ms
%am ales sa reprezint 3 perioade ale semnalului initial,putem spune ca
%dubla redresare va injumatatii perioada noului semnal
x=1.5*abs(sin(2*pi*0.25*t));
%abs(z) trebuie sa primeasca un vector cu valori complexe, insa cum numere
%reale sunt incluse in cele complexe am considerat folosirea celor doua
%functii ca fiind o metoda rapida
plot(t,x)
axis([0 12 -2 2])
% am limitat axele de coordonate pe orizontala pentru a-mi afisa cele 3
% perioade
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal sinusoidal dublu redresat')