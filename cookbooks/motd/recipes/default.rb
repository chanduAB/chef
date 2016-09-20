#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

 cookbook_file "/etc/myserver.conf" do
      source "jaya.txt"
      owner "root"
      group "root"
    end

