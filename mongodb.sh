echo -e "\e[31mCopy Mongodb Repo File\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo &>>/tmp/roboshop.log
echo -e "\e[31mInstalling MongoDB Server\e[0m"
yum install mongodb-org -y &>>/tmp/roboshop.log
## Modify the conf file
echo -e "\e[31mStart MongoDB Service\e[0m"
systemctl enable mongod &>>/tmp/roboshop.log
systemctl restart mongod &>>/tmp/roboshop.log