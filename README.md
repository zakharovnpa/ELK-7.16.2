## Репозиторий для запуска стэка ELK версии 7.16.2.

1. Репозитрий входит в домашенее задание по теме ["10.4 ELK"](https://github.com/zakharovnpa/03-mnt-homeworks/tree/main/10-monitoring-04-elk)

## Порядок запуска стэка ELK:
### 1. Склонировать репозиторий 
1. Выполнить `git clone git@github.com:zakharovnpa/ELK-7.16.2.git`
### 2. Подготовка ОС 
1. Выполнить команду `sysctl -w vm.max_map_count=262144` 
### 3. Установка стэка
1. Запустить команду `docker-compose up -d` в директории со склонированным репозиторием.
