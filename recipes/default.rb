hostname = node[:hostname]

template "/etc/logrotate.d/#{hostname}" do
  source "logrotate.erb"
  owner "root"
  group "root"
  mode 0644
  variables({
    :hostname => hostname
  })
end

