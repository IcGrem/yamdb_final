![yamdb-final-workflow](https://github.com/IcGrem/yamdb_final/workflows/yamdb-final-workflow/badge.svg)

# Проект: CI/CD проекта YaMDb  
## Задача проекта - настроить Continuous Integration и Continuous Deployment для проекта YaMDb: автоматический запуск тестов, обновление образов на Docker Hub и автоматический деплой на боевой сервер при пуше в ветку master.  
Файл ```yamdb_workflow.yaml``` , предназначенный для запуска ***GitHub Actions***, находится в корневой папке проекта. Для автоматической загрузки образа приложения в Docker Hub и диплоя созданного образа на удалённый сервер, а также для отправки уведомлений через телеграм-бот, необходимо указать значения соответствующих переменных в настройках ***Secrets*** репозитория.  
### Установка на локальный компьютер
Для установки на локальном компьютере необходимо:
* Установить Docker
* Скачать файлы проекта из репозитория  
* В директории проекта необходимо создать файл .env, в котором указать переменные окружения (например):
    - DB_NAME=postgres
    - POSTGRES_USER=postgres
    - POSTGRES_PASSWORD=postgres
    - DB_HOST=db
    - DB_PORT=5432
    - SECRET_KEY=можно сгенерировать [по адресу](https://djecrety.ir)
* Для сборки и запуска контейнеров перейдите в корневую папку проекта и выполните команду:  
    ```docker-compose up -d --build```

После успешного запуска контейнеров потребуется:  
* Выполнить миграции:  
    ```docker-compose exec web python manage.py migrate --noinput```
* Создать суперпользователя:  
    ```docker-compose exec web python manage.py createsuperuser```
* Заполнить БД начальными данными:  
    ```docker-compose exec web python manage.py loaddata fixtures.json```  

В результате установки будут запущены три контейнера: первый - приложение YamDB, второй - база данных PostgreSQL, третий - веб-сервер NGINX, настроенный на адрес http://127.0.0.1/api/v1/  
Пример работы сервиса можно посмотреть по адресу https://yamdb.ga/api/v1/   
Подробная информация о методах данного API https://yamdb.ga/redoc/



## Подробное описание проекта YaMDb находится в файле [README-YamDB.md](https://github.com/IcGrem/yamdb_final/edit/master/README-YamDB.md)
