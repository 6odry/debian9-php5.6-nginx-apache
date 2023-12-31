# Debian9-PHP5.6-NGINX-Apache

Этот репозиторий предоставляет конфигурацию и скрипты для развертывания виртуальной машины с операционной системой Debian 9, на которой установлены PHP 5.6, NGINX и Apache. Вы можете запустить этот проект на Windows с использованием WSL2, и для этого также необходимо установить плагин: `vagrant plugin install virtualbox_WSL2`, так же в среде WSL2 должны быть установлены virtualbox, vagrant, ansible.

## Установка

Для установки и запуска проекта на виртуальной машине выполните следующие шаги:

1. Склонируйте репозиторий на свой компьютер:

   ```sh
   git clone https://github.com/6odry/debian9-php5.6-nginx-apache
2. Перейдите в директорию проекта:

    ```sh
    cd debian9-php5.6-nginx-apache
3. Запустите скрипт установки, который также установит необходимые зависимости:
   
   ```sh
   bash install.sh

Виртуальная машина будет создана и сконфигурирована, и в результате будут доступны два веб-сервера:

***Nginx (80=>8080): http://localhost:8080***

***Apache2 (8888=>8888): http://localhost:8888***


## Обновление PHP

Если вы хотите обновить версию PHP с 5.6 на 7.4, выполните следующие шаги:

Запустите скрипт обновления PHP:

   ```sh
   bash update_php.sh
   ```

Или если вы хотите использовать отдельный плейбук:


    PLAYBOOK=update.yml vagrant provision --provision-with ansible
