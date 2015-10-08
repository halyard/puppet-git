module Puppet::Parser::Functions
  newfunction(:'git::data', :type => :rvalue) do
    configdir = closure_scope.lookupvar('::boxen::config::configdir')
    repodir = closure_scope.lookupvar('::boxen::config::repodir')
    homedir = closure_scope.lookupvar('::boxen::config::home')
    {
      'git::configdir'               => "#{configdir}/git",
      'git::package'                 => 'git',
      'git::version'                 => 'latest',
      'git::credentialhelper'        => "#{repodir}/script/boxen-git-credential",
      'git::global_credentialhelper' => "#{homedir}/bin/boxen-git-credential",
      'git::global_excludesfile'     => "#{configdir}/git/gitignore"
    }
  end
end
