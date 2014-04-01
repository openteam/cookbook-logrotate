fqdn = node[:fqdn]

template "/etc/logrotate.d/#{fqdn}" do
  source "logrotate.erb"
  owner "root"
  group "root"
  mode 0644
end

