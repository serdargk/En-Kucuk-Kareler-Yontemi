clc; clear all; close all;
%g(x)=a1+a2x+a3x2 þeklinde ikinci dereceden modellenen yaklaþýk fonksiyonun belirlenmesi
x=[0 1 4 6 9];
y=[-4 0 8 23 54];

for j=1:3   
for i=1:3
A(j,i)=sum(x.^(i+j-2));%A matrisinin elemanlarýnýn hesabý
end
end
A(1,1)=length(x);  %A matrisinin ilk elemaný 

B(1,1)=sum(y);
for k=1: 2
B(k+1,1)=sum((x.^k).*y);%B matrisinin elemanlarýnýn hesabý
end


a=inv(A)*B%Ýkinci dereceden modellenen yaklaþýk fonksiyonun katsayýlarýnýn hesaplanmasý
gx=0;
for m=2: 3   
gx=gx+a(m,1)*x.^(m-1);
end
gx=a(1,1)+gx
%Uyumluk Kontrolü r'nin karesinin hesabý
y_ort=sum(y)/5
SSE=0;
SST=0;
for i=1:5
SSE=SSE+(gx(i)-y(i))^2;%Hatalarýn toplam karesinin hesabý
SST=SST+(gx(i)-y_ort)^2;%Sapmaalarýn toplamý
end
r_kare=1-SSE/SST %Uyumluluk faktörünun  1 yakýnlýðýnýn tepiti
plot(x,y, 'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yaklaþýk Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')