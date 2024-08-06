# This Puppet manifest configures Nginx to handle high load by optimizing settings

exec { 'fix--for-nginx':
  command => '/usr/sbin/nginx -s reload',
}

# Additional Nginx configurations for performance optimization can go here
# For example, adjusting worker processes and connections

file { '/etc/nginx/nginx.conf':
  ensure  => file,
  content => template('web_stack_debugging_4/nginx.conf.erb'),
  notify  => Exec['fix--for-nginx'],
}

# Ensure the Nginx service is running
service { 'nginx':
  ensure => running,
  enable => true,
}

