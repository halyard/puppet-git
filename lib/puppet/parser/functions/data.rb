module Puppet::Parser::Functions
  newfunction(:'git::data', :type => :rvalue) do
    {
      'git::configdir'               => "#{lookupvar('::boxen::config::configdir')}/git",
      'git::package'                 => 'git',
      'git::version'                 => 'latest',
      'git::credentialhelper'        => "#{lookupvar('::boxen::config::repodir')}/script/boxen-git-credential",
      'git::global_credentialhelper' => "#{lookupver('::boxen::config::home')}/bin/boxen-git-credential",
      'git::global_excludesfile'     => "#{lookupvar('::boxen::config::configdir')}/git/gitignore"
    }
  end
end
