

package %w(httpd php) do
	action :install
end
	

service 'httpd' do
  supports :status => true
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end


package 'php' do
	action :install
end

package 'php-mysql' do
	action :install
end

cookbook_file '/var/www/html/info.php' do
	source "info.php"
end

service 'httpd' do
	action :restart
end
