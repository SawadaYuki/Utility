#!/bin/sh

command=$*
searchStr="realSec"
result_file==TMP_file.txt
touch "$result_file"

echo "--search word--"
echo $searchStr
echo "--command--"  $command

cat /dev/null > $result_file

for i in 1 2 3 4 5 6 7 8 9 10
do 
    echo "$i : exec commad"
    # コマンド実行
    `$command`
    file=`find 検索dir -name 検索ファイル名`
    echo "--research file--"
    echo $file

    echo "--execution_time_line-- "
    execution_time_line=`cat $file | grep $searchStr` 
    echo $execution_time_line 
    echo $execution_time_line >> $result_file 

done

echo "--print: $result_file--"


while read line; do
    echo $line
done < $result_file

java performance "$result_file"

#おまけ
##結果を指定ディレクトリへ一応退避
`mv "$result_file" /tmp/`



