clc; clear all;close all;

x=[0 1 2 4 7];
y=[1 4 7 10 20];
fx=(sum(y)/length(y))*ones(1,5)%sýfýrýncý dereceden modelenen yaklaþýk fonksiyonun elde edilmesi

plot(x,y,'k o',x,fx,'r')
title('Verilen ve Hesaplanan Yaklaþýk Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')
