# -*- encoding: utf-8 -*-
# stub: echoe 4.6.6 ruby lib

Gem::Specification.new do |s|
  s.name = "echoe".freeze
  s.version = "4.6.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.4".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Evan Weaver".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDaDCCAlCgAwIBAgIBATANBgkqhkiG9w0BAQUFADA9MQ0wCwYDVQQDDARldmFu\nMRgwFgYKCZImiZPyLGQBGRYIY2xvdWRidXIxEjAQBgoJkiaJk/IsZAEZFgJzdDAe\nFw0xMzExMDQyMDI1MDVaFw0xNDExMDQyMDI1MDVaMD0xDTALBgNVBAMMBGV2YW4x\nGDAWBgoJkiaJk/IsZAEZFghjbG91ZGJ1cjESMBAGCgmSJomT8ixkARkWAnN0MIIB\nIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuG4q2IdTtlc7/IJkWPnbOAFt\nysKc3XmLHsjeSXXSPdQ1mb2cDXvyDS8TkzjrgDoJ96RR2xrh7bfkHAMJhSVMhsPM\nrnYS7fDs//X1h6fRYBjjhqGeQhCL1xrS5/I4vKb7AjgFnuUbMZ/H0+ic2Ic2zTnZ\njttSQZ/QOlYyctrYoTzAFdPwL+dOxskOyAmAbtV/pV3owcXpChRT/tphC7u69sOk\n+IjWsMwrBCbEdj/Jmh4a52QntAwPWx4Krt0zm8eV3/UjSObB3BR1pZ/i5IsSLPs1\nlwMA6ywbfxBTP59XcgAyhfV3rRQXb+vjpf7OLuOCJOUIN8GEwb5HNjFo/UVdiwID\nAQABo3MwcTAJBgNVHRMEAjAAMAsGA1UdDwQEAwIEsDAdBgNVHQ4EFgQUbTCqyydn\n0Rm6nngf15KtCEMc37swGwYDVR0RBBQwEoEQZXZhbkBjbG91ZGJ1ci5zdDAbBgNV\nHRIEFDASgRBldmFuQGNsb3VkYnVyLnN0MA0GCSqGSIb3DQEBBQUAA4IBAQBggGGb\n0AoyF0QofzkPImuhN1UF6eG/RdYOHqiUovuRN/9IblyKAaZAIl1mIspfCav8EVwo\nSC6vz4OaIVpS7QdI04oLNHxhmC6C5TTBONtddDl93M+9uWVipD5uVPktcHWG+bKn\n2L1lUykQXr8ra45TqAUZ/P+Yv76U8kUsVG2HE5gl/CgB5+V1qkpn5M4CADsvSvPA\nqEATZvw+KUzzMCUiVzq+T6lDrrCt+sD3NZlvG4BD2PpQuPtDf1i61DUc+5s2Nwm2\nt4uqNF7swBWS0n40/hmn5u8pT2JVsuwam79GGhJmNfCdPCcCbgphroexRcrwdURX\nly00Xdf1gDVBxRoR\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2014-05-15"
  s.description = "A Rubygems packaging tool that provides Rake tasks for documentation, extension compiling, testing, and deployment.".freeze
  s.email = "".freeze
  s.extra_rdoc_files = ["CHANGELOG".freeze, "LICENSE".freeze, "README.rdoc".freeze, "lib/echoe.rb".freeze, "lib/echoe/extensions.rb".freeze, "lib/echoe/platform.rb".freeze, "lib/echoe/rubygems.rb".freeze]
  s.files = ["CHANGELOG".freeze, "LICENSE".freeze, "README.rdoc".freeze, "lib/echoe.rb".freeze, "lib/echoe/extensions.rb".freeze, "lib/echoe/platform.rb".freeze, "lib/echoe/rubygems.rb".freeze]
  s.homepage = "http://fauna.github.com/fauna/echoe/".freeze
  s.licenses = ["Academic Free License (AFL) v. 3.0".freeze]
  s.rdoc_options = ["--line-numbers".freeze, "--title".freeze, "Echoe".freeze, "--main".freeze, "README.rdoc".freeze]
  s.rubyforge_project = "fauna".freeze
  s.rubygems_version = "2.6.10".freeze
  s.summary = "A Rubygems packaging tool that provides Rake tasks for documentation, extension compiling, testing, and deployment.".freeze

  s.installed_by_version = "2.6.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
      s.add_runtime_dependency(%q<allison>.freeze, [">= 2.0.3"])
      s.add_runtime_dependency(%q<rdoc>.freeze, [">= 2.5.11"])
      s.add_runtime_dependency(%q<rake>.freeze, [">= 0.9.2"])
    else
      s.add_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
      s.add_dependency(%q<allison>.freeze, [">= 2.0.3"])
      s.add_dependency(%q<rdoc>.freeze, [">= 2.5.11"])
      s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    end
  else
    s.add_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
    s.add_dependency(%q<allison>.freeze, [">= 2.0.3"])
    s.add_dependency(%q<rdoc>.freeze, [">= 2.5.11"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
  end
end
