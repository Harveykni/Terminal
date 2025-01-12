# -*- encoding: utf-8 -*-
# stub: filewatcher 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "filewatcher".freeze
  s.version = "2.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Flemming".freeze, "Alexander Popov".freeze]
  s.date = "2022-11-17"
  s.description = "Detect changes in file system. Works anywhere.".freeze
  s.email = ["thomas.flemming@gmail.com".freeze, "alex.wayfer@gmail.com".freeze]
  s.homepage = "http://github.com/filewatcher/filewatcher".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.6".freeze, "< 4".freeze])
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Lightweight filewatcher.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<module_methods>.freeze, ["~> 0.1.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<bundler-audit>.freeze, ["~> 0.9.0".freeze])
  s.add_development_dependency(%q<gem_toys>.freeze, ["~> 0.12.1".freeze])
  s.add_development_dependency(%q<toys>.freeze, ["~> 0.14.2".freeze])
  s.add_development_dependency(%q<codecov>.freeze, ["~> 0.6.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.21.0".freeze])
  s.add_development_dependency(%q<simplecov-cobertura>.freeze, ["~> 2.1".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.39.0".freeze])
  s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.5".freeze])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 2.0".freeze])
end
