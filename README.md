# dbt sample project
modelは https://github.com/dbt-labs/jaffle_shop より流用

## requirements
- python3
- direnv
    - https://github.com/direnv/direnv

## 環境構築手順
`cp .envrc.example .envrc`を実行し、direnvで環境変数を設定する。
Snowflakeへの接続情報を各自の設定に書き換える。

```
export SNOWFLAKE_ACCOUNT=...
export SNOWFLAKE_USERNAME=...
export SNOWFLAKE_PASSWORD=...
```

venvによる仮想環境を構築

```
$ python3 -m venv venv
$ source venv/bin/activate
```

関連パッケージをインストール

```
(venv)$ pip install -U pip
(venv)$ pip install -r requirements.txt
```