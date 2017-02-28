# -*- encoding: utf-8 -*-
# stub: guard-nanoc 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-nanoc".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Denis Defreyne".freeze]
  s.date = "2015-11-07"
  s.description = "Automatically rebuilds nanoc sites".freeze
  s.email = "denis.defreyne@stoneship.org".freeze
  s.homepage = "http://nanoc.ws/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "guard gem for nanoc".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>.freeze, ["~> 2.8"])
      s.add_runtime_dependency(%q<guard-compat>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<nanoc>.freeze, ["~> 4.0"])
    else
      s.add_dependency(%q<guard>.freeze, ["~> 2.8"])
      s.add_dependency(%q<guard-compat>.freeze, ["~> 1.0"])
      s.add_dependency(%q<nanoc>.freeze, ["~> 4.0"])
    end
  else
    s.add_dependency(%q<guard>.freeze, ["~> 2.8"])
    s.add_dependency(%q<guard-compat>.freeze, ["~> 1.0"])
    s.add_dependency(%q<nanoc>.freeze, ["~> 4.0"])
  end
end
