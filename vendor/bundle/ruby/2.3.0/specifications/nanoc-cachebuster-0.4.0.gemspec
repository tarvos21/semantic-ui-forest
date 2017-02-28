# -*- encoding: utf-8 -*-
# stub: nanoc-cachebuster 0.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "nanoc-cachebuster".freeze
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Arjan van der Gaag".freeze]
  s.date = "2016-07-25"
  s.description = "Your website should use far-future expires headers on static assets, to make\nthe best use of client-side caching. But when a file is cached, updates won't\nget picked up. Cache busting is the practice of making the filename of a\ncached asset unique to its content, so it can be cached without having to\nworry about future changes.\n\nThis gem adds a filter and some helper methods to Nanoc, the static site\ngenerator, to simplify the process of making asset filenames unique. It helps\nyou output fingerprinted filenames, and refer to them from your source files.\n\nIt works on images, javascripts and stylesheets. It is extracted from the\nnanoc-template project at http://github.com/avdgaag/nanoc-template.\n".freeze
  s.email = ["arjan@arjanvandergaag.nl".freeze]
  s.homepage = "https://github.com/avdgaag/nanoc-cachebuster".freeze
  s.rubyforge_project = "nanoc-cachebuster".freeze
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Adds filters and helpers for cache busting to Nanoc".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nanoc>.freeze, [">= 3.3.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<nanoc>.freeze, [">= 3.3.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<nanoc>.freeze, [">= 3.3.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
