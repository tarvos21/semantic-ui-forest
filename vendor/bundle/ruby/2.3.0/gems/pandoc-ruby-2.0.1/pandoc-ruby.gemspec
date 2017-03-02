# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'pandoc-ruby'
  s.version = '2.0.1'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['William Melody']
  s.date = '2016-05-04'
  s.description = 'Ruby wrapper for Pandoc'
  s.email = 'hi@williammelody.com'
  s.extra_rdoc_files = [
    'LICENSE',
    'README.md'
  ]
  s.files = %w(
    .document
    Gemfile
    Gemfile.lock
    LICENSE
    README.md
    Rakefile
    lib/pandoc-ruby.rb
    pandoc-ruby.gemspec
    test/benchmark.rb
    test/files/benchmark.txt
    test/files/test.md
    test/helper.rb
    test/test_conversions.rb
    test/test_pandoc_ruby.rb
  )
  s.homepage = 'http://github.com/alphabetum/pandoc-ruby'
  s.licenses = ['MIT']
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 1.9.3'
  s.rubygems_version = '1.8.25'
  s.summary = 'PandocRuby'

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency('mocha', '~> 1.1', '>= 1.1.0')
      s.add_development_dependency('rake', '~> 10.4', '>= 10.4.2')
      s.add_development_dependency('rdoc', '~> 4.2', '>= 4.2.0')
      s.add_development_dependency('minitest', '~>5.8.3', '>= 5.8.3')
    else
      s.add_dependency('mocha', ['~> 1.1.0'])
      s.add_dependency('rake', ['~> 10.4.2'])
      s.add_dependency('rdoc', ['~> 4.2.0'])
      s.add_dependency('minitest', ['~>5.8.3'])
    end
  else
    s.add_dependency('mocha', ['~> 1.1.0'])
    s.add_dependency('rake', ['~> 10.4.2'])
    s.add_dependency('rdoc', ['~> 4.2.0'])
    s.add_dependency('minitest', ['~>5.8.3'])
  end
end