#!/bin/sh

#引数に取った実行コマンド
command=$*

#評価結果を出力する行を特定 
# ex) execution_time = ~secの行を抽出する場合: searchStr = "execution_time"
searchStr="seconds"
echo "--search word = " $searchStr 
echo "command ="  $command

result_file=TMP.txt
#ファイル作成
touch "$result_file"


for i in  1 2 3 4 5 6 7 8 9 10
do 
    echo "$i : exec commad"
    # コマンド実行し，その標準出力結果から searchStrの行を検索
    execution_time_line=`$command | grep $searchStr`
    echo "--execution_time_line--"
    echo $execution_time_line
    
    #検索結果をファイルに書き込む
    echo $execution_time_line >> $result_file 
    
done
 
#表示
while read line; do
    echo $line
done < $result_file

java performance "$result_file"

#おまけ
##結果を指定ディレクトリへ一応退避
`mv "$result_file" /tmp/`


