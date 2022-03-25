## LINUX 401

### Paket ve Güncelleme İşlemleri
Paket, bilgisayara kurulacak uygulamaya ait tüm gereksinimleri bir arada barındıran yapıdır.

#### APT PAKET YONETICISI
Bilgisayara paket yükleme silme,güncelleme gibi işlemleri yapan paket yönetim sistemidir. 
##### PAKET LISTESI GUNCELLEME

Paket listelerini görüntüleme ve güncelleme için aşağıdaki komutları kullanırız. `root` erisimi gerektigi icin `sudo` ile paket guncellemesini yapabiliriz.

```bash
sudo apt update
apt update
```
##### PAKET LISTESINI GORUNTULEME

Bilgisayarın paketleri güncellemek için hangi web link kaynaklarını barındırdığını gösteren dizindir.
```bash
cat /etc/apt/sources.list
```

![SourceList](etc_sources_list.png)

##### PAKET KURULUMU YAPMA

Kurulumunu yapmak istedigimiz paketin ismini yazarak ve **Enter**'a basarak paket kurulumunu otomatik olarak gerceklestirebiliriz.

```bash
apt install gimp
```

###### PAKET ISMI ARAMA 

```bash
apt search editor 
sudo apt search editor 
```



