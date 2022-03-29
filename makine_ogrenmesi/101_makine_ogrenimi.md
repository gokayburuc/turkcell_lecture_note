# VERI BILIMI - MAKINE OGRENMESI 

[TOC]





## MAKINE OGRENMESI TEMEL KAVRAMLARI

### BAĞIMLI DEĞİŞKEN VE BAĞIMSIZ DEĞİŞKEN KAVRAMLARI 

Bağımlı Değişken için Hedef Değişken,Yanıt Değişken, Çıktı Değişkeni 

Hedeflediğimiz ana değişkene verilen isim bağımlı değişkendir.

Örnek olarak bir araç fiyatı tahmin modelinde aracın fiyatı bağımlı değişken, bu fiyatı oluşturduğu düşünülen kilometre durumu, hasar durumu, vites türü vesaire değişkenler ise bağımsız değişkenlerdir.

### ÖĞRENME TÜRLERİ

#### GÖZETİMLİ ÖĞRENME 

Bağımlı değişken ve bağımlı değişkeni meydana getiren bağımsız değişkenler bir arada modelin içindeyse bu duruma gözetimli öğrenme denir. 

Örnek olarak girdi ve çıktı değişkenleri bir aradaysa, yani araç fiyatı ve araç fiyatına etki eden diğer değişkenler (bağımsız değişkenler) modeldeki verilerde yer alıyorsa bu gözetimli öğrenmedir. 

#### GÖZETİMSİZ ÖĞRENME 

Bağımlı değişken bilgisi modelde yer almıyorsa yalnızca bağımsız değişkenler modelde yer alıyorsa buna gözetimsiz öğrenme ismi verilir.  Gözetimsiz öğrenme için belirli gruplandırma sınıflandırma metotları kullanılır. 

### REGRASYON 

Bağımlı değişkenin sayısal/sürekli bir değişken olmasını ifade eder. Bağımlı değişkenler ile bağımsız değişkenler arasındaki doğrusal ilişkiyi ifade etmektedir.

### SINIFLANDIRMA 

Bağımlı değişken var-yok , evet - hayır, 1 - 0 gibi kategorik değerlerden oluşuyorsa bu da bir sınıflandırma problemidir.


### MODEL EĞİTME - ( TRAINING )

#### ORİJİNAL VERİ SETİ
Elimizdeki toplam veri setine verilen isimdir. Mesela elimizde 1.000.000 satırlık bir veri seti olsun. Bu bizim orijinal veri setimizdir. 
#### EĞİTİM SETİ

Orijinal veri setinin eğitim için kullanılacak kısmına verilen isimdir. Modelimizi eğitmek için tüm veri setini değil ama bu veri setinin anlamı bir kısmını aldığımızda bu da eğitim setidir. Mesela 1.000.000 satırlık verinin %85 'ini eğitim için aldığımızda 850.000 satırlık bir veri elde edilir.

#### TEST SETİ

Orijinal Veri setinden Eğitim Seti çıkartıldıktan sonra kalan kısma verilen isimdir.

Yani model eğitildikten sonra test için ayrılan kısımdır. Bizim örneğimizde 1.000.000 satırlık veride geri kalan 150.000 satırlık veriye bu isim verilir.

>**ÖNEMLİ**: Modelleme çalışmalarında amaç en az değişkenle en fazla açıklanabilirliği yakalamaya çalışmaktır

## MODEL SEÇİMİ 

1. Oluşabilecek değişken kombinasyonları ile oluşturulan modeller arasından en iyi modelin seçilmesi 
2. Kurulan birbirinden farklı modeller arasından model seçimi

### Model Neye Göre Seçilir ?

- Regresyon için açıklanabilirlik oranı ve RMSE türevi bir değer 
- Sınıflandırma için doğru sınıflandırma oranı türevi bir değer 

### OVERFITTING - AŞIRI ÖĞRENME

