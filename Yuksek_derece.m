clc; clear all; close all;
%P. dereceden modellenen yaklaşık fonksiyonun belirlenmesi

%x=[0 3 7 11 16 27 42];
%y=[4 10 21 35 43 59 79];

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
p=input('Modellenen Polinomun derecesini giriniz:')

for j=1: p+1    
for i=1: p+1 
A(j,i)=sum(x.^(i+j-2));%P. dereceden  modellenen yaklaşık fonksiyonun katsayılarını 
%bulmak için A matrisinin değerlerinin hesaplanması
end
end
A(1,1)=length(x);   

B(1,1)=sum(y);
for k=1: p
B(k+1,1)=sum((x.^k).*y);%P. dereceden  modellenen yaklaşık fonksiyonun katsayılarını 
%bulmak için B matrisinin değerlerinin hesaplanması
end
B(1,1)=sum(y);

a=inv(A)*B% P. dereceden modellenen yaklaşık fonksiyonun katsayılarının hesaplanması
gx=0;
for m=2: p+1   
gx=gx+a(m,1)*x.^(m-1);%Katsayıları hesaplanan p dereceden modellenen yaklaşık fonksiyonun değeri
end
gx=a(1,1)+gx

%Uyumluk Kontrolü r'nin karesinin hesabı
y_ort=sum(y)/length(y)
SSE=0;
SST=0;
for i=1:length(y)
SSE=SSE+(gx(i)-y(i))^2;%Hataların toplam karesinin hesabı
SST=SST+(gx(i)-y_ort)^2;%Sapmaların toplamı
end
r_kare=1-SSE/SST %Uyumluluk faktörünun  1 yakınlığının tepiti
plot(x,y, 'k o',x,gx,'r')
title('Verilen ve Hesaplanan Yaklaşık Fonksiyon')
xlabel('x ekseni')
ylabel('y ekseni')
hleng=legend('verilen','hesaplanan');
set(hleng,'Location','NorthWest')