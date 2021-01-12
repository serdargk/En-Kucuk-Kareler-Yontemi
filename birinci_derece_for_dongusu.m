clc; clear; close all;
%g(x)=a1+a2x þeklinde  birinci dereceden modellenen yaklaþýk fonksiyonun belirlenmesi
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

toplam_x=0;
for k=1:n
    toplam_x=toplam_x+x(k);%x dizisinin elemanlarýnýn toplamýnýn elde edilmesi
end
toplam_y=0;
for k=1:n
    toplam_y=toplam_y+y(k);%y dizisinin elemanlarýnýn toplamýnýn elde edilmesi
end
x_kare=x.*x;
toplam_x_kare=0;
for k=1:n
toplam_x_kare=toplam_x_kare+x_kare(k);%x dizisinin elemanlarýnýn karelerinin toplamýnýn elde edilmesi
end

x_carpim_y=x.*y;
toplam_x_carpim_y=0;
for k=1:n
toplam_x_carpim_y=toplam_x_carpim_y+x_carpim_y(k);%x ve y dizisinin elemanlarýnýn sýrayla(noktasal olarak)
%çarpýmlarýnýn toplamýnýn elde edilmesi
end

A(1,1)=n;
A(1,2)= toplam_x;
A(2,1)= toplam_x;
A(2,2)=toplam_x_kare;
B(1,1)=toplam_y;
B(2,1)=toplam_x_carpim_y;
a=inv(A)*B;  %Birinci dereceden modellenen yaklaþýk fonksiyonun katsayýlarýnýn hesaplanmasý
gx=a(1,1)+a(2,1)*x %Katsayýlarý hesaplanan modellenen yaklaþýk fonksiyonun deðeri
plot(x,y,'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yaklaþýk Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')
%Uyumluluk Kontrolü r'nin karesinin hesabý
y_ort=sum(y)/n;
SSE=0;
SST=0;
for i=1:n
SSE=SSE+(gx(i)-y(i))^2;%Hatalarýn toplam karesinin hesabý
SST=SST+(gx(i)-y_ort)^2;%Sapmalarýn toplamý
end
r_kare=1-SSE/SST %Uyumluluk faktörünun  1 yakýnlýðýnýn tepiti




