./simulator o output(機械語) sldfile(sldファイル)
で、一括実行

./simulator output(機械語) sldfile(sldファイル)
で、オプションを指定できる実行。
標準ではステップ実行になっていない。

step : step回数の指定が可能。既にstep実行モードの場合は、一括実行に戻る。

e : run
r : 整数レジスタ表示
f : 浮動小数点レジスタ表示
m : アドレス指定で、指定アドレスまわりの表示。

プログラムが終了したら、
program end
という表示が、stdout に出る。
