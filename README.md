●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬●
‎‎‎‎‎‎‎‎            rebrain-devops-task1 ver 1.00 MaxPod 16.07.2019
              Учебный курс: Rebrain DevOps Задание: task1 
‎‎‎‎‎‎‎‎‎‎‎‎●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬●
======================================================================

### Задание task1:
1. Установить консольный git клиент
2. Настроить git client - указать параметры user.name и user.email, соответствующие вашим данным
3. Создать репозиторий rebrain-devops-task1 с помощью git init
4. Создать файл nginx.conf, который содержит конфигурацию nginx (базовую, которая появляется после установки пакета в linux /etc/nginx/nginx.conf).
5. Создать файл README.md, в котором описать что находится в репозитории (Пример: В данном репозитории находится дефолтный конфигурационный файл nginx).
6. Добавить файл README.md в репозиторий с помощью git commit.
7. Добавить файл nginx.conf в репозиторий с помощью команды git commit
8. С помощью команды git log проверить, что вы видите в истории два коммита
9. С помощью команды git status проверить, что в данной папке не осталось больше файлов/папок, которые не добавлены в репозиторий.
10. Заархивировать папку с репозиторием (tar zcvf / zip) и прислать в ответе.

### Протокол выполнения задания:
1. git version >
   Установлен git version 2.20.1

2. git config --list >
   user.email=maxim@universe.su
   user.name=Maxim Podgornykh
   core.editor=nano

3. git init >
   На ветке master

   Еще нет коммитов

4. cp /etc/nginx/nginx.conf myvenv/rebrain-devops-task1/
   скопирован nginx.conf

5. touch README.md 
   README.md создан

6. git add README.md & git commit
   первый коммит создан

7. git add nginx.conf & git commit
   второй коммит создан

8. git shortlog >
   Maxim Podgornykh (2):
      новый файл:    README.md
      Add new file nginx.conf

9. git status >
   Файл README.md изменен, т.к. ведется протокол выполнения задания

10. архивирование результатов и отправка
