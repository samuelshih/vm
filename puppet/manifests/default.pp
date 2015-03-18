# rbenv module is alup/rbenv

rbenv::install { "vagrant":
	group => 'vagrant',
	home => '/home/vagrant'
}

rbenv::compile { "2.1.2":
  user => "vagrant",
  home => "/home/vagrant",
  global => true
}

file { 'code directory':
  path => '/home/vagrant/code',
  ensure => directory
}

# redis

class { 'redis':
  version => '2.8.13',
}