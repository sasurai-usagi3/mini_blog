$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'mini/blog/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'mini-blog'
  s.version     = Mini::Blog::VERSION
  s.authors     = ['Takumu Uyama']
  s.email       = ['sasurai.usagi3@gmail.com']
  s.homepage    = 'https://github.com/sasurai-usagi3/mini-blog'
  s.summary     = 'Markdown Blog/Memo'
  s.description = 'Markdown Blog/Memo.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.5'
  s.add_dependency 'carrierwave'

  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_bot_rails'
end
