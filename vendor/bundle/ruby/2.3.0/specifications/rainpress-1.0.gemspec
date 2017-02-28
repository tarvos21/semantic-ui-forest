# -*- encoding: utf-8 -*-
# stub: rainpress 1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rainpress".freeze
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Uwe L. Korn, Jeff Smick".freeze]
  s.date = "2009-01-14"
  s.description = "A CSS compressor".freeze
  s.email = "sprsquish@gmail.com".freeze
  s.executables = ["csspress".freeze]
  s.extra_rdoc_files = ["bin/csspress".freeze, "CHANGELOG".freeze, "lib/autotest/discover.rb".freeze, "lib/autotest/spec.rb".freeze, "lib/rainpress.rb".freeze, "README.rdoc".freeze]
  s.files = ["CHANGELOG".freeze, "README.rdoc".freeze, "bin/csspress".freeze, "lib/autotest/discover.rb".freeze, "lib/autotest/spec.rb".freeze, "lib/rainpress.rb".freeze]
  s.homepage = "http://github.com/sprsquish/rainpress/tree/master".freeze
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--title".freeze, "Rainpress".freeze, "--main".freeze, "README.rdoc".freeze, "-S".freeze, "-T".freeze, "hanna".freeze, "--main".freeze, "README.rdoc".freeze, "--exclude".freeze, "autotest".freeze]
  s.rubyforge_project = "squishtech".freeze
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A CSS compressor".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<echoe>.freeze, [">= 0"])
    else
      s.add_dependency(%q<echoe>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<echoe>.freeze, [">= 0"])
  end
end
