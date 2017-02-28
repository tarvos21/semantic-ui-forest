# -*- encoding: utf-8 -*-
# stub: rubypants 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rubypants".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Gruber".freeze, "Chad Miller".freeze, "Christian Neukirchen".freeze, "Jeremy McNevin".freeze, "Aron Griffis".freeze]
  s.date = "2016-08-06"
  s.description = "The original \"SmartyPants\" is a free web publishing plug-in for\nMovable Type, Blosxom, and BBEdit that easily translates plain ASCII\npunctuation characters into \"smart\" typographic punctuation HTML\nentities.\n".freeze
  s.email = "jeremy@spokoino.net".freeze
  s.homepage = "https://github.com/jmcnevin/rubypants".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "RubyPants is a Ruby port of the smart-quotes library SmartyPants.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    else
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
  end
end
