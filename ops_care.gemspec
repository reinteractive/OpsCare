# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ops_care/version'

Gem::Specification.new do |spec|
  spec.name          = "ops_care"
  spec.version       = OpsCare::VERSION
  spec.authors       = [
    "Glenn Davy",
    "Joseph Glanville",
    "Mikel Lindsaar",
    "Raphael Campardou",
    "Tim Hemi",
  ]
  spec.email         = ["support@reinteractive.net"]

  spec.summary       = %q{Configuration and support for reinteractive's OpsCare service.}
  spec.homepage      = "https://github.com/reinteractive/OpsCare"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "skylight",     "~> 0"
  spec.add_dependency "okcomputer",   "~> 1"
  spec.add_dependency "bugsnag",      "~> 2"
  spec.add_dependency "logstasher",   "~> 0"

  spec.add_development_dependency "bundler",  "~> 1"
  spec.add_development_dependency "rake",     "~> 10.0"
end
