clc; clear all; close all;
%g(x)=a1+a2x+a3x2 şeklinde ikinci dereceden modellenen yaklaşık fonksiyonun belirlenmesi
%x=[0 1 4 6 9];
%y=[-4 0 8 23 54];
n=input('X ve Y dizinin boyutunu giriniz:')
x=zeros(1,n);
y=zeros(1,n);
x_kare=zeros(1,n);
x_carpim_y=zeros(1,n);
for i=1:n
x(i)=input('X dizinin değerlerini giriniz:')
end
for j=1:n
y(j)=input('Y dizinin değerlerini giriniz:')
end
A(1,1)=length(x);%x dizinin uzunluğu
A(1,2)=sum(x);%x dizisinin elemanlarının toplamı
A(1,3)=sum(x.^2);%x dizisinin elemanlarının kareleri toplamı
A(2,1)=sum(x);%x dizisinin elemanlarının toplamı
A(2,2)=sum(x.^2);%x dizisinin elemanlarının karelerinin toplamı
A(2,3)=sum(x.^3);%x dizisinin elemanlarının küplerinin toplamı
A(3,1)=sum(x.^2);%x dizisinin elemanlarının karelerinin toplamı
A(3,2)=sum(x.^3);%x dizisinin elemanlarının küplerinin toplamı
A(3,3)=sum(x.^4);%x dizisinin elemanlarının 4. derecelerinin toplamı
B(1,1)=sum(y);%%x dizisinin elemanlarının toplamı
B(2,1)=sum(x.*y);%x ve y dizisinin elemanlarının noktasal olarak
%çarpımlarının toplamının elde edilmesi
B(3,1)=sum((x.^2).*y);%x dizisinin elemanlarının karelerinin y dizisinin elemanları ile noktasal olarak
%çarpımlarının toplamının elde edilmesi
a=inv(A)*B%İkinci dereceden modellenen yaklaşık fonksiyonun katsayılarının hesaplanması
gx=a(1,1)+a(2,1)*x+a(3,1)*x.^2%Katsayıların hesaplanan ikinci dereceden modellenen yaklaşık fonksiyonun değeri
%Uyumluk Kontrolü r'nin karesinin hesabı
y_ort=sum(y)/n
SSE=0;
SST=0;
for i=1:n
SSE=SSE+(gx(i)-y(i))^2;%Hataların toplam karesinin hesabı
SST=SST+(gx(i)-y_ort)^2;%Sapmaaların toplamı
end
r_kare=1-SSE/SST %Uyumluluk faktörünun  1 yakınlığının tepiti
plot(x,y, 'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yaklaşık Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')
