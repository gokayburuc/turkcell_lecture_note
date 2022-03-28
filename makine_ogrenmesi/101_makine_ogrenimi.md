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

<img src="/home/gokayburuc/Desktop/deterministik_model.png" alt="Deterministik_Model" style="zoom: 25%;" />



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

