$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "city_picker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "city_picker"
  s.version     = CityPicker::VERSION
  s.authors     = ["doabit"]
  s.email       = ["doinsist@gmail.com"]
  s.homepage    = "https://github.com/doabit"
  s.summary     = "Rails gem to select chinese area."
  s.description = "Rails gem to select chinese area, eg province, city, district and county."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0"

  s.add_development_dependency "sqlite3"
end
