echo -e "\e[31mCopy Mongodb Repo File\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo
echo -e "\e[31mInstalling MongoDB Server\e[0m"
yum install mongodb-org -y
## Modify the conf file
echo -e "\e[31mStart MongoDB Service\e[0m"
systemctl enable mongod
systemctl restart mongod