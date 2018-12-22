clc %clc curata fereastra de mesaje la fiecare noua rulare a programului
%in cazul prezent al unui semanal triunghiular simetric monoalernant
%de durata D=8 secunde inseamna ca perioada trebuie sa fie de T=32 s lucru ce
%duce la modificarea perioadei de 40 s din enunt
T=32;
f=1/T;
w=2*pi*f;
t = 0:0.0001:2*T;
%voi reprezenta doua perioade din semnal, pasul de discretizare al
%semnalului continuu este dt=10^-4.
N=50;
C = zeros(1,2*N+1);
%am initializat vectorul de coeficienti cu valori nule
x=(sawtooth(w*t,0.5)+abs(sawtooth(w*t,0.5)))/2
%semnal triunghiular simetric monoredresat de perioada pricipala T=32 s si
%durata D=8 s, semnal obtinut dintr-un semnal triunghiular simetric ce a
%fost monoredresat
for n = -N:N
    C(n+N+1) = 1/T * integral(@(t)(1/2*sawtooth(w*t,0.5)+1/2*abs(sawtooth(w*t,0.5))).*exp(-1j*n*w*t),0,T) ;
    %calculul propriu-zis al coeficientiilor cu formula analitica
    re = real(C(n+N+1));
    im = imag(C(n+N+1));
    if abs(re)<10^-10
        re = 0;
     end
    if abs(im)<10^-10
        im = 0;
    end
    %daca partea reala sau imaginara a unui coeficient este extrem de mica
    %atunci o voi neglija
    C(n+N+1) = re+1j*im ;
    %ca index intr-un vector nu pot avea valori negative de aceea indexul
    %fiecarui element din vector este cu 51 mai mare ca indexul teoretic ai
    %coeficientului, exemplu:C(-50)|teoretic=C(1)|in program, insa acest
    %lucru nu modifica valorile coeficientiilor si functionalitatea
    %programului
end
xr = 0;
for n = -N:N
    xr = xr + C(n+N+1)*exp(1j*n*w*t) ;
end
%am recostruit semnalul initial cu 100 de componente
figure(1);
hold on
plot(t,real(xr),':g',t,imag(xr),':g');%reprezentarea semnalului reconstruit
plot(t,x);%reprezentarea semnalului initial
axis([-1 65 -0.1 1.1])%delimitarea axelor de coordonate
xlabel("Timpul[s]");
ylabel("x(t)-linie continua si xr(t)-linie intrerupra");
title("Suprapunerea semnalelor x(t) si xr(t)")
%semnalul triunghiular se poate aproxima cu mai putine componente( in jur
%de 15-20) si astfel diferenta dintre x si xr este aproape inexistenta
hold off
%prin hold on/off pot reprezenta mai multe grafice in acelasi sistem de
%coordonate
figure(2);
hold on
stem((-N:N)*w,2*abs(C));
%functia stem este utilizata pentru reprezentarea functilor sau a
%seturi de date cu valori discrete
plot((-N:N)*w,2*abs(C),'-go');%infasuratoarea realizate din segmente de dreapta
xlabel('Pulsatia w [rad/s]');
ylabel('Amplitudinile Ak=2|C(nw)|');
axis([-8.1 8.1 0 0.55])% delimitarea axelor de coordonate
title('Spectrul de Amplitudini');
hold off
%In concluzie, analiza Fourier a semnalelor analogice(continue) ne permite
%sa exprimam orice semnal ce indeplineste criteriul de suficienta Diriclet
%intr-o suma finita de semnale elementare lucru ce este folositor in
%analiza comoda a circuitelor in domeniul fazorial sau reconstruirea unui
%semnal necunoscut pe baza spectrului sau de amplitudini si de faze ce pot
%fi aflate cu un analizator de spectru