# -*- encoding: utf-8 -*-
# stub: typogruby 1.0.18 ruby lib

Gem::Specification.new do |s|
  s.name = "typogruby".freeze
  s.version = "1.0.18"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Arjan van der Gaag".freeze]
  s.date = "2015-01-20"
  s.description = "Improve web typography using various text filters. This gem prevents widows and applies markup to ampersans, consecutive capitals and initial quotes.".freeze
  s.email = "arjan@arjanvandergaag.nl".freeze
  s.executables = ["typogruby".freeze]
  s.extra_rdoc_files = ["LICENSE".freeze, "README.md".freeze, "HISTORY.md".freeze]
  s.files = ["HISTORY.md".freeze, "LICENSE".freeze, "README.md".freeze, "bin/typogruby".freeze]
  s.homepage = "http://avdgaag.github.com/typogruby".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "Improves web typography like Django's Typogrify".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubypants>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_development_dependency(%q<cucumber>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<bluecloth>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rubypants>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_dependency(%q<cucumber>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<bluecloth>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rubypants>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<aruba>.freeze, [">= 0"])
    s.add_dependency(%q<cucumber>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<bluecloth>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
  end
end
