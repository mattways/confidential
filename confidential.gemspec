$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'confidential/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'confidential'
  s.version     = Confidential::VERSION
  s.authors     = ['mmontossi']
  s.email       = ['mmontossi@gmail.com']
  s.homepage    = 'https://github.com/mmontossi/confidential'
  s.summary     = 'Confidential variables for rails.'
  s.description = 'Confidential yaml loaded into environment in rails.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'rails', ['>= 3.1.0', '< 4.1.0']
end
