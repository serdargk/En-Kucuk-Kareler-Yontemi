clc; clear; close all;
% logaritmik(y=a+blnx)þeklinde modellenen yaklaþýk logaritmik fonksiyonun belirlenmesi
%x=[2 3 4 6 7 9];
%y=[10 20 30 60 90 120];
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
A(1,2)=sum(log(x));
A(2,1)=sum(log(x));
A(2,2)=sum(log(x).*log(x));
B(1,1)=sum(y);
B(2,1)=sum(y.*log(x));
a=inv(A)*B  %Modelenen yaklaþýk logaritmik fonksiyonun katsayýlarýnýn hesaplanmasý

F=a(1,1)+(a(2,1).*log(x))%Katsayýlarý hesaplanan logaritmik  fonksiyonun deðeri

%Uyumluluk Kontrolü r'nin karesinin hesabý
y_ort=sum(y)/n;
SSE=0;
SST=0;
for i=1:n
SSE=SSE+(F(i)-y(i))^2;%Hatalarýn toplam karesinin hesabý
SST=SST+(F(i)-y_ort)^2;%Sapmaalarýn toplamý
end
r_kare=1-SSE/SST %Uyumluluk faktörünun  1 yakýnlýðýnýn tepiti
plot(x,y,'k o',x,F,'r')
title('Verilen ve Hesaplanan Yaklaþýk Logaritmik Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')
