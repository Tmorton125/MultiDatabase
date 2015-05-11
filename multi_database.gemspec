$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "multi_database/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "multi_database"
  s.version     = MultiDatabase::VERSION
  s.authors     = ["Tmorton125"]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of MultiDatabase."
  s.description = "TODO: Description of MultiDatabase."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
end
