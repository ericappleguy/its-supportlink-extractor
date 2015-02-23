# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cowsay"
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["JohnnyT"]
  s.date = "2012-10-26"
  s.description = "ASCII art avatars emote your messages"
  s.email = ["johnnyt@moneydesktop.com"]
  s.executables = ["cowsay"]
  s.files = ["bin/cowsay"]
  s.homepage = "https://github.com/moneydesktop/cowsay"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "ASCII art avatars emote your messages"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
