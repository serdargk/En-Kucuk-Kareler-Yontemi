# En-Kucuk-Kareler-Yontemi
Ölçüm gözlem deneylerden sonra birbirine bağımlı en az iki değişken içeren birçok sonuç elde edilir.Elde edilen sonuçların hepsi belirli miktarda hata içerir. Bu sonuçları en iyi şekilde temsil edecek hataları en aza indirgeyecek bir denklem,fonksiyon,grafik bir eğri ortaya koymak gerekir.
En Küçük Kareler Yöntemi, çeşitli değişkenler arasındaki ilişkilerin en iyi şekilde belirlenmesini sağlayan yöntemdir.Yöntemi Gauus'un bulduğu ve yayınladığı  bilinmektedir.  Yöntem özellikle ölçüm, deney, ve gözlem ile uğraşan tüm alanlarda kullanılmaktadır.
Eğri modelleme için kullanılan en popüler metod küçük karaler metodudur. En küçük kareler metodu, bağımlı değişkenin değeri ile tahmin edilen değerlerin arasındaki farkın yani hatanın karelerinin toplamının en küçük olmasını amaçlayan yöntemdir.Hataların karelerinin en az olması için hataların değişkenlere göre türevinin alınması ve sıfıra eşitlenmesi ile katsayılar bulunur.
Fonksiyonun Derecesine ve ve türüne  göre modellen yaklaşık fonksiyon belirlenir.
Bu çalışma da fonksiyonun derecesi ve türlerine göre en küçük kareler yöntemini kullanarak matlab programında  modellenen yaklaşık fonksiyonu elde edildi.
# Sıfırıncı Dereceden Fonksiyon Belirleme
Elde edilmiş n tane (x,y) verisi için en küçük kareler yöntemi kullanılarak g(x)=a şeklinde sıfırcı dereceden(sabit) fonksiyonun elde edilmesidir.
# Birinci Derecden Fonksiyon Belirleme
Elde edilmiş n tane (x,y) verisi için en küçük kareler yöntemi kullanılarak g(x)=a+bx şeklinde birinci dereceden  fonksiyonun elde edilmesidir.
# İkinci Dereceden Fonksiyon Belirleme
Elde edilmiş n tane (x,y) verisi için en küçük kareler yöntemi kullanılarak g(x)=a+bx+c*x^2 şeklinde ikinci dereceden  fonksiyonun elde edilmesidir.
# Yüksek Dereceden Fonksiyon Belirleme
En küçük kareler metodu yüksek dereceli polinomlar içinde kullanılabilir. Ama polinom fonksiyonu modellemenin zayıf yanı yani p-dereceden bir eğri uyduruluyorsa p+1 derecden bir denklem takımı çözme zorunluluğudur.Ayrıca dikkat edilmesi gereken nokta kulllanılabilecek polinomun derecesi her zaman için verilen noktaların sayısından bir eksik olmasıdır. Yani n adet nokta varsa, modellenen eğrinin derecesi p her zaman p<=n-1 olamalıdır.
Elde edilmiş n tane (x,y) verisi için en küçük kareler yöntemi kullanılarak g(x)=a+bx+c*x^2+d*x^3+e*x^4 ...+z*x^ pşeklinde p dereceden  fonksiyonun elde edilmesidir.
# Üslü(e^x) Fonksiyonlar
Üslü fonksiyon tipi y=a*e^(b*x) şekilinde  yazılır. Eğer eşitlin her iki tarafının  doğal logaritması alınırsa 
lny=ln(a*e^(b*x)=ln(a)+ln(e^(b*x) 
Eğer yukarıdaki denklem lny=u ve lna=v olarak tanımlanırsa bu durumda u=v+bx yazılır.Dikkat edlirse öncede yapıldığı gibi doğrusal modellemede kullanılan yöntemle yani hataların karelerinin en az olması için hataların değişkenlere göre türevinin alınması ve sıfıra eşitlenmesi ile katsayılı bulunur.
Matris formatındaki denklem çözülerek v ve b değerleri bulunabilir buradan v=lna veya a=e^y  olarak sonuç bulunur.
# Üstel(a*x^b) Fonksiyonlar
y=ax^b gibi üstel fonksiyolarda eğri modellemek için her iki tarafın doğal logaritması alınırsa üstel fonksiyon 
lny=lna+blnx formuna dönüşür.
Bu ise aynı şekilde lny=u, ve lna=v ve lnx=w yazılırsa doğrusal denkleme dönüşebilir.Sonuç olarak
u=+bw formatına formatına dönüşür.Toplam hataların karelerinin toplamı v ve b ye göre türevleri alınırsa matris formatındaki denklem çözülerek v ve b bulunur.
# Logaritmik (y=a=+blnx) Fonksiyonlar
Logaritmik fonksiyonlar diğer üs ve üstel fonksiyonlarda olduğu gibi verilen y=a+blnx fonksiyonu doğrusal fonksiyon formatına dönüştürülerek yapılabilir.Bunun için lnx yerine 
w yazılırsa y=a+bw dorusal fonksiyon elde edilir.Bu doğrusal fonksiyona göre hataların karelerinin toplamlarının türevleri alınarak katsayılar bulunur.
