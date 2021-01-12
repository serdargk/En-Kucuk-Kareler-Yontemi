clc; clear all;close all;

n=input('X ve Y dizinin boyutunu giriniz:')
x=zeros(1,n);
y=zeros(1,n);
for i=1:n
x(i)=input('X dizinin deðerlerini giriniz:')
end
for j=1:n
y(j)=input('Y dizinin deðerlerini giriniz:')
end
toplam_y=0;
for k=1:n
toplam_y=y(k)+toplam_y;%y dizisinin toplamýnýn elde edilmesi
end
fx=(toplam_y/n)*ones(1,n)%sýfýrýncý dereceden modelenen yaklaþýk fonksiyonun elde edilmesi
plot(x,y,'k o',x,fx,'r')
legend('verilen','hesaplanan')
