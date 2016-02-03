# docker-jobscheduler
SOS-JobScheduler on Docker Container

## how to use

### create mysql container
sudo docker run -v /var/lib/mysql --name jobscheduler_dbdata busybox
sudo docker run --volumes-from jobscheduler_dbdata --name jobscheduler_db -e MYSQL_DATABASE=jobscheduler -e MYSQL_USER=jobscheduler -e MYSQL_PASSWORD=jobscheduler  -e MYSQL_ROOT_PASSWORD=jobscheduler -d -p 43306:3306 mysql

### run JobScheduler
sudo docker run -p 4444:4444 --name jobsheduler199 --link jobscheduler_db:db snowmoon6467/jobscheduler:1.9.9 &

### access
http://yourhost:4444
