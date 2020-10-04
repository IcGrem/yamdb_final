![yamdb-final-workflow](https://github.com/IcGrem/yamdb_final/workflows/yamdb-final-workflow/badge.svg)

# Проект: CI/CD проекта YaMDB  
## Задача проекта - настроить Continuous Integration и Continuous Deployment для проекта YaMDB: автоматический запуск тестов, обновление образов на Docker Hub и автоматический деплой на боевой сервер при пуше в ветку master.  
Файл ```yamdb_workflow.yaml``` , предназначенный для запуска ***github actions*** находится в корневой папке проекта. Для загрузки образа приложения в Docker Hub и диплоя созданного образа на удалённый сервер, а также для отправки уведомлений через телеграм-бот, необходимо указать значения соответствующих переменных в настройках репозитория ***Secrets***.  
### Установка на локальный компьютер
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
В результате установки будут запущены три контейнера: первый - приложение YamDB, второй - база данных PostgreSQL, третий - веб-сервер NGINX, настроенный на адрес http://127.0.0.1




## Подробное описание проекта YamDB находится в файле [README-YamDB.md](https://github.com/IcGrem/yamdb_final/edit/master/README-YamDB.md)
