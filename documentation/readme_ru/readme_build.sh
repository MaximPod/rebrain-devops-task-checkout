#!/bin/bash
# скрипт по сборке автомагического хорошего README.md файла

# collect_rme_file рекурентная функция собирает содержимое файлов *.rme в файл ./documentation/readme_ru/contents

collect_rme_file(){
for file in $1
do
if [ -d "$file" ] #echo "$file is a directory"
then
collect_rme_file "$file/*" 
elif [ -f "$file" ] #echo "$file is a file"
then
file_type=${file##*.}
if [[ $file_type = "rme" ]]
then
#echo "$file is a .rme file"
cat $file
fi
fi
done >> project_contents.md
}




# собираем README.md
readme_file="../../README.md"
# Шапочка
cat header_readme_ru.md > $readme_file
# Собираем Содержание Проекта
echo "##Содержание проекта" > project_contents.md
echo "|Директория | Содержание|" >> project_contents.md
echo "|:----------|:----------|" >> project_contents.md
collect_rme_file "../../*"
cat project_contents.md >> $readme_file
# Авторы
cat autors_readme_ru.md >> $readme_file
# Лицензия
cat license_readme_ru.md >> $readme_file
# Благодарности
cat acknowledgments_readme_ru.md >> $readme_file
echo File $readme_file build



