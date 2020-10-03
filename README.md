[GITHUB-BADGE](https://github.com/IcGrem/yamdb_final/workflows/YamDB-final/badge.svg)  
# Проект: Docker. Запуск docker-compose  
## Задача проекта - создание и запуск Docker-контейнеров для развёртывания проекта YamDB на компьютере  
В результате установки будут запущены два контейнера, первый - приложение YamDB, второй - база данных PostgreSQL.  
### Установка
Для установки на локальном компьютере необходимо:
* Установить Docker
* Скачать файлы проекта из репозитория  
* Для сборки и запуска контейнеров перейдите в корневую папку проекта и выполните команду:  
    ```docker-compose up -d --build```

После успешного запуска контейнеров потребуется:  
* Выполнить миграции:  
    ```docker-compose exec web python manage.py migrate --noinput```
* Создать суперпользователя:  
    ```docker-compose exec web python manage.py createsuperuser```
* Заполнить БД начальными данными:  
    ```docker-compose exec web python manage.py loaddata fixtures.json```
## Подробное описание проекта YamDB находится в файле README-YamDB.md  
