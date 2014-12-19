# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'my_primes/version'

Gem::Specification.new do |spec|
  spec.name          = "my_primes"
  spec.version       = MyPrimes::VERSION
  spec.authors       = ["mmeng"]
  spec.email         = ["mmengfanqi@gmail.com"]
  spec.summary       = %q{A tiny project for Funding Circle code challenge.}
  spec.description   = %q{A tiny project for Funding Circle code challenge.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "shoulda-context"
end
