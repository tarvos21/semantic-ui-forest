# encoding: utf-8

require_relative './lib/guard/nanoc/version'

Gem::Specification.new do |s|
  s.name          = 'guard-nanoc'
  s.version       = Guard::GUARD_NANOC_VERSION
  s.homepage      = 'http://nanoc.ws/'
  s.summary       = 'guard gem for nanoc'
  s.description   = 'Automatically rebuilds nanoc sites'
  s.license       = 'MIT'

  s.author        = 'Denis Defreyne'
  s.email         = 'denis.defreyne@stoneship.org'

  s.add_dependency 'guard', '~> 2.8'
  s.add_dependency 'guard-compat', '~> 1.0'
  s.add_dependency 'nanoc', '~> 4.0'

  s.files         = Dir['[A-Z]*'] + Dir['lib/**/*'] + [ 'guard-nanoc.gemspec' ]
  s.require_paths = [ 'lib' ]
end
