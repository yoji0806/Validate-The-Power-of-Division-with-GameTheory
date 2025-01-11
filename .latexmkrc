# upLaTeX + dvipdfmx の指定

# latexmkが「latex」扱いのコマンド
$latex = 'uplatex -synctex=1 -interaction=nonstopmode %O %S';

# PDF出力のときに dvipdfmx を使う
$dvipdf = 'dvipdfmx %O -o %D %S';

# 参考: bibtex系ツールにpbibtexを使う場合
$bibtex = 'pbibtex %O %B';

# 最終的にPDFを作る
$pdf_mode = 3;  # 0=dvi, 1=pdf, 2=ps, 3=dvi->ps->pdf, 4=latex->dvipdf
