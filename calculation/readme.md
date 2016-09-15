#program
- performance(.class)
- calc-stdout.sh
- calc-by-file.sh

##performance
- javaで記述
- 評価結果が書かれたファイルを引数により，平均を求める
-実行
```
# java performance file
```
-- file内の形式は以下のようになっていること
>ex)
>execution time = ~sec
>execution time = ~sec
>.
>.
>.

--sample実行
```
# java performance TMP.txt
```

##calc-stdout.sh
- 実行プログラムが計測結果を標準出力で出力する形式の場合
-- 標準出力から計測結果が記載されている行を抽出 & ファイルに書き込む
-- ファイルを上記の**performance**プログラムに引数として与え，平均を得る
-実行
```
#sh calc-stdout.sh a.out args[1] args[2] ・・・・
```
-- 注)検索キーワードはユーザーがcalc-stdout.sh内のsearchStrを適宜設定
>ex) searchStr = "execution time"


##calc-by-file.sh
- 実行プログラムが計測結果をファイルに出力する形式の場合
-- ファイルから計測結果が記載されている行を抽出 & ファイルに書き込む
-- ファイルを上記の**performance**プログラムに引数として与え，平均を得る
-実行
```
#sh calc-by-file.sh a.out args[1] args[2] ・・・・
```
-- 注)検索キーワードはユーザーがcalc-by-file.sh内のsearchStrを適宜設定
>ex) searchStr = "execution time"

-- 注)出力されるファイル名や場所もユーザーがcalc-by-file.sh内のfindコマンドの部分を適宜設定
>ex) find 検索dir -name 検索ファイル名


#おまけ
- performanceプログラムはjavaプログラムのため，linux,windows,androis OS,ios,どのOSでも動くはず
- スクリプト(.sh)はlinux(android os,ios)でしか動かないのでwindowsの上で使用する場合は.bat版を作る必要がある
- 計測系は夜や深夜に自動にやってくれるのが楽
-- ある時間にプログラムを走らせる方法
> linux系 windows 系　両方) atコマンド

