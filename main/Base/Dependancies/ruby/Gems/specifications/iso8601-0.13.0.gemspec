# -*- encoding: utf-8 -*-
# stub: iso8601 0.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "iso8601".freeze
  s.version = "0.13.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "yard.run" => "yri" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Arnau Siches".freeze]
  s.date = "2020-07-05"
  s.description = "    ISO8601 is a simple implementation in Ruby of the ISO 8601 (Data elements and\n    interchange formats - Information interchange - Representation of dates\n    and times) standard.\n".freeze
  s.email = "arnau.siches@gmail.com".freeze
  s.homepage = "https://github.com/arnau/ISO8601".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Ruby parser to work with ISO 8601 dateTimes and durations - http://en.wikipedia.org/wiki/ISO_8601".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<pry>.freeze, ["~> 0.13.1".freeze])
  s.add_development_dependency(%q<pry-doc>.freeze, ["~> 1.1.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.85".freeze])
  s.add_development_dependency(%q<rubocop-packaging>.freeze, ["~> 0.1.1".freeze])
end
