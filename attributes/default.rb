default["mediawiki"]["version"]              = "1.23.1"
default["mediawiki"]["webdir"]               = node['apache']['docroot_dir'] + "/mediawiki-" + default["mediawiki"]["version"]
default["mediawiki"]["tarball"]["name"]      = "mediawiki-" + default["mediawiki"]["version"] + ".tar.gz"
default["mediawiki"]["tarball"]["url"]       = "https://releases.wikimedia.org/mediawiki/1.23/" + default["mediawiki"]["tarball"]["name"]
default["mediawiki"]["database"]["name"]     = "mediawiki"
default["mediawiki"]["database"]["user"]     = "mediawiki"
default["mediawiki"]["database"]["password"] = "mediawiki"
default['mysql']['server_root_password']     = 'Fak3Pa55w0rd'

