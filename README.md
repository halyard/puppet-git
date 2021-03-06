**Deprecation Notice:** I'm in the process of revamping my puppet work, this repo is currently not up to date.

puppet-git
===========

[![Puppet Forge](https://img.shields.io/puppetforge/v/halyard/git.svg)](https://forge.puppetlabs.com/halyard/git)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)
[![Build Status](https://img.shields.io/travis/com/halyard/puppet-git.svg)](https://travis-ci.com/halyard/puppet-git)

Install and configure git

## Changes from upstream

* Remove unused meta scripts
* Set up CircleCI tests
* Switch from puppet-module-data to function bindings
* Simplify package declaration

## Usage

In hiera:

```yaml
---
git::configdir: "%{::boxen::config::configdir}/git"

git::package: 'boxen/brews/git'

git::credentialhelper: "%{::boxen::config::repodir}/script/boxen-git-credential"
git::global_credentialhelper: "%{boxen::config::home}/bin/boxen-git-credential"
git::global_excludesfile: "%{hiera('git::configdir')}/gitignore"
```

In your manifest:

```puppet
include git

git::config::local { 'repo_specific_email':
  ensure => present,
  repo   => '/path/to/my/repo',
  key    => 'user.email',
  value  => 'turnt@example.com'
}

git::config::global { 'user.email':
  value  => 'turnt@example.com'
}
```

## Required Puppet Modules

* [boxen](https://github.com/halyard/puppet-boxen)
* [homebrew](https://github.com/halyard/puppet-homebrew)

