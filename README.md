https://github.com/IcGrem/yamdb_final/workflows/yamdb-final/badge.svg  
# Проект: Continuous Integration проекта YaMDB  
## Задача проекта - настроить Continuous Integration и Continuous Deployment для проекта YaMDB: автоматический запуск тестов, обновление образов на Docker Hub и автоматический деплой на боевой сервер при пуше в ветку master.  
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
