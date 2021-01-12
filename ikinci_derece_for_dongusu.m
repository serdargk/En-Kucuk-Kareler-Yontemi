clc; clear all; close all;
%g(x)=a1+a2x+a3x2 �eklinde ikinci dereceden modellenen yakla��k fonksiyonun belirlenmesi
x=[0 1 4 6 9];
y=[-4 0 8 23 54];

for j=1:3   
for i=1:3
A(j,i)=sum(x.^(i+j-2));%A matrisinin elemanlar�n�n hesab�
end
end
A(1,1)=length(x);  %A matrisinin ilk eleman� 

B(1,1)=sum(y);
for k=1: 2
B(k+1,1)=sum((x.^k).*y);%B matrisinin elemanlar�n�n hesab�
end


a=inv(A)*B%�kinci dereceden modellenen yakla��k fonksiyonun katsay�lar�n�n hesaplanmas�
gx=0;
for m=2: 3   
gx=gx+a(m,1)*x.^(m-1);
end
gx=a(1,1)+gx
%Uyumluk Kontrol� r'nin karesinin hesab�
y_ort=sum(y)/5
SSE=0;
SST=0;
for i=1:5
SSE=SSE+(gx(i)-y(i))^2;%Hatalar�n toplam karesinin hesab�
SST=SST+(gx(i)-y_ort)^2;%Sapmaalar�n toplam�
end
r_kare=1-SSE/SST %Uyumluluk fakt�r�nun  1 yak�nl���n�n tepiti
plot(x,y, 'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yakla��k Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')