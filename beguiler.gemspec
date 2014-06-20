# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beguiler/version'

Gem::Specification.new do |spec|
  spec.name          = "beguiler"
  spec.version       = Beguiler::VERSION
  spec.authors       = ["Charles Lowell"]
  spec.email         = ["cowboyd@frontside.io"]
  spec.summary       = %q{Embed the GUILE Scheme interpreter into Ruby}
  spec.description   = %q{script Ruby from Scheme, Scheme from Ruby}
  spec.homepage      = "https://github.com/cowboyd/beguiler"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.extensions    = ["ext/beguiler/extconf.rb"]
  spec.require_paths = ["lib", "ext"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
