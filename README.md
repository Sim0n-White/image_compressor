# Image Compressor
# Суть сервиса:
Пользователь загружает картинки на сайт, после чего они сжимаются. Далее отправляется ссылка на почту пользователя с возможностью скачать сжатую картинку (было испробовано несколько вариантов сжатия и выбран наиболее рабочий вариант с MiniMagic).
При неуспешном сжатии картинки пользователь получит email с соответствующим содержанием. Все пути указаны в соответствии с заданием.
# Установка:
Использовалась СУБД PostgreSQL 13й версии. Все БД создавались через PG admin 4. Был подключен Sidekiq и Redis. Так как использовался MiniMagic, то необходимо установить ImageMagick или GraphicsMagick. 
Настроить DockerCompose не успел, поэтому не стал его сюда включать.
#Примеры отправки запросов:
Для отпрвки картинки на сервер:

![Снимок экрана от 2021-11-14 10-19-29](https://user-images.githubusercontent.com/48484862/141672012-31d60900-6828-4d1c-b7c1-10f8c0e1733e.png)
Для скачиваня сжатой картинки:

![Снимок экрана от 2021-11-14 10-23-33](https://user-images.githubusercontent.com/48484862/141672015-0bab17d7-d86f-430f-a90f-df982c1fdc87.png)
