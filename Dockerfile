# ベースイメージは Ubuntu (バージョンは適宜選択)
FROM ubuntu:22.04

# 対話的インストールを抑制
ENV DEBIAN_FRONTEND=noninteractive

# パッケージ情報を更新し、必須パッケージをインストール
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      wget \
      make \
      perl \
      git \
      locales \
      fonts-ipafont-gothic \
      fonts-ipafont-mincho && \
    rm -rf /var/lib/apt/lists/*

# ロケールの設定 (日本語UTF-8)
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# TeX Live (upTeX含む) のインストール
RUN apt-get update && \
    apt-get install -y \
      texlive-full \
      latexmk && \
    rm -rf /var/lib/apt/lists/*

# 作業ディレクトリ
WORKDIR /work

# デフォルトで bash を起動
CMD ["/bin/bash"]
