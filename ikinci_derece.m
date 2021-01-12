clc; clear all; close all;
%g(x)=a1+a2x+a3x2 þeklinde ikinci dereceden modellenen yaklaþýk fonksiyonun belirlenmesi
%x=[0 1 4 6 9];
%y=[-4 0 8 23 54];
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
A(1,1)=length(x);%x dizinin uzunluðu
A(1,2)=sum(x);%x dizisinin elemanlarýnýn toplamý
A(1,3)=sum(x.^2);%x dizisinin elemanlarýnýn kareleri toplamý
A(2,1)=sum(x);%x dizisinin elemanlarýnýn toplamý
A(2,2)=sum(x.^2);%x dizisinin elemanlarýnýn karelerinin toplamý
A(2,3)=sum(x.^3);%x dizisinin elemanlarýnýn küplerinin toplamý
A(3,1)=sum(x.^2);%x dizisinin elemanlarýnýn karelerinin toplamý
A(3,2)=sum(x.^3);%x dizisinin elemanlarýnýn küplerinin toplamý
A(3,3)=sum(x.^4);%x dizisinin elemanlarýnýn 4. derecelerinin toplamý
B(1,1)=sum(y);%%x dizisinin elemanlarýnýn toplamý
B(2,1)=sum(x.*y);%x ve y dizisinin elemanlarýnýn noktasal olarak
%çarpýmlarýnýn toplamýnýn elde edilmesi
B(3,1)=sum((x.^2).*y);%x dizisinin elemanlarýnýn karelerinin y dizisinin elemanlarý ile noktasal olarak
%çarpýmlarýnýn toplamýnýn elde edilmesi
a=inv(A)*B%Ýkinci dereceden modellenen yaklaþýk fonksiyonun katsayýlarýnýn hesaplanmasý
gx=a(1,1)+a(2,1)*x+a(3,1)*x.^2%Katsayýlarýn hesaplanan ikinci dereceden modellenen yaklaþýk fonksiyonun deðeri
%Uyumluk Kontrolü r'nin karesinin hesabý
y_ort=sum(y)/n
SSE=0;
SST=0;
for i=1:n
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
