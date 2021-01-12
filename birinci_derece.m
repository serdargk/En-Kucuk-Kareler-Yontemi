clc; clear; close all;
%g(x)=a1+a2x �eklinde birinci dereceden modellenen  yakla��k fonksiyonun belirlenmesi
x=[0 1 3 4 9];
y=[1 7 9 15 24];
A(1,1)=length(x);
A(1,2)=sum(x);
A(2,1)=sum(x);
A(2,2)=sum(x.*x)
B(1,1)=sum(y);
B(2,1)=sum(x.*y);
a=inv(A)*B;  %Birinci dereceden modelenen yakla��k fonksiyonun katsay�lar�n�n hesaplanmas�
gx=a(1,1)+a(2,1)*x %Katsay�lar� hesaplanan fonksiyonun de�eri

%Uyumluluk Kontrol� r'nin karesinin hesab�
y_ort=sum(y)/5;
SSE=0;
SST=0;
for i=1:5
SSE=SSE+(gx(i)-y(i))^2;%Hatalar�n toplam karesinin hesab�
SST=SST+(gx(i)-y_ort)^2;%Sapmalar�n toplam�
end
r_kare=1-SSE/SST %Uyumluluk fakt�r�nun  1 yak�nl���n�n tepiti
plot(x,y,'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yakla��k Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')


