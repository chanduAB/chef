#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'mysql-server' do
	action :install
end

service 'mysqld' do
	action :start
end

#execute 'password' do
#	command "mysqladmin -u root password cloudthat"
#end

bash 'database' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  mysql -u root -pcloudthat -e "CREATE DATABASE wordpress;"
  mysql -u root -pcloudthat -e  "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'cloudthat'"
  EOH
end 

template '/etc/my.cnf' do
	source 'my.cnf.erb'
	action :create
end

#execute 'selinux' do
#	command "setenforce 0"
#end

service 'mysqld' do
	action :restart
end


