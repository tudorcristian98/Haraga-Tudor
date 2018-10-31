hold on;
%folosesc aceasta intructiune pentru a alipi graficele
%reprezentarea o voi face cu rezolutia temporara de 200ms
%am folosit duty 100% pentru a ramane un nivel constant
r1=rand(1);
r2=rand(1);
r3=rand(1);
r4=rand(1);
r5=rand(1);
r6=rand(1);
t1=0:.2:0.25;
t2=0.25:.2:0.5;
t3=0.5:.2:0.75;
t4=0.75:.2:1;
t5=1:.2:1.25;
t6=1.25:.2:1.5;
x1=-5*r1*square(2*pi*4*t1,100);
x2=-3*r2*square(2*pi*4*t2,100);
x3=-1*r3*square(2*pi*4*t3,100);
x4=1*r4*square(2*pi*4*t4,100);
x5=3*r5*square(2*pi*4*t5,100);
x6=5*r6*square(2*pi*4*t6,100);
plot(t1,x1);
plot(t2,x2);
plot(t3,x3);
plot(t4,x4);
plot(t5,x5);
plot(t6,x6);
axis([0 3 -7 7]);
%am interpretat cerinta astfel: nivelele -1,-3.-5  si 1,3,5 sunt valoarile maxime,
%respectiv minime pe care le poate lua nivelul in mod aleator 
%pe portini de interval de lungime 0,25 in ordinea mentionata in enunt
%pentru a avea valori aleatoare de nivel am folosit functia rand ce
%returneaza un numar din distributia uniforma 0;1, media acestei
%distributii este 0.5( majoritatea valoriilor vor fi in jurul mediei),
%probabilitatea ca nivelul sa fe -1,-3.-5  sau 1,3,5 este foarte mica, insa astfel nu
%se depaseste conditia de nivel maxim sau minim
plot(1.5+t1,x1);
plot(1.5+t2,x2);
plot(1.5+t3,x3);
plot(1.5+t4,x4);
plot(1.5+t5,x5);
plot(1.5+t6,x6);
%mi-am dat seama abia acum ca o deplasare in timp avea mai multa logica
%decat rescrierea codului...
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal dreptunghular multinivel aleator bazat pe distributia uniforma 0;1')
%am ales sa reprezint doua perioade, acestea se poate extinde procedand
%aseamnator