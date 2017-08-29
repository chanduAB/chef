property :greet, String, name_property: true

action :create do
       package 'httpd'
      
       service 'httpd' do
           action :[:enable, :restart]
       end
       file '/var/www/html/index.html' do
            content 'hai'
       end
end 
