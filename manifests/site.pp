node default {
  file { '/root/README':
    ensure => file,
<<<<<<< HEAD
=======
    content => 'This is a README',
    owner => 'root',
>>>>>>> 0bf188d2fce7b9d91ec8b071591ed38fa8d78c9c
  }
}
