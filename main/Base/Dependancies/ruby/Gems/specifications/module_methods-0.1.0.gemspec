# -*- encoding: utf-8 -*-
# stub: module_methods 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "module_methods".freeze
  s.version = "0.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/AlexWayfer/module_methods/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/AlexWayfer/module_methods", "source_code_uri" => "https://github.com/AlexWayfer/module_methods" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alexander Popov".freeze]
  s.date = "2020-07-07"
  s.description = "Extendable module for modules with instance and class methods.\nThese modules can be included into each other modules and saving all chain,\nincluding `inherited` or `included` (class) methods.\n".freeze
  s.email = ["alex.wayfer@gmail.com".freeze]
  s.homepage = "https://github.com/AlexWayfer/module_methods".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Extendable module for modules with instance and class methods.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<activesupport>.freeze, ["~> 6.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<pry-byebug>.freeze, ["~> 3.9".freeze])
  s.add_development_dependency(%q<codecov>.freeze, ["~> 0.1.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.18.0".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.86.0".freeze])
  s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<gem_toys>.freeze, ["~> 0.1.0".freeze])
  s.add_development_dependency(%q<toys>.freeze, ["~> 0.10.0".freeze])
end
