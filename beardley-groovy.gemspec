# encoding: utf-8
Gem::Specification.new do |s|
  s.name = "beardley-groovy"
  File.open("VERSION", "rb") do |f|
    s.version = f.read
  end
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.author = "Brice Texier"
  s.email  = "burisu@oneiros.fr"
  s.summary = "Groovy for Beardley"
  s.extra_rdoc_files = [ "LICENSE", "README.rdoc" ]
  s.test_files = `git ls-files test/test_*.rb`.split("\n") 
  exclusions = [ "#{s.name}.gemspec", ".travis.yml", ".gitignore", "Gemfile", "Gemfile.lock", "Rakefile"]
  s.files = `git ls-files`.split("\n").delete_if{|f| exclusions.include?(f)}
  s.homepage = "http://github.com/burisu/beardley-groovy"
  s.license = "MIT"
  s.require_path = "lib"
end

