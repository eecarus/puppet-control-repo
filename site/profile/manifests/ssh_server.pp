class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC99t1eqdBGj/UmFqkLCIPn/DteA6ISaN72DuOKVKFUsd86WeevgdbermxRVxtPNSqV1tpWUcOhUM1zWIb5c+BtQGbPRryW37kJXboIjJb82YGjkl6RNEUV6ykKNhxbrfF8n6A7pLRXO2tq0EvxXah5jTB38a2HHVDgEcjzzEjYiW+1NFA6v+ktu2KzPzpm14SoHs9OI4j59B/TPMGS5P/LqdJaeKT1qi/LClg5Iz2yGuflc/POV8AZX4JIp9jD2zQ5xjmM4tByX46MyhiDESrySqwKoggudQ7zNK6fIVwtur02AKB6IR7V4QsvZO48/g6V/MOHOpskUltcUEqO5jtp',
  }  
}
