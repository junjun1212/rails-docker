# Tasks

軽量なタスク管理アプリ。
docker 化してローカルホスト環境で動作します。
そのため環境構築には下記が前提条件になります。

### 前提条件

- Docker インストールされていること
- Docker Compose がインストールされていること
- ある程度 Docker の知識があること

### セットアップ手順

1.リポジトリのクローンとディレクトリ移動

```bash
$ git clone https://github.com/junjun1212/rails-docker.git
$ cd rails-docker
```

2.Docker イメージのビルドとアプリケーションの起動

```bash
$ docker-compose build
```

3.データベースのセットアップ

```bash
$ docker-compose run web rails db:create
```

4.アプリケーションの起動

```bash
$ docker-compose up
```

5.web アプリケーションへアクセス

```
http://localhost:3000
```

$ docker-compose up 後、シェルはそのままの状態(アプリケーションが起動している状態)で、上記アドレス上にてアプリケーションが動作しているはずです。

6.終了方法

```
# docker-compose upをしたシェルに戻って、

ctrl + c もしくは cmd + c
```

で終了します。
再度起動は`4.`に戻る
