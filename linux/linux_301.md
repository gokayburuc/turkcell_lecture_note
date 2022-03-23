<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [PROSESLER](#prosesler)
	- [PID - PROSES ID](#pid-proses-id)
	- [UID - USER ID](#uid-user-id)
	- [PPID - PARENT PROCESS ID](#ppid-parent-process-id)
	- [MEVCUT SÜREÇLERİN GÖRÜNTÜLENMESİ](#mevcut-sürelerin-görüntülenmesi)
	- [KULLANICI SURECLERI GORUNTULENMESI](#kullanici-surecleri-goruntulenmesi)
	- [CANLI OLARAK SÜREÇLERİN GÖRÜNTÜLENMESİ](#canli-olarak-sürelerin-görüntülenmesi)
		- [HTOP KOMUTU KULLANIMI](#htop-komutu-kullanimi)
	- [SURECLERIN SONLANDIRILMASI](#sureclerin-sonlandirilmasi)
		- [SUDO ILE ACILAN UYGULAMANIN SONLANDIRILMASI](#sudo-ile-acilan-uygulamanin-sonlandirilmasi)
	- [süreç sonlandırma çeşitleri](#süre-sonlandrma-eitleri)

<!-- /TOC -->



# PROSESLER
Linux altında çalışan her program bir süreçtir

## PID - PROSES ID
Prosese ait kimliktir

## UID - USER ID
Bu process'i kullanan user'a ait olan id'dir.

## PPID - PARENT PROCESS ID  

## MEVCUT SÜREÇLERİN GÖRÜNTÜLENMESİ

Çalışan süreçlerin görüntülenmesi
```bash
ps -ef
```
bu komut

```bash
man ps
```
ile incelenebilir.

![ps_ef](ps_ef.png)

## KULLANICI SURECLERI GORUNTULENMESI

```bash
ps -au{username}

ps -augokayburuc #gokayburuc kullanicisina ait processler
ps -auroot # root'a ait olan processler
```
Örnek çıktı:

![ps_au_username](ps_au_username.png)

## CANLI OLARAK SÜREÇLERİN GÖRÜNTÜLENMESİ

```bash
ps -aux

```
Bilgisayara paket yükleyerek `htop` uygulaması yüklenmesi

### HTOP KOMUTU KULLANIMI
```bash
sudo apt install htop
```

![htop](htop.png)

Htop içerisinde iken **F5** ile süreçlerin hangi süreçlerin altında çalıştığını ağaç diyagramı ile görebiliriz.

## SURECLERIN SONLANDIRILMASI

```bash
kill {PID}
```
ilk olarak terminalde bir uygulama calistiriyoruz
```bash
gedit
```
Terminalde bir uygulamayı direkt olarak yazdığımızda terminal o uygulama ile eşleşir.Terminalde yeni bir tab sekmesi açmak için **CTRL+SHIFT+T** tuş kombinasyonunu kullanıyoruz.

Aşağıdaki komut ile görüntülüyoruz

```bash
ps -ef
```
![ps_ef_view](ps_ef_gedit.png)

gedit uygulamasına ait `PID` bulunduktan sonra aşağıdaki komutu yazıyoruz.

```bash
kill 101894
```

![kill_gedit](kill_gedit.png)

Böylece çalışan uygulama sonlanıyor.  

Program sonlandiktan sonra kontrol için aşağıdaki komutu yazdiğimizda karsimiza resimdeki gibi bir cikti gelir.

```bash
ps -ef | grep gedit
```

![grep_gedit](grep_gedit.png)

Buradaki gördüğünüz `PID` çalıştırılan grep komutuna ait renklendirmenin çıktısıdır. gedit sistemde çalışmamaktadır.


### SUDO ILE ACILAN UYGULAMANIN SONLANDIRILMASI

Eğer ayni kodu `root` altında çalıştırılırsa `gokayburuc` kullanicisi tarafindan sonlandirilamaz.

```bash
sudo gedit # buraya kullanici sifresi giriliyor
```
![sudo_gedit](sudo_gedit.png)

Ekranda görüntüleme için aşağıdaki komutu kullanıyoruz.

```bash
ps -ef | grep gedit
```

![sudo_gedit_ef](sudo_gedit_ef.png)

Bu program `gokayburuc` kullanicisi tarafindan sonlandirilamaz. Cunku program `root` altında açıldı.

![sudo_gedit_kill](sudo_gedit_kill.png)

Bu programi sonlandirmak için aşağıdaki şekilde `root` yetkisi ile işlem yapmamız gerekiyor.

```bash
sudo kill 102755 # root erisim sifresi gerekiyor
```

![sudo_kill_gedit](sudo_kill_gedit.png)


## süreç sonlandırma çeşitleri

```bash
kill -l 
```
