# -*- encoding: utf-8 -*-
# stub: nanoc 4.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "nanoc".freeze
  s.version = "4.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Denis Defreyne".freeze]
  s.date = "2016-07-24"
  s.description = "Nanoc is a static-site generator focused on flexibility. It transforms content from a format such as Markdown or AsciiDoc into another format, usually HTML, and lays out pages consistently to retain the site\u{2019}s look and feel throughout. Static sites built with Nanoc can be deployed to any web server.".freeze
  s.email = "denis.defreyne@stoneship.org".freeze
  s.executables = ["nanoc".freeze]
  s.extra_rdoc_files = ["ChangeLog".freeze, "LICENSE".freeze, "README.md".freeze, "NEWS.md".freeze]
  s.files = ["ChangeLog".freeze, "LICENSE".freeze, "NEWS.md".freeze, "README.md".freeze, "bin/nanoc".freeze]
  s.homepage = "http://nanoc.ws/".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A static-site generator with a focus on flexibility.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cri>.freeze, ["~> 2.3"])
      s.add_runtime_dependency(%q<hamster>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<ref>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["< 2.0", ">= 1.7.10"])
    else
      s.add_dependency(%q<cri>.freeze, ["~> 2.3"])
      s.add_dependency(%q<hamster>.freeze, ["~> 3.0"])
      s.add_dependency(%q<ref>.freeze, ["~> 2.0"])
      s.add_dependency(%q<bundler>.freeze, ["< 2.0", ">= 1.7.10"])
    end
  else
    s.add_dependency(%q<cri>.freeze, ["~> 2.3"])
    s.add_dependency(%q<hamster>.freeze, ["~> 3.0"])
    s.add_dependency(%q<ref>.freeze, ["~> 2.0"])
    s.add_dependency(%q<bundler>.freeze, ["< 2.0", ">= 1.7.10"])
  end
end
