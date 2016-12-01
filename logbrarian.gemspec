# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logbrarian/version'

Gem::Specification.new do |spec|
  spec.name          = "logbrarian"
  spec.version       = Logbrarian::VERSION
  spec.authors       = ["Alex Clink"]
  spec.email         = ["code@alexclink.com"]

  spec.summary       = "Manage / Rotate logs"
  spec.description   = "Useful for archiving old logs"
  spec.homepage      = "https://pixelfaucet.com/gems/logbrarian"
  spec.license       = "MIT"

  spec.files = [
    "lib/**/*",
    "bin/**/*",
    "README.md"
  ].map {|g| Dir.glob(g)}.flatten
  spec.bindir        = "bin"
  spec.executables   = ["logbrarian"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  
  spec.add_dependency "activesupport"
end
