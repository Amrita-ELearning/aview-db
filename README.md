# aview-db

DATABASE Server Installation-Configuration
1. Mysql Installation-Configuration
Install the MYSQL
sudo apt-get install -y mysql-server
Secure Mysql installation
sudomysql_install_db
sudo /usr/bin/mysql_secure_installation
Modify the /etc/mysql/my.cnf
Edit /etc/mysql/my.cnf and add the following line under [mysqld] and [mysqldump]
/bin/sed -i -e 's/^#\(server-id = 1\)/\1/' /etc/mysql/my.cnf
/bin/sed -i -e 's/^\(max_allowed_packet.*\=\).*M/\1 100M/' /etc/mysql/my.cnf
/bin/sed -i -e 's/^#\(log_bin\)/\1/' /etc/mysql/my.cnf
/bin/sed -i -e 's/^#\(binlog_do_db.*\)include_database_name/\1aview/' /etc/mysql/my.cnf
/bin/sed -i -e 's/^#\(binlog_ignore_db.*\)include_database_name/\1mysql/' /etc/mysql/my.cnf
Create the database
mysql -u root -p$PASSWORD -e "CREATE DATABASE aview”;
mysql -u root -p
Enter PWD :
CREATE DATABASE aview;
Create user and set permissions
CREATE USER 'aview_app'@'localhost';
SET PASSWORD FOR 'aview_app'@'localhost' = '*A1297CD5E0976E65D9BB5F6B1E8C63CFBFF8BFE5';
GRANT SELECT ON aview.* TO 'aview_app'@'localhost';
GRANT INSERT ON aview.* TO 'aview_app'@'localhost';
GRANT UPDATE ON aview.* TO 'aview_app'@'localhost';
GRANT DELETE ON aview.* TO 'aview_app'@'localhost';
FLUSH PRIVILEGES;
2. Tomcat Installation-Configuration
Install the Tomcat
sudo apt-get install -y tomcat7 tomcat7-admin
Set JAVA_HOME environment variable
export JAVA_HOME=/usr/lib/jvm/default-java
Upgrade tomcat/java memory parameters and JAVA_HOME for next reboot
cat >>/etc/default/tomcat7 <<EOF
CATALINA_OPTS="\${CATALINA_OPTS} -Xms512m -Xmx1024m -XX:MaxPermSize=256m"
JAVA_HOME=/usr/lib/jvm/default-java
EOF
Change the default start-up configuration file
    vi /etc/default/tomcat7
TOMCAT7_USER=aview
TOMCAT7_GROUP=aview
Edit /etc/tomcat7/server.xml, Comment the existing realm and add a SHA realm; Change HTTP connector port to 9080
/bin/sed -i -e 's/\(Connector port="\)8080\(" protocol="HTTP\/1.1"\)/\19080\2/' /etc/tomcat7/server.xml
