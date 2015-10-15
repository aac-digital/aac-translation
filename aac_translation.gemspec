$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "aac_translation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "aac_translation"
  s.version     = AacTranslation::VERSION
  s.authors     = ["Adam Haris", "Peter Toth"]
  s.email       = ["iamadamharis@gmail.com", "tothpeter08@gmail.com"]
  s.homepage    = "http://aac.digital"
  s.summary     = "Simple Rails engine to manage your translations in a db."
  s.description = "Simple Rails engine to manage your translations in a db."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "fast_gettext", "~> 1.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "database_cleaner"
end
