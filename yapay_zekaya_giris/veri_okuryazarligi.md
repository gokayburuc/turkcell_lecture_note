[TOC]



# VERI OKURYAZARLIGI

## VERI OKURYAZARLIGI NEDİR ?

Her tütrden veri tipini , değişken ve ölçek tiplerini tanımlayabilme, betimsel istatistikleri ve istatistiksel grafikleri kullanarak veri değerlendirebilme yeteneğidir.

## TEMEL KAVRAMLAR 

### POPULASYON VE ORNEKLEM

#### Populasyon Nedir? 

İlgilendiğimizi ana kaynağımızdır. Hedef kitlemizdir. Ana kitlemizdir.

#### Örneklem Nedir?

Populasyon içerisinden seçilen bir alt kümedir.

### GÖZLEM BİRİMİ

Araştırmada incelenen birimlere verilen isimdir. Örneklem içerisindeki her birim bir gözlem birimi olarak isimlendirilir.

### DEĞİŞKEN VE DEĞİŞKEN TÜRLERİ

![image-20220402174343959](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402174343959.png)

#### Değişken 

Birimden birime farklı değer alan niceliktir. Araç Fiyatı, KM, Vites Türü, Hasar Durumu, Marka, Model gibi başlıkların hepsi değişkendir.

#### Değişken Türleri 

1. Sayısal Değişkenler (Nicel, Kantitatif)
2. Kategorik Değişkenler (Nitel, Kalitatif)



### ÖLÇEK TÜRLERİ 

|      | Sayısal değişkenler | Kategorik değişkenler |
| ---- | ------------------- | --------------------- |
|      | Aralık              | Nominal               |
|      | Oran                | Ordinal               |



#### ARALIK ÖLÇEK TÜRÜ

Sıcaklık değişkeni için - ve + değerler alabilen değişkenlere ( Yani başlangıç noktası sıfır kabul edilmeyen değişkenlere ) Aralık ölçek türü ile ölçülmüş değişken denir.

#### ORAN ÖLÇEK TÜRÜ

Başlangıç noktası sıfır kabul edilerek ölçülen değişkenlere oran ölçüsü ile ölçülmüş değişken adı verilir.

#### NOMINAL ÖLÇEK TÜRÜ

Cinsiyet - Kadın, Erkek gibi sınıflar arasında farkın ölçek türü açısından bir farkın oluşmadığı türlere nominal ölçek türü denir. Ölçek türünde kullanılan ölçekler eşittir. 

#### ORDINAL ÖLÇEK TÜRÜ 

> Asteğmen < Teğmen < Üsteğmen < Yüzbaşı < Binbaşı < Yarbay < Albay

Kategoriler arasında eşitliğin olmadığı durumlarda kullanılan ölçek türüne ordinal ölçek türü adı verilir.

### MERKEZİ EĞİLİM ÖLÇÜTLERİ

#### Aritmetik Ortalama

![image-20220402214115540](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402214115540.png)

Aritmetik ortalama n miktarda sayının toplamının n değerine bölünmesi ile elde edilir.

#### Medyan

Bir seriyi tam orta noktadan iki eşit parçaya ayıran değere medyan denir.



![image-20220402214512707](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402214512707.png)

##### Tek Sayıda terim olursa 

10,13,15,12,17 sayılarının medyan değeri hesaplanırken seriyi küçükten büyüğe sıralıyoruz.

Şimdi tek sayılar için n+1 / 2 olarak hesap yaptığımızdan dolayı 5 değerden oluşan serimiz için 5+1 /2 ' değer olan 3. Değer serimizin medyanıdır.

##### Çift sayıda terim olursa

Eğer seri 10,13,12,13,15,17 gibi bir seri olursa yine aynı şekilde küçükten büyüğe sıralanıyor. Burada n/2 yani 3. terim ve n/2 + 1  yani dördüncü değer toplanır ve ikiye bölünür.

#### Medyan ve Ortalama Karşılaştırılması 

Eğer elimizdeki seri simetrik ise aritmetik ortalama hesaplanır. Simetrik değilse Medyan uygulanır.

Simetrik olmaması değeri serinin içinde aykırı değerleri olması halinde ortaya çıkar. Mesela genel olarak 10 ile 15 arasında değişen bir seride 190 ve 1 değerleri olsun. Aritmetik ortalama burada yanıltıcı olacağından dolayı medyan değeri daha gerçekçi bir değer ifade eder.

#### Mod

Bir seride en çok tekrar eden değere mod adı verilir. 

10,11,12,12,21,12,10,17 değerlerinden oluşan bir dizinin mod değeri en çok tekrarlanan  12 değeridir.

#### Kartiller 

Küçükten büyüğe sıralanan bir seriyi 4 parçaya ayıran değerlere kartiller denir.

8 , 10, 15, 12, 17, 20, 14

![image-20220402221130916](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402221130916.png)

Bizim serimizde Q1 değeri 2. değerdir. Q3 değeri ise 6. değerdir. Q2 değeri ise 6 - 2 'den dördüncü değerdir. 

#### Merkezi Eğilim

İki farklı seride ortalama değerlerin karşılaştırılması sırasında değerlerin eşit dağılıp dağılmadığını tespit edebilmek için medyan değerlerinin de hesaplanmasın gerekir. Medyan değeri ortalama değere yakın olan seri eşit dağılım göstermektedir.

### DAĞILIM ÖLÇÜLERİ

#### DEĞİŞİM ARALIĞI 

Bir serideki maksimum değerden minimum değeri çıkardığımızda elde ettiğimiz değerdir.

8 , 10, 15, 12, 17, 20, 14 

Değişim Aralığı = 20 - 8 = 12 

Bir maaş skalası üzerinden açıklarsak iki iş yeri karşılaştırıldığında değişim aralığı küçük olan yerde maaşlar birbirine yakındır. Diğer iş yerinde bu değer büyükse dağılımda bir eşitsizlik vardır denilebilir.

#### Standart Sapma 

Ortalamadan olan sapmaların genel bir ölçüsüdür.

![image-20220402230732859](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402230732859.png)

#### Varyans 

Standart sapmanın karesidir.

![image-20220402231529651](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402231529651.png)



Birden fazla değişkenin dağılımını birbirleriyle kıyaslamak için kullanmak istediğimizde varyans ifadesi kullanılır.

#### Çarpıklık

Bir değişkenin dağılımının simetrik olamayışıdır. 

![image-20220402231820537](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402231820537.png)

##### Pearson Çarpıklık Katsayısı

![image-20220402232117014](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402232117014.png)

![image-20220402232225285](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402232225285.png)

#### BASIKLIK

![image-20220402232452305](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402232452305.png)

BK  = 3 ise dağılım standart normal dağılıma uygundur.

BK > 3 ise dağılım sivridir.

BK < 3 ise dağılım basıktır.

![image-20220402232821437](/home/gokayburuc/.config/Typora/typora-user-images/image-20220402232821437.png)
