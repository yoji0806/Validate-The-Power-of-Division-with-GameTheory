# Validating the robustness of division of power with game theory.  

最新版の論文は[こちら](./main.pdf)。  
まだ考えたい部分あるので、時間を見つけて更新していきます。（2025/05/04時点）

質問等はissueでお願いします。



<br><br><br>

# graduation_thesis_uplatex

**Texエンジンを積んだコンテナ**と論文フォーマットだけのレポジトリが欲しい方は、教えてください。  
自分の中では後回しのタスクになっています。

# フォルダ
- `sections`:章ごとのtexファイル。
- `material`：卒論要項、元のtexファイルなど。
- `reference`：参考文献
- `image`：画像ファイル

# How to run

1. Clone this repository
2. Build the image

```bash
docker build -t latex-uptex-env .
```

3. Open `graduation_thesis_uplatex` with VScode.

4. Run the container from the image. Using a terminal of VScode is recommended.
```bash
docker run --rm -it \
    -v "$(pwd)":/work \
    latex-uptex-env 
```

4. Now you can compile `main.tex` and make `main.pdf`.
```bash
latexmk main.tex
```




# Todo
- `.devcontainer/devcontainer.json`に色々書き込んで、VSCodeから開くだけで、コンテナが自動で立ち上がってマウントするようにする。  
（2回目以降のマウントがうまくいかなかったので、後回しにした。）
