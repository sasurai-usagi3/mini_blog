$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mini/blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mini-blog"
  s.version     = Mini::Blog::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Mini::Blog."
  s.description = "TODO: Description of Mini::Blog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"

  s.add_development_dependency "mysql2"
end
