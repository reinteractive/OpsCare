# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ops_care/version"

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

  spec.summary       = "Setup and Configuration for reinteractive's OpsCare."
  spec.homepage      = "https://github.com/reinteractive/OpsCare"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "skylight"
  spec.add_dependency "okcomputer"
  spec.add_dependency "bugsnag"

  spec.add_development_dependency "bundler",  "~> 2"
  spec.add_development_dependency "rake",     "~> 12.3.3"
end
