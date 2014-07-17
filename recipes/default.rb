#
# Cookbook Name:: test-cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_rewrite"
include_recipe "mysql::server"
include_recipe "database::mysql"

# Download mediawiki tarball
remote_file "#{Chef::Config[:file_cache_path]}/" + node['mediawiki']['tarball']['name'] do
  source node['mediawiki']['tarball']['url']
end

# Extract mediawiki tarball
bash "extract_mediawkiki" do
  user "root"
	cwd node['apache']['docroot_dir']
	code "tar -zxf #{Chef::Config[:file_cache_path]}/" + node['mediawiki']['tarball']['name'] 
	action :run
end

# Database connection information
mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

# Create new database
mysql_database node['mediawiki']['database']['name'] do
  connection mysql_connection_info
  action :create
end

# Create new user
mysql_database_user node['mediawiki']['database']['user']  do
  connection mysql_connection_info
	password	node['mediawiki']['database']['password']
  action 		:create
end
  
# Grant privilages to user
mysql_database_user node['mediawiki']['database']['user'] do
  connection    mysql_connection_info
  database_name node["mediawiki"]["database"]["name"]
  privileges    [:all]
  action        :grant
end

# Add virtualhost
web_app "mediawiki" do
  server_name node["mediawiki"]["server_name"]
  docroot node["mediawiki"]["webdir"]
end

# Add php-xml package
# TODO: Check if CentOS or Debian
# TODO: Restart apache2 service
package "php-xml"
