# 100-puppet_ssh_condig.pp

File_line { 'Turn off password auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  ensure => present,
}

File_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentifyFile ~/.ssh/school',
  ensure => present,
}
