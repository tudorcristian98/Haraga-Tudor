hold on;
%folosesc aceasta intructiune pentru a alipi graficele
%reprezentarea o voi face cu rezolutia temporara de 20ms
%am folosit duty 100% pentru a ramane un nivel constant
r1=rand(1);
r2=rand(1);
r3=rand(1);
r4=rand(1);
t1=0:.02:0.25;
t2=0.25:.02:0.5;
t3=0.5:.02:0.75;
t4=0.75:.02:1;
x1=-3*r1*square(2*pi*4*t1,100);
x2=-r2*square(2*pi*4*t2,100);
x3=r3*square(2*pi*4*t3,100);
x4=3*r4*square(2*pi*4*t4,100);
plot(t1,x1);
plot(t2,x2);
plot(t3,x3);
plot(t4,x4);
axis([0 2 -3 3]);
%am interpretat cerinta astfel: nivelele -1,+1 si -3,+3 sunt valoarile maxime,
%respectiv minime pe care o poate lua nivelul in mod aleator 
%pe portini de interval de lungime 0,25
%pentru a avea valori aleatoare de nivel am folosit functia rand ce
%returneaza un numar din distributia uniforma 0;1, media acestei
%distributii este 0.5( majoritatea valoriilor vor fi in jurul mediei),
%probabilitatea ca nivelul sa fe -1,+1 sau -3,+3 este foarte mica, insa astfel nu
%se depaseste conditia de nivel maxim sau minim
t5=1:.02:1.25;
t6=1.25:.02:1.5;
t7=1.5:.02:1.75;
t8=1.75:.02:2;
x5=-3*r1*square(2*pi*4*t5,100);
x6=-r2*square(2*pi*4*t6,100);
x7=r3*square(2*pi*4*t7,100);
x8=3*r4*square(2*pi*4*t8,100);
plot(t5,x5);
plot(t6,x6);
plot(t7,x7);
plot(t8,x8);
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal dreptunghular multinivel aleator bazat pe distributia uniforma 0;1')
%am ales sa reprezint doua perioade, acestea se poate extinde procedand
%aseamnator