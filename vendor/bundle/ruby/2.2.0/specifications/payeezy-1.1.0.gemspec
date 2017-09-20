# -*- encoding: utf-8 -*-
# stub: payeezy 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "payeezy"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sachin Shetty"]
  s.date = "2014-11-25"
  s.description = "See how easy it is to integrate with Payeezy using this gem"
  s.email = ["sachin.shetty@firstdata.com"]
  s.homepage = "https://developer.payeezy.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Transact with Payeezy"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.4"])
      s.add_runtime_dependency(%q<json>, ["~> 1.8.1"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rest-client>, ["~> 1.4"])
      s.add_dependency(%q<json>, ["~> 1.8.1"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rest-client>, ["~> 1.4"])
    s.add_dependency(%q<json>, ["~> 1.8.1"])
  end
end
