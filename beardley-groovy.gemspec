# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beardley/groovy/version'

Gem::Specification.new do |spec|
  spec.name = "beardley-groovy"
  spec.version = Beardley::Groovy::VERSION
  spec.author = "Brice Texier"
  spec.email  = "burisu@oneiros.fr"
  spec.summary = "Groovy for Beardley"
  spec.homepage = "http://github.com/burisu/beardley-groovy"
  spec.license = "MIT"

  spec.files = `git ls-files LICENSE.txt README.rdoc lib vendor`.split("\n")
  spec.extra_rdoc_files = [ "LICENSE.txt", "README.rdoc" ]
  spec.test_files = `git ls-files test/test_*.rb`.split("\n") 
  spec.require_path = "lib"

  spec.add_dependency "beardley"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

