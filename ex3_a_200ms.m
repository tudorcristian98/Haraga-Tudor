hold on;
%folosesc aceasta intructiune pentru a alipi graficele
%reprezentarea o voi face cu rezolutia temporara de 200ms
r1=rand(1);
r2=rand(1);
t1=0:.2:0.25;
t2=0.25:.2:0.5;
x1=r1*square(2*pi*4*t1,100);
%am folosit duty 100% pentru a ramane un nivel constant
x2=-r2*square(2*pi*4*t2,100);
axis([0 1 -1 1]);
%am interpretat cerinta astfel: nivelele -1 si 1 sunt valoarea maxima,
%respectiv minima pe care o poate lua nivelul in mod aleator 
%pe portini de intervale de lungimi 0,25
%pentru a avea valori aleatoare de nivel am folosit functia rand ce
%returneaza un numar din distributia uniforma 0;1, media acestei
%distributii este 0.5( majoritatea valoriilor vor fi in jurul mediei),
%probabilitatea ca nivelul sa fe -1 sau +1 este foarte mica, insa astfel nu
%se depaseste conditia de nivel maxim sau minim
plot(t1,x1);
plot(t2,x2);
t3=0.5:.2:0.75;
t4=0.75:.2:1;
x3=r1*square(2*pi*4*t3,100);
x4=-r2*square(2*pi*4*t4,100);
plot(t3,x3);
plot(t4,x4);
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal dreptunghular multinivel aleator bazat pe distributia unforma 0;1')
%am ales sa reprezint doua perioade, acestea se poate extinde procedand
%aseamnator