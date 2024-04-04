cp build/libs/demo-*-SNAPSHOT.jar /var/app/demo.jar

sudo cp /var/app/8002 /etc/nginx/sites-available/default

sudo service nginx reload

/var/app/kill.sh 8001

BUILD_ID=dontKillMe nohup java -jar -Dserver.port=8001 /var/app/demo.jar &

/var/app/check.sh 8001

sudo cp /var/app/8001 /etc/nginx/sites-available/default

sudo service nginx reload

/var/app/kill.sh 8002

BUILD_ID=dontKillMe nohup java -jar -Dserver.port=8002 /var/app/demo.jar &

/var/app/check.sh 8002

sudo cp /var/app/80018002 /etc/nginx/sites-available/default

sudo service nginx reload