# libra
rails-docker-ansible

# Requirement
- docker-compose 1.20.1+
- ansible 2.4.0.0+

# Docker set up

```
$ cd /path/to/libra/
$ docker-compose build
$ docker-compose up -d
```

# Provisioning

- {environment}には対象環境名(localなど)を入れる

### exce rovisioning

```
$ cd /path/to/libra/
$ ansible-playbook -i ansible/inventories/{environment} site.yml
```

### docker exec web container

```
$ cd /path/to/libra/
$ docker exec -it libra_web /bin/bash --login

ユーザ名指定する場合
$ docker exec -it -u rails libra_web /bin/bash --login
```

# Add gem
- 初回プロビジョニング以降に追加のgemがある場合、以下のコマンドを実行する。

### gem install

```
$ cd /var/www/libra
$ bundle install
```

# サーバ起動
- `puma`を使用する。

### puma起動

```
$ cd /var/www/libra/
$ bundle exec puma
```

# 動作確認

- 「 http://0.0.0.0:3000/ 」にアクセスし、画面が表示されればOK
