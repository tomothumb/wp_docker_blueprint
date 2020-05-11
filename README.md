# wp_docker_blueprint

Blueprint of Wordpress docker compose.

## SETUP
```
$ docker-compose -f "docker-compose.yml" up -d --build
$ docker-compose run --rm cli bash
% chmod +x /tmp/wp-install.sh
% /tmp/wp-install.sh
$ docker-compose down
```

## LOGIN

### Database
you can change them on `docker-compose.yml`.

- MYSQL_DATABASE : wordpress
- MYSQL_USER : wpuser
- MYSQL_PASSWORD : wppass
- MYSQL_ROOT_PASSWORD : root

### Wordpress
you can change them on `wp-install.sh` .
- admin_user : admin
- admin_password : password
- admin_email : sample@example.com
