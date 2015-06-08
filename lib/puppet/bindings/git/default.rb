Puppet::Bindings.newbindings('git::default') do
  bind {
    name         'git'
    to           'function'
    in_multibind 'puppet::module_data'
  }
end
