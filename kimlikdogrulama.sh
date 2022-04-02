#!/bin/bash
echo "kullanıcı adinizi giriniz: "
read login
echo "kullanici parolanizi giriniz:"
read userpass

if [[ ($login == "gokay" && $userpass == "gokay123") ]]; then
echo "merhaba $login ! Platforma hosgeldin"
else "giris basarisiz yeniden deneyin!"
fi

