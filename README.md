# Image Compressor
# Суть сервиса:
Пользователь загружает картинки на сайт, после чего они сжимаются. Далее отправляется ссылка на почту пользователя с возможностью скачать сжатую картинку (было испробовано несколько вариантов сжатия и выбран наиболее рабочий вариант с MiniMagic).
При неуспешном сжатии картинки пользователь получит email с соответствующим содержанием. Все пути указаны в соответствии с заданием.
# Установка:
Использовалась СУБД PostgreSQL 13й версии. Все БД создавались через PG admin 4. Был подключен Sidekiq и Redis. Так как использовался MiniMagic, то необходимо установить ImageMagick или GraphicsMagick. 
Настроить DockerCompose не успел, поэтому не стал его сюда включать.
#Примеры отправки запросов:
Для отпрвки картинки на сервер:

![](../../Изображения/Снимок экрана от 2021-11-14 10-19-29.png)

Для скачиваня сжатой картинки:

![](../../Изображения/Снимок экрана от 2021-11-14 10-23-33.png)