# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dev_ldap_server/version'

Gem::Specification.new do |gem|
  gem.name          = 'dev_ldap_server'
  gem.version       = DevLdapServer::VERSION
  gem.authors       = DevLdapServer::AUTHORS
  gem.email         = DevLdapServer::EMAIL
  gem.description   = DevLdapServer::DESCRIPTION
  gem.summary       = DevLdapServer::SUMMARY
  gem.homepage      = DevLdapServer::HOMEPAGE
 
  gem.files = Dir['Rakefile', 'Gemfile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = Dir['{test,spec,features}']

  gem.add_development_dependency 'rspec'
  gem.add_runtime_dependency 'trollop'

end
