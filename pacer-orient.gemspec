# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pacer-orient/version"

Gem::Specification.new do |s|
  s.name        = "pacer-orient"
  s.version     = Pacer::Orient::VERSION
  s.platform    = 'jruby'
  s.authors     = ["Paul Dlug"]
  s.email       = ["paul.dlug@gmail.com"]
  s.homepage    = "http://http://www.orientechnologies.com/"
  s.summary     = %q{OrientDB jars and related code for Pacer}
  s.description = s.summary

  s.add_dependency 'pacer', "~> 0.7.0"

  s.rubyforge_project = "pacer-orient"

  s.files         = `git ls-files`.split("\n") + [Pacer::Orient::JAR_PATH]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
