clc; clear; close all;
% y=a*e^(b*x)  þeklinde modellenen yaklaþýk üslü fonksiyonun belirlenmesi
%x=[0 1.8 4.38 6.27 8.71];
%y=[4 2 18 67 200];
n=input('X ve Y dizinin boyutunu giriniz:')
x=zeros(1,n);
y=zeros(1,n);
x_kare=zeros(1,n);
x_carpim_y=zeros(1,n);
for i=1:n
x(i)=input('X dizinin deðerlerini giriniz:')
end
for j=1:n
y(j)=input('Y dizinin deðerlerini giriniz:')
end
A(1,1)=length(x);
A(1,2)=sum(x);
A(2,1)=sum(x);
A(2,2)=sum(x.*x);
B(1,1)=sum(log(y));
B(2,1)=sum(x.*log(y));

a=inv(A)*B  %Modelenen yaklaþýk uslu fonksiyonun katsayýlarýnýn hesaplanmasý
F=exp(a(1,1))*exp(a(2,1)*x)%Katsayýlarý hesaplanan uslü fonksiyonun deðeri

%Uyumluluk Kontrolü r'nin karesinin hesabý
y_ort=sum(y)/n;
SSE=0;
SST=0;
for i=1:n
SSE=SSE+(F(i)-y(i))^2;%Hatalarýn toplam karesinin hesabý
SST=SST+(F(i)-y_ort)^2;%Sapmalarýn toplamý
end
r_kare=1-SSE/SST %Uyumluluk faktörünun  1 yakýnlýðýnýn tepiti
plot(x,y,'k o',x,F,'r')
title('Verilen ve Hesaplanan Yaklaþýk Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')