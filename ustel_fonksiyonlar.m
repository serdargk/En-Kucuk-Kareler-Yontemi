clc; clear; close all;
% y=a*x^b �eklinde modellenen yakla��k �stel fonksiyonun belirlenmesi
%x=[2 3 4 6 7 9];
%y=[10 20 30 60 90 120];
n=input('X ve Y dizinin boyutunu giriniz:')
x=zeros(1,n);
y=zeros(1,n);
x_kare=zeros(1,n);
x_carpim_y=zeros(1,n);
for i=1:n
x(i)=input('X dizinin de�erlerini giriniz:')
end
for j=1:n
y(j)=input('Y dizinin de�erlerini giriniz:')
end
A(1,1)=length(x);
A(1,2)=sum(log(x));
A(2,1)=sum(log(x));
A(2,2)=sum(log(x).*log(x));
B(1,1)=sum(log(y));
B(2,1)=sum(log(x).*log(y));

a=inv(A)*B  %Modelenen yakla��k ustel fonksiyonun katsay�lar�n�n hesaplanmas�
F=exp(a(1,1))*(x.^a(2,1))%Katsay�lar� hesaplanan ustel fonksiyonun de�eri

%Uyumluluk Kontrol� r'nin karesinin hesab�
y_ort=sum(y)/n;
SSE=0;
SST=0;
for i=1:5
SSE=SSE+(F(i)-y(i))^2;%Hatalar�n toplam karesinin hesab�
SST=SST+(F(i)-y_ort)^2;%Sapmaalar�n toplam�
end
r_kare=1-SSE/SST %Uyumluluk fakt�r�nun  1 yak�nl���n�n tepiti
plot(x,y,'k o',x,F,'r')
legend('verilen','hesaplanan')
