# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adaptable_tests_for_rails/version"

Gem::Specification.new do |s|
  s.name        = "adaptable_tests_for_rails"
  s.version     = AdaptableTestsForRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["C. Jason Harrelson (midas)"]
  s.email       = ["jason@lookforwardenterprises.com"]
  s.homepage    = ""
  s.summary     = %q{Adds SQLite in memory and file testing abilities in addition to MySQL or other db tests.}
  s.description = %q{Adds SQLite in memory and file testing abilities in addition to MySQL or other db
                     tests.  You must provide the configuration in your database.yml file.}

  s.rubyforge_project = "adaptable_tests_for_rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
