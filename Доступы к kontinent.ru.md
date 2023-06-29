[[Работа и баги]]
login
```
ps_novgorodtsev_k 
```
password 
```
HawaiiRecordBeautyArticle65
```
url 
``` 
ssh ps_novgorodtsev_k@www.kontinent.ru
```
Перейти в рабочую папку: 
```
 cd 
```
Перейти в рабочую папку с подключением: 
```
ps_novgorodtsev_k@www.kontinent.ru/var/www/django_projects
```
port (обязательно, но не по ssh)
 ```
52013
 ```

самое главное для фиксации изменений

1. надо зайти со своего юзера в папку с фронтом и сделать 
	 ```
	npm run buid
	 ```
	1. открыть в терминале другой ssh 
3. рестартануть из-под другого юзера 
	```
	su lager-legenda-ru 
	``` 
пароль:
```
you touch my talala my ding ding dong 
```


команда для рестарта из папки с фронтом :
```
./node_modules/pm2/bin/pm2 restart 0
```


ошибки смотреть в /var/www/vhosts/lager-legenda.ru/.pm2/logs/lager-legenda-error-0.log

