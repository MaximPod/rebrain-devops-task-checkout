● ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ●  
# ░░░░░░░rebrain-devops-task1 ver 1.00  ░░░░░░░ 
# ░░░░░ Учебный курс: Rebrain DevOps ░░░░░░░
# ░░░░░░░░░ Задания: task1, task 2 ░░░░░░░░░░
## ░░░░░░░░░░░░░░░░░░░░░░ © Dr'MaxPod 03.06.2019 
● ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ●  

════════════════════════════════════════════════════════════════


## Задание task1:
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

## Протокол выполнения задания task1:
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



## Задание task2:

1. Зарегистрироваться в двух публичных хостингах git репозиториев  
 bitbucket и github. Доступ к gitlab.rebrainme.com вы должны были 
 получить в начале курса, если у вас проблемы с доступом свяжитесь  
 с кураторами по email или telegram.

2. Создать на каждом из хостингов репозиторий rebrain-devops-task-checkout, 
 bitbucket и github - публичные репозитории, gitlab.rebrainme.com - приватный.  

3. В репозиторий, созданный в первом задании добавить 3 удаленных сервера 
 с помощью git remote add

4. Запушить ваш репозиторий во все хостинги репозиториев с помощью git push

5. Склонировать репозиторий  
 https://gitlab.rebrainme.com/rebrainme-devops/git-checkout

6. Переключиться на 3ий коммит с начала (e8b3ec06b)

7. Посмотреть содержимое файла deleted.txt

8. В ответе на задание прислать ссылки на ваши репозитории и 
 содержимое файла из пункта 7.

## Протокол выполнения задания task2:

1. Регистрация выполнена ренее

2. Репозитории rebrain-devops-task-checkout созданы через web-интерфейс

3. Удаленный репозитории подключены как:
 - origin gitlab.rebrain.com
 - bitbucked bitbucked.org
 - github github.com

4. Репозиторий запушен в удаленные ветки, в итоге получились ветки
    ``` * master
        remotes/bitbucket/master
        remotes/github/master
        remotes/origin/master
   ```

5. Репозиторий https://gitlab.rebrainme.com/rebrainme-devops/git-checkout  
склонирован

6. Обнаружено 7 коммитов, получен требуемый коммит командой
git checkout HEAD~4, хэш проверен на соответствие e8b3ec06b  
 
7. Содержимое получено
969507679bbd60f2429968ce06036a5b

8. Ответ отправляется.
