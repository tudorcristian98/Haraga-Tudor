hold on;
%folosesc aceasta intructiune pentru a alipi graficele
%reprezentarea o voi face cu rezolutia temporara de 20ms
%am folosit duty 100% pentru a ramane un nivel constant
r1=rand(1);
r2=rand(1);
r3=rand(1);
r4=rand(1);
r5=rand(1);
r6=rand(1);
r7=rand(1);
r8=rand(1);
t1=0:.02:0.25;
t2=0.25:.02:0.5;
t3=0.5:.02:0.75;
t4=0.75:.02:1;
t5=1:.02:1.25;
t6=1.25:.02:1.5;
t7=1.5:.02:1.75;
t8=1.75:.02:2;
x1=-7*r1*square(2*pi*4*t1,100);
x2=-5*r2*square(2*pi*4*t2,100);
x3=-3*r3*square(2*pi*4*t3,100);
x4=-1*r4*square(2*pi*4*t4,100);
x5=1*r5*square(2*pi*4*t5,100);
x6=3*r6*square(2*pi*4*t6,100);
x7=5*r7*square(2*pi*4*t7,100);
x8=7*r8*square(2*pi*4*t8,100);
plot(t1,x1);
plot(t2,x2);
plot(t3,x3);
plot(t4,x4);
plot(t5,x5);
plot(t6,x6);
plot(t7,x7);
plot(t8,x8);
axis([0 4 -7 7]);
%am interpretat cerinta astfel: nivelele -1,-3,-5,-7  si 1,3,5,7 sunt valoarile maxime,
%respectiv minime pe care le poate lua nivelul in mod aleator 
%pe portini de interval de lungime 0,25 in ordinea mentionata in enunt
%pentru a avea valori aleatoare de nivel am folosit functia rand ce
%returneaza un numar din distributia uniforma 0;1, media acestei
%distributii este 0.5( majoritatea valoriilor vor fi in jurul mediei),
%probabilitatea ca nivelul sa fe -1,-3,-5,-7  sau 1,3,5,7 este foarte mica, insa astfel nu
%se depaseste conditia de nivel maxim sau minim
plot(2+t1,x1);
plot(2+t2,x2);
plot(2+t3,x3);
plot(2+t4,x4);
plot(2+t5,x5);
plot(2+t6,x6);
plot(2+t7,x7);
plot(2+t8,x8);
%mi-am dat seama abia acum ca o deplasare in timp avea mai multa logica
%decat rescrierea codului...
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal dreptunghular multinivel aleator bazat pe distributia uniforma 0;1')
%am ales sa reprezint doua perioade, acestea se poate extinde procedand
%aseamnator