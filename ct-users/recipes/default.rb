#
# Cookbook Name:: ct-users
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
users_manage 'admin' do
group_id 2300
action [:create]
end

users_manage 'ops' do
group_id 2301
action [:create]
end
