# debian9-php5.6-nginx-apache

pb.yml запускается после инициализации vm, используется по-умолчанию для vagrant provision.

для запуска апдейта php 5.6 -> 7.4:
bash update_php.sh 
или
PLAYBOOK=update.yml vagrant provision --provision-with ansible


Nginx 80:
http://185.174.137.67:8080

Apache 8888:
http://185.174.137.67:8888
