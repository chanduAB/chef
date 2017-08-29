resource_name :wordpress
property :dir, String, default: '/var/www/html/'
action :create do
   execute 'wordpress_wget' do 
      cwd dir
	  command 'wget http://wordpress.org/latest.tar.gz'
   end
   
   execute 'wordpress_unzip' do 
      cwd dir
	  command 'tar -xzvf latest.tar.gz'
   end
   template '/var/www/html/wordpress/wp-config.php' do
     source 'wp-config-sample.php'
	 action :create
   end
   service 'httpd' do
      action :restart
   end
   
end
