clc; clear all;close all;

n=input('X ve Y dizinin boyutunu giriniz:')
x=zeros(1,n);
y=zeros(1,n);
for i=1:n
x(i)=input('X dizinin de�erlerini giriniz:')
end
for j=1:n
y(j)=input('Y dizinin de�erlerini giriniz:')
end
toplam_y=0;
for k=1:n
toplam_y=y(k)+toplam_y;%y dizisinin toplam�n�n elde edilmesi
end
fx=(toplam_y/n)*ones(1,n)%s�f�r�nc� dereceden modelenen yakla��k fonksiyonun elde edilmesi
plot(x,y,'k o',x,fx,'r')
legend('verilen','hesaplanan')
