# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maybe_null/version'

Gem::Specification.new do |spec|
  spec.name          = "maybe_null"
  spec.version       = MaybeNull::VERSION
  spec.authors       = ["m.malkin"]
  spec.email         = ["mirosm@mirosm.ru"]
  spec.summary       = %q{Null object and maybe monad implementation}
  spec.description   = %q{Null object and maybe monad implementation}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
