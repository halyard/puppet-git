function git::data {
  {
    'git::configdir'               => "${::boxen::config::configdir}/git",
    'git::package'                 => 'git',
    'git::version'                 => 'latest',
    'git::credentialhelper'        => "${::boxen::config::repodir}/script/boxen-git-credential",
    'git::global_credentialhelper' => "${boxen::config::home}/bin/boxen-git-credential",
    'git::global_excludesfile' 	   => "${::boxen::config::configdir}/git/gitignore"
  }
}
