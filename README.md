# keylocate：標準入力からキーワードを検索するコマンド
ロボットシステム学課題１

# keylocateコマンド
![test](https://github.com/YS038/robosys2025/actions/workflows/test.yml/badge.svg)  

## 説明  
これは、
標準入力から受け取ったテキストを上から順に読み込み、指定したキーワードを含む行を探す  
ためのコマンドです。  
キーワードが見つかるたびに、  
「それが 何個目に見つかったキーワードか」  
「そのキーワードが 何行目にあったか」  
を 交互に出力します。  

## 実行方法  
```bash  
cat filename | ./keylocate keyword  
```

filenameに調べるファイル名、keywordに調べる言葉を入れてください。  

## 使用例

入力ファイル sample.txt:
```
apple
banana
apple
orange
```

実行:
```bash
cat sample.txt | ./keylocate apple
```

出力:
```
1,1
2,3
```

この例では、"apple" が
1行目と3行目に見つかったことを示しています。


## 動作環境
- OS:linux
- python version:Python 3.12.3

## 参考資料

このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
このパッケージのコードは，下記のスライドを，本人の許可を得て自身の著作としたものです．

- https://ryuichiueda.github.io/slides_marp/robosys2025/lesson2.html
- https://ryuichiueda.github.io/slides_marp/robosys2025/lesson3.html
- https://ryuichiueda.github.io/slides_marp/robosys2025/lesson4.html
- https://ryuichiueda.github.io/slides_marp/robosys2025/lesson5.html
- https://ryuichiueda.github.io/slides_marp/robosys2025/lesson6.html
- https://ryuichiueda.github.io/slides_marp/robosys2025/lesson7.html
-Ⓒ　2025 yuu
