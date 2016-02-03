#! /bin/bash

sleep 10s

sed -i -e "s/{{DB_ENV_MYSQL_USER}}/$DB_ENV_MYSQL_USER/g" /opt/jobscheduler/scheduler_install.xml
sed -i -e "s/{{DB_ENV_MYSQL_PASSWORD}}/$DB_ENV_MYSQL_PASSWORD/g" /opt/jobscheduler/scheduler_install.xml
sed -i -e "s/{{DB_ENV_MYSQL_DATABASE}}/$DB_ENV_MYSQL_DATABASE/g" /opt/jobscheduler/scheduler_install.xml
sed -i -e "s/{{DB_PORT_3306_TCP_PORT}}/$DB_PORT_3306_TCP_PORT/g" /opt/jobscheduler/scheduler_install.xml

(cd /opt/jobscheduler;/usr/bin/java -jar jobscheduler_linux-x64.$JOBSCHEDULER_VERSION.jar scheduler_install.xml)

sleep infinity