Algoritma ezberleme düzeyinde bir eğitim setini öğrendikten sonra hiç görmediği başka verilerle test edildiğinde tahmin performansı düşüyor. Eski modelde ezberlediği şeyi yeni modele uygulamaya çalıştığında performans düşmesine aşırı öğrenme adı verilir. 

### DETERMİNİSTİK MODELLER VE STOKASTİK MODELLER 

#### DETERMİNİSTİK MODEL (KESIN)

<img src="/home/gokayburuc/Desktop/deterministik_model.png" alt="Deterministik_Model"  />



Değişkenler arasında kesin bir ilişkinin olduğu modellerdir. 



#### Stokastik Model (Olasılıksal Modeller)

![Stokastik_Model](/home/gokayburuc/Desktop/stokastik_model.png)



Bağımlı ve bağımsız değişken arasındaki ilişki kesin bir katsayıya bağlı değil fakat yaklaşık hata paylarıyla olasılık olarak hesaplanabiliyorsa bu modellere olasılıksal (stokastik) model ismi verilir. Örnekte `2,5x + tesadüfi Hata` olarak belirtilen ifade bu duruma bir örnektir.

#### DOĞRUSAL MODELLER

![image-20220328213231091](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328213231091.png)

#### DOĞRUSAL OLMAYAN MODELLER 

![image-20220328213219261](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328213219261.png)



## MODEL DOĞRULAMA (MODEL VALIDATION) YÖNTEMLERİ

### HOLDOUT YÖNTEMİ - SINAMA SETİ YAKLAŞIMI 

![image-20220328213913668](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328213913668.png)

Orjinal veri setinin performans ölçümünün yapıldığı yaklaşıma verilen isimdir.

### K - KATLI ÇAPRAZ DOĞRULAMA ( K FOLD CROSS VALIDATION)

![image-20220328214102129](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328214102129.png)



Veri seti belirli bir parça sayısına bölünür ve her parça seti sırasıyla test seti olacak şekilde model eğitilir ve test edilir. 

Bizim örneğimizde 5 eşit parçaya bölünüyor. 5 eşit parça sırasıyla 4 parça eğitim seti 1 parça test seti olacak şekilde sınamaya tabi tutuluyor.

### LEAVE ONE OUT YÖNTEMİ - BİRİNİ DIŞARIDA BIRAKMA YÖNTEMİ 

![image-20220328214515161](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328214515161.png)

Veri setindeki her bir öğe ya da kümenin sırasıyla çıkarılarak kalanların eğitildiği ve bu çıkarılanın test edildiği yöntemdir.

### BOOTSTRAP YÖNTEMİ 

![image-20220328222348412](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328222348412.png)



Model içinden veri setlerinin yerine bölünmüş kısımlar farklı setler oluşturacak şekilde konulur ve veri test edilir.

## MODELLERİN BAŞARI DEĞERLENDİRMESİ 

![image-20220328223920425](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328223920425.png)

### MSE - Hata Kareler Ortalaması 

Yukarıdaki formül göz önüne alındığında bulunan değer hata kareler ortalaması ismini alır.

