clc; clear all; close all;
%P. dereceden modellenen yakla��k fonksiyonun belirlenmesi

%x=[0 3 7 11 16 27 42];
%y=[4 10 21 35 43 59 79];

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
p=input('Modellenen Polinomun derecesini giriniz:')

for j=1: p+1    
for i=1: p+1 
A(j,i)=sum(x.^(i+j-2));%P. dereceden  modellenen yakla��k fonksiyonun katsay�lar�n� 
%bulmak i�in A matrisinin de�erlerinin hesaplanmas�
end
end
A(1,1)=length(x);   

B(1,1)=sum(y);
for k=1: p
B(k+1,1)=sum((x.^k).*y);%P. dereceden  modellenen yakla��k fonksiyonun katsay�lar�n� 
%bulmak i�in B matrisinin de�erlerinin hesaplanmas�
end
B(1,1)=sum(y);

a=inv(A)*B% P. dereceden modellenen yakla��k fonksiyonun katsay�lar�n�n hesaplanmas�
gx=0;
for m=2: p+1   
gx=gx+a(m,1)*x.^(m-1);%Katsay�lar� hesaplanan p dereceden modellenen yakla��k fonksiyonun de�eri
end
gx=a(1,1)+gx

%Uyumluk Kontrol� r'nin karesinin hesab�
y_ort=sum(y)/length(y)
SSE=0;
SST=0;
for i=1:length(y)
SSE=SSE+(gx(i)-y(i))^2;%Hatalar�n toplam karesinin hesab�
SST=SST+(gx(i)-y_ort)^2;%Sapmalar�n toplam�
end
r_kare=1-SSE/SST %Uyumluluk fakt�r�nun  1 yak�nl���n�n tepiti
plot(x,y, 'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yakla��k Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')