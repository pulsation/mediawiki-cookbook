#
# Cookbook Name:: test-cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
include_recipe "mysql::server"

remote_file "#{Chef::Config[:file_cache_path]}/" + node['mediawiki']['tarball']['name'] do
  source node['mediawiki']['tarball']['url']
end

bash "install_mediawkiki" do
  user "root"
	cwd node['apache']['docroot_dir']
	code <<-EOH
	  tar -zxf #{Chef::Config[:file_cache_path]}/mediawiki-1.23.1.tar.gz
	EOH
	action :nothing
end

