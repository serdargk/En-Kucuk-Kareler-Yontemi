clc; clear; close all;
%g(x)=a1+a2x şeklinde  birinci dereceden modellenen yaklaşık fonksiyonun belirlenmesi
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

toplam_x=0;
for k=1:n
    toplam_x=toplam_x+x(k);%x dizisinin elemanlarının toplamının elde edilmesi
end
toplam_y=0;
for k=1:n
    toplam_y=toplam_y+y(k);%y dizisinin elemanlarının toplamının elde edilmesi
end
x_kare=x.*x;
toplam_x_kare=0;
for k=1:n
toplam_x_kare=toplam_x_kare+x_kare(k);%x dizisinin elemanlarının karelerinin toplamının elde edilmesi
end

x_carpim_y=x.*y;
toplam_x_carpim_y=0;
for k=1:n
toplam_x_carpim_y=toplam_x_carpim_y+x_carpim_y(k);%x ve y dizisinin elemanlarının sırayla(noktasal olarak)
%çarpımlarının toplamının elde edilmesi
end

A(1,1)=n;
A(1,2)= toplam_x;
A(2,1)= toplam_x;
A(2,2)=toplam_x_kare;
B(1,1)=toplam_y;
B(2,1)=toplam_x_carpim_y;
a=inv(A)*B;  %Birinci dereceden modellenen yaklaşık fonksiyonun katsayılarının hesaplanması
gx=a(1,1)+a(2,1)*x %Katsayıları hesaplanan modellenen yaklaşık fonksiyonun değeri
plot(x,y,'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yaklaşık Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')
%Uyumluluk Kontrolü r'nin karesinin hesabı
y_ort=sum(y)/n;
SSE=0;
SST=0;
for i=1:n
SSE=SSE+(gx(i)-y(i))^2;%Hataların toplam karesinin hesabı
SST=SST+(gx(i)-y_ort)^2;%Sapmaların toplamı
end
r_kare=1-SSE/SST %Uyumluluk faktörünun  1 yakınlığının tepiti




