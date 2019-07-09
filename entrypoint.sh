#!bin/bash

sed -i -e "s/%%%MONGO_NAME%%%/${MONGO_NAME}/g" /app/config.php
sed -i -e "s/%%%MONGO_HOSTNAME%%%/${MONGO_HOSTNAME}/g" /app/config.php
sed -i -e "s/%%%MONGO_PORT%%%/${MONGO_PORT}/g" /app/config.php

service php5-fpm start && exec nginx
