# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_spatial_field/version'

Gem::Specification.new do |spec|
  spec.add_runtime_dependency("rails_admin", "> 0.4.0")
  spec.add_runtime_dependency("rgeo-geojson")

  spec.name          = "rails_admin_spatial_field"
  spec.version       = RailsAdminSpatialField::VERSION
  spec.authors       = ["srt32"]
  spec.email         = ["simon.taranto@gmail.com"]
  spec.summary       = %q{PostGIS Spatial Support for Rails Admin}
  spec.description   = %q{Allows Rails Admin to work with PostGIS spatial field type.}
  spec.homepage      = "https://github.com/srt32/rails_admin_spatial_field"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
