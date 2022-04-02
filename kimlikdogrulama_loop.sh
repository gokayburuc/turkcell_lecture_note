#!/bin/bash
echo "kullanıcı adinizi giriniz: "
read login
echo "kullanici parolanizi giriniz:"
read userpass

if [[ $login == "gokay" ]] && [[ $userpass ==  "gokay123" ]] 
then
giris=true
echo "merhaba $login ! Platforma hosgeldin"
else "giris basarisiz yeniden deneyin!"
giris=false
fi

sayac=1

while [ $giris ]
do
echo $sayac

if [[ $sayac -eq 10 ]] 
then
break
fi

((sayac++))
done
