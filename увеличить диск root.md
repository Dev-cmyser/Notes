[[linux]]
Можно
грузимся с Live cd
отрезаем кусок gparted'ом от раздела home, ну например 4 гига имхо хватит если в игры не играть
этим же gparted'ом на эти 4 гига увеличиваем раздел /
дальше правим /etc/fstab
находим там что-то типо
 /home was on /dev/sda6 during installation
UUID=fe93c07a-2bb2-4fb9-bb76-e7a3a7642d45 /home  ext4    relatime      0       0
UUID заменяем на новый который получился
и так же меняем UUID для раздела /
перезагружаем комп)
все должно работать ) :)


Прошу прощения за настойчивость, откуда я возьму новый UUID?

например так  
ls -l /dev/disk/by-uuid/  
но помоему и в gparted можно

А можно просто в консоли выполнить команду blkid и увидеть UUID разделов.


https://redos.red-soft.ru/base/other-soft/other-other/davinci-resolve/#in