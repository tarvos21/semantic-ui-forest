# -*- encoding: utf-8 -*-
# stub: rubyforge 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rubyforge".freeze
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryan Davis".freeze, "Eric Hodel".freeze, "Ara T Howard".freeze, "Tom Copeland".freeze]
  s.date = "2010-03-01"
  s.description = "A script which automates a limited set of rubyforge operations.\n\n* Run 'rubyforge help' for complete usage.\n* Setup: For first time users AND upgrades to 0.4.0:\n  * rubyforge setup (deletes your username and password, so run sparingly!)\n  * edit ~/.rubyforge/user-config.yml\n  * rubyforge config\n* For all rubyforge upgrades, run 'rubyforge config' to ensure you have latest.".freeze
  s.email = ["ryand-ruby@zenspider.com".freeze, "drbrain@segment7.net".freeze, "ara.t.howard@gmail.com".freeze, "tom@infoether.com".freeze]
  s.executables = ["rubyforge".freeze]
  s.extra_rdoc_files = ["History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze]
  s.files = ["History.txt".freeze, "Manifest.txt".freeze, "README.txt".freeze, "bin/rubyforge".freeze]
  s.homepage = "http://codeforpeople.rubyforge.org/rubyforge/".freeze
  s.rdoc_options = ["--main".freeze, "README.txt".freeze]
  s.rubyforge_project = "codeforpeople".freeze
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A script which automates a limited set of rubyforge operations".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json_pure>.freeze, [">= 1.1.7"])
    else
      s.add_dependency(%q<json_pure>.freeze, [">= 1.1.7"])
    end
  else
    s.add_dependency(%q<json_pure>.freeze, [">= 1.1.7"])
  end
end
