#
# Cookbook Name:: ct-wordpress
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "ct-apache"
wordpress 'build website' do
dir '/var/www/html/'
end
