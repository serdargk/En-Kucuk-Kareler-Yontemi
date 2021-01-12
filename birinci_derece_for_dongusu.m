clc; clear; close all;
%g(x)=a1+a2x �eklinde  birinci dereceden modellenen yakla��k fonksiyonun belirlenmesi
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

toplam_x=0;
for k=1:n
    toplam_x=toplam_x+x(k);%x dizisinin elemanlar�n�n toplam�n�n elde edilmesi
end
toplam_y=0;
for k=1:n
    toplam_y=toplam_y+y(k);%y dizisinin elemanlar�n�n toplam�n�n elde edilmesi
end
x_kare=x.*x;
toplam_x_kare=0;
for k=1:n
toplam_x_kare=toplam_x_kare+x_kare(k);%x dizisinin elemanlar�n�n karelerinin toplam�n�n elde edilmesi
end

x_carpim_y=x.*y;
toplam_x_carpim_y=0;
for k=1:n
toplam_x_carpim_y=toplam_x_carpim_y+x_carpim_y(k);%x ve y dizisinin elemanlar�n�n s�rayla(noktasal olarak)
%�arp�mlar�n�n toplam�n�n elde edilmesi
end

A(1,1)=n;
A(1,2)= toplam_x;
A(2,1)= toplam_x;
A(2,2)=toplam_x_kare;
B(1,1)=toplam_y;
B(2,1)=toplam_x_carpim_y;
a=inv(A)*B;  %Birinci dereceden modellenen yakla��k fonksiyonun katsay�lar�n�n hesaplanmas�
gx=a(1,1)+a(2,1)*x %Katsay�lar� hesaplanan modellenen yakla��k fonksiyonun de�eri
plot(x,y,'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yakla��k Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')
%Uyumluluk Kontrol� r'nin karesinin hesab�
y_ort=sum(y)/n;
SSE=0;
SST=0;
for i=1:n
SSE=SSE+(gx(i)-y(i))^2;%Hatalar�n toplam karesinin hesab�
SST=SST+(gx(i)-y_ort)^2;%Sapmalar�n toplam�
end
r_kare=1-SSE/SST %Uyumluluk fakt�r�nun  1 yak�nl���n�n tepiti




