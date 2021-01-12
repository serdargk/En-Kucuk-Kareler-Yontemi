clc; clear all; close all;
%g(x)=a1+a2x+a3x2 �eklinde ikinci dereceden modellenen yakla��k fonksiyonun belirlenmesi
%x=[0 1 4 6 9];
%y=[-4 0 8 23 54];
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
A(1,1)=length(x);%x dizinin uzunlu�u
A(1,2)=sum(x);%x dizisinin elemanlar�n�n toplam�
A(1,3)=sum(x.^2);%x dizisinin elemanlar�n�n kareleri toplam�
A(2,1)=sum(x);%x dizisinin elemanlar�n�n toplam�
A(2,2)=sum(x.^2);%x dizisinin elemanlar�n�n karelerinin toplam�
A(2,3)=sum(x.^3);%x dizisinin elemanlar�n�n k�plerinin toplam�
A(3,1)=sum(x.^2);%x dizisinin elemanlar�n�n karelerinin toplam�
A(3,2)=sum(x.^3);%x dizisinin elemanlar�n�n k�plerinin toplam�
A(3,3)=sum(x.^4);%x dizisinin elemanlar�n�n 4. derecelerinin toplam�
B(1,1)=sum(y);%%x dizisinin elemanlar�n�n toplam�
B(2,1)=sum(x.*y);%x ve y dizisinin elemanlar�n�n noktasal olarak
%�arp�mlar�n�n toplam�n�n elde edilmesi
B(3,1)=sum((x.^2).*y);%x dizisinin elemanlar�n�n karelerinin y dizisinin elemanlar� ile noktasal olarak
%�arp�mlar�n�n toplam�n�n elde edilmesi
a=inv(A)*B%�kinci dereceden modellenen yakla��k fonksiyonun katsay�lar�n�n hesaplanmas�
gx=a(1,1)+a(2,1)*x+a(3,1)*x.^2%Katsay�lar�n hesaplanan ikinci dereceden modellenen yakla��k fonksiyonun de�eri
%Uyumluk Kontrol� r'nin karesinin hesab�
y_ort=sum(y)/n
SSE=0;
SST=0;
for i=1:n
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
