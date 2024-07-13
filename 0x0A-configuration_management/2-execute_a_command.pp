# This manifest kills a process named `killmenow`

exec { 'pkill killmenow':
    command => '/usr/bin/pkill killmenow',
    onlyif  => '/usr/bin/pgrep killmenow',
    path    => ['/usr/bin', '/bin']
}
