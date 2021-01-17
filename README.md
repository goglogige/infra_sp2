# Project Title

REST API для сервиса - база отзывов о фильмах, книгах и музыке.

## Getting Started

Для начала работы клонируйте репозиторий.
```
git clone <адрес репозитория>
```
### Prerequisites

Для работы с проектом у вас должен быть установлен Docker и docker-compose.
Эта команда скачает скрипт для установки докера:
```
curl -fsSL https://get.docker.com -o get-docker.sh
```
Эта команда запустит его:
```
sh get-docker.sh
```
Установка docker-compose:
```
apt install docker-compose
```
### Installing

1. В локальном репозитории перейдите в каталог проекта и выполните команду:
```
docker-compose up
```
2. После сборки контейнера перейдите в запущенный контейнер приложения командой:
```
docker container exec -it <CONTAINER ID> bash
```
3. Внутри контейнера необходимо выполнить миграции и собрать статику приложения:
```
python manage.py collectstatic --no-input
python manage.py migrate
```
4. Для использования панели администратора по адресу http://0.0.0.0/admin/ необходимо создать суперпользователя.
```
python manage.py createsuperuser.
```
5. К проекту по адресу http://0.0.0.0/redoc/ подключена документация API. В ней описаны шаблоны запросов к API и ответы. Для каждого запроса указаны уровни прав доступа: пользовательские роли, которым разрешён запрос.
6. Для загрузки в БД тестовых данных используйте файл fixtures.json из корневой папки проекта. Для этого перейдите в каталог проекта и скопируйте файл в контейнер приложения: 
```
docker cp fixtures.json <CONTAINER ID>:/code/fixtures.json
```
Перейдите в контейнер приложения и загрузить данные в БД:
```
docker container exec -it <CONTAINER ID> bash
python manage.py loaddata fixtures.json
```
## Authors

* **Evgenii Katolichenko** - автор, студент курса Python-разработчик в Яндекс.Практикум. Это учебный проект.
Если есть вопросы или пожелания по проекту пишите на почту - evg.katolichenko@gmail.com

Список [разработчиков](https://github.com/goglogige/api_yamdb/graphs/contributors) принимавших участие в проекте.

## Acknowledgments

* Создателям проекта Яндекс.Практикум
* Куратору
* Наставникам
* Код ревьюверу
* Отзывчивым однокурсникам
