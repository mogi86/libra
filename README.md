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
docker exec -it -u rails libra_web /bin/bash --login
```

# Add gem
- 初回プロビジョニング以降に追加のgemがある場合、以下のコマンドを実行する。

### gem install

```
$ cd /var/www/libra
$ bundle install --path vendor/bundle
```

# Rails server
- `rails server`を使用する場合、以下のコマンドを実行する。

### exec rails server

```
$ cd /var/www/libra/
$ bundle exec rails server -b 0.0.0.0 --environment=development
```
