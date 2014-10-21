#!/bin/bash

if [ ! -f /var/lib/mysql/ibdata1 ]; then

	cp -r /opt/MySqlData/mysql/* /var/lib/mysql/
	chown -R mysql: /var/lib/mysql

	#start mysql server to create users!
	mysqld_safe & 
	sleep 5 && 

	#create mysql user! 
	mysql -uroot -e "CREATE USER 'realestate'@'%' IDENTIFIED BY 'realestate'" && 
	mysql -uroot -e "GRANT ALL ON *.* TO 'realestate'@'%' IDENTIFIED BY 'realestate' WITH GRANT OPTION; FLUSH PRIVILEGES" &&

	#terminate mysqlserver!
	mysqladmin shutdown &&  
	sleep 5

fi

#start mysql server!
mysqld_safe
