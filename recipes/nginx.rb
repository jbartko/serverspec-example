node.default['nginx']['default_site_enabled'] = false

include_recipe 'nginx'

file '/etc/nginx/sites-enabled/myapp' do
  owner "www-data"
  group "www-data"
  content <<-EOF
server {
    listen 80;
    root /tmp;

    location / {
    }
}
  EOF
end
