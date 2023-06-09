# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'zip_to_timezone/version'

Gem::Specification.new do |s|
  s.name = %q{zip_to_timezone}
  s.version = ZipToTimezone::VERSION
  s.authors = ["Ryan Garver"]
  s.email = %q{ragarver@gmail.com}
  s.homepage = %q{http://github.com/rgarver/zip_to_timezone}
  s.summary = %q{Map US postal codes to US timezones}
  s.description = %q{Map US postal codes to US timezones.  Compatible with Rails.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency(%q<rake>, ["~> 12.3.2"])
  s.add_development_dependency(%q<rdoc>, "~> 6.5.0")
  s.add_development_dependency(%q<rspec>, ["~> 3.8.0"])
  s.add_runtime_dependency(%q<algorithms>, ["~> 0.6.1"])
end

