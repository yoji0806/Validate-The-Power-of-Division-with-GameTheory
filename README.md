# graduation_thesis_uplatex
Validating the robustness of division of power with game theory.


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
- `.devcontainer/devcontainer.json`に色々書き込んで、VSCodeから開くだけで、コンテナが自動で立ち上がってマウントするようにする。（2回目以降のマウントがうまくいかなかったので、後回しにした。）