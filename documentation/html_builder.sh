#!/bin/bash
# скрипт по сборке локальной html версии документации


# chck_hugo_content рекурентная функция проверяет состояние файлов и каталогов в папке контента

chck_hugo_content(){
for file in $1
do
if [ -d "$file" ] 
#echo "$file is a directory"
then

touch $file/_index.md
echo +++ >$file/_index.md
echo title = $file >>$file/_index.md
echo description = "Folder" >>$file/_index.md
echo weight = 5 >>$file/_index.md
echo +++ >>$file/_index.md

chck_hugo_content "$file/*" 
elif [ -f "$file" ]
then
#echo "$file is a file"
#echo ${file##*.}
file_type=${file##*.}
if [[ $file_type = "rme" ]]
then
#echo "$file is a .rme file"
cat $file
fi
fi
done 
}


# в данном релизе скопируем документацию внутрь каталога .hugo
# в последствии надо настрить прямое чтение из md_ru и вывод в  html_ru

# копируем md_ru в content/posts все кроме *.rme
rm -r ./hugo/content/posts/*
cp -R ./md_ru/*.* ./hugo/content/posts/
# удаляем rme которые могли скопироваться из md_ru
rm -r ./hugo/content/posts/*.rme



#Проверка файлов контента перед компиляцией
#chck_hugo_content "./.hugo/content/posts/*"

# собираем html
cd ./hugo/
hugo
cd ..

# копируем собранный сайт из ./hugo/public в ./html.ru
#rm -r ./html_ru/*
cp -R ./hugo/public/* ./html_ru/

