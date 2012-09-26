$username = 'm1key'

user { "$username":
  ensure => present,
}

$development_dir = "/home/$username/Development"
file { "$development_dir":
  ensure => directory
}
file { "$development_dir/Downloaded Software":
  ensure => directory
}
file { "$development_dir/Servers":
  ensure => directory
}
file { "$development_dir/Tools":
  ensure => directory
}
file { "$development_dir/Projects":
  ensure => directory
}
file { "$development_dir/Temp":
  ensure => directory
}

package {'maven':
  ensure => latest,
}
package {'mysql-server':
  ensure => latest,
}
package {'emacs':
  ensure => latest,
}
