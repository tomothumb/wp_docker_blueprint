#!/bin/bash

set -ex;
WPINSTALLDIR=/var/www/html

wp core download \
    --locale=ja --version=5.2.2 --path=${WPINSTALLDIR}  

wp config create \
    --dbname=wordpress --dbuser=wpuser --dbpass=wppass --dbhost=db:3306 \
    --force --path=${WPINSTALLDIR}

wp core install \
    --url=localhost --title=TESTSITE \
    --admin_user=admin \
    --admin_password=password \
    --admin_email=sample@example.com \
    --path=${WPINSTALLDIR} 

wp plugin install \
    classic-editor \
    # advanced-custom-fields custom-post-type-ui custom-post-type-permalinks \
    # tinymce-advanced \
    --activate --path=${WPINSTALLDIR}