![Machine learning: an introduction to mean squared error and regression lines](https://cdn-media-1.freecodecamp.org/images/hmZydSW9YegiMVPWq2JBpOpai3CejzQpGkNG)



#### MSE ORNEK UYGULAMASI 

![image-20220328224818130](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328224818130.png)

Yukarıdaki örnekte soldan sağa doğru değerlere bakıldığında son işlem olan karelerin toplanması işlemi sonrasında elimizdeki veri miktarına bölerek (11) model başarı değerlendirmesine ulaşabiliyoruz (0.37)

### RMSE - Hata Kareler Ortalamasının Karekök Değeri 

![](https://4.bp.blogspot.com/-wG7IbjTfE6k/XGUvqm7TCVI/AAAAAAAAAZU/vpH1kuKTIooKTcVlnm1EVRCXLVZM9cPNgCLcBGAs/s1600/formula-MAE-MSE-RMSE-RSquared.JPG)

> Based on a rule of thumb, it can be said that RMSE values **between 0.2 and 0.5** shows that the model can relatively predict the data accurately. In  addition, Adjusted R-squared more than 0.75 is a very good value for  showing the accuracy. In some cases, Adjusted R-squared of 0.4 or more  is acceptable as well.

### MAE - Ortalama Mutlak Hata 

Yukarıdaki formül sayfasındaki değerlerde yer alıyor. Negatiflikten kurtarma adına yapılan işlemdir.



### SINIFLANDIRMA MODELLERİ İÇİN BAŞARI DEĞERLENDİRMESİ 

![image-20220328225309374](/home/gokayburuc/.config/Typora/typora-user-images/image-20220328225309374.png)

#### ROC EĞRİSİ

![roc](https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Roc_curve.svg/220px-Roc_curve.svg.png)

Eğri ile Random Classifier arasında kalan alan ne kadar büyükse model o derece başarılıdır. Bu alana AUC (Area Under Curve) adı verilir.

## YANLILIK - VARYANS DEĞİŞ TOKUŞU (BIAS - VARIANCE TRADEOFF)

### Hata Türleri

#### Eğitim Hatası

Modeli kurmak için kullanılan veri seti üzerinde elde ettiğimiz hatadır.

#### Test Hatası 

Kurulan modeli test etmek için kullandığımız veri seti için oluşan hatadır.

> Eğitim hatası test hatasının yanlı ve kötü bir tahmincisidir.

### Esneklik Kavramı 

Esneklik verinin fonksiyonel yapısının uygun bir şekilde yorumlanmasıdır.

### Yanlılık Kavramı 

Gerçek değerler ile tahmin edilen değerler arasındaki farkı ifade eden kavrama yanlılık denir.

### Varyans Kavramı

Varyans, esnekliğin yüksek olmasıdır. 

#### Yüksek Yanlılık - Underfitting 

Verinin tüm değerlerini temsil edemiyor. Az öğrenmiştir denilir. 

Bazı değerlerde tahmin değere çok yakın bazı değerlerde çok uzaktır.

#### Düşük Yanlılık, Düşük Varyans - Optimum Model 

> Varyans arttıkça yanlılık azalır. Bu da ezber yapmak anlamına gelir.

#### Yüksek Varyans  - Overfitting

Varyansı yüksek bir fonksiyon veri setinin çok iyi temsil eden esnek bir yapıdır. Değerler ile tahmin neredeyse birebir hale gelmiştir. Veri seti çok iyi öğrenilmiştir.

> Üstünde test edildiği modeli çok iyi öğrenmiştir, fakat başka bir modelle çalıştırıldığında ezberlediği modeli diğer modele uygulamaya çalışacağından performans düşecektir. 

> Esneklik ortalama test hatasına göre seçilir.

### Modelin Optimizasyonu

![ModelComplexity](https://miro.medium.com/max/1400/1*WXi_7HIL3FKETFdfegcEmA.png)

Yukarıda yer alan learning curve eğrisi (öğrenme eğrisi) modelin eğitim setini belirli bir noktaya kadar öğrendikçe hatasının düştüğünü fakat öğrenilen bu seti test modeline uyguladığımızda bir noktadan sonra test setini doğru tahminleyemediğini anlatır. Çünkü modelimiz aşırı öğrenmiştir ve test setindeki değerler eğitim değerlerinden farklı olduğunda bu değerleri tahmin edememektedir.

## MODEL TUNING

### Model Parametresi

![Parametreler](https://miro.medium.com/max/1400/1*_TqRJ9SmwFzRigJhMiN2uw.png)

Veriden öğrenilen katsayılara verilen isimdir.



### Model Hiperparametreleri

Kullanıcı tarafından belirlenen ve veri ile optimize edilen parametrelerdir.
