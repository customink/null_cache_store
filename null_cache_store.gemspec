# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'null_cache_store/version'

Gem::Specification.new do |spec|
  spec.name          = "null_cache_store"
  spec.version       = NullCacheStore::VERSION
  spec.authors       = ["Dan Drinkard"]
  spec.email         = ["dan.drinkard@customink.com"]

  spec.summary       = %q{A backport of ActiveSupport::Cache::NullStore for Rails < 3.2}
  spec.homepage      = "https://github.com/customink/null_cache_store"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport', '< 3.2'
  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
