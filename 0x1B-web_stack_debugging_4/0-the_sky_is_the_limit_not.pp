# Increase the amount of traffic an nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
  # Modify the ULIMIT value
  command => 'sed -i "s/15/4096/" /etc/default/nginx',

  # Specify the path for the sed command
  path    => '/usr/local/bin/:/bin/'
} ->

# Restart Nginx
exec { 'restart-nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
