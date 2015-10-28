$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "multi_database/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "multi_database"
  s.version     = MultiDatabase::VERSION
  s.authors     = ["Tmorton125"]
  s.email       = ["tmorton125@gmail.com"]
  s.homepage    = "http://github.com"
  s.summary     = "Allows connection to multiple Databases"
  s.description = "Allows user to define multiple database connections in database for better management"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "gretel"
  s.add_dependency 'sass-rails', '~> 4.0.3'
  s.add_dependency 'turbolinks'
  s.add_dependency 'haml-rails'
  s.add_dependency 'html2haml'
  s.add_dependency "bootstrap-sass"
  s.add_dependency "autoprefixer-rails"
  s.add_dependency "json"
  s.add_development_dependency "sqlite3"

end
