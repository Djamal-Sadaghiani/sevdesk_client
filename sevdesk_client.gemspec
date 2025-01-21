$:.push File.expand_path("../lib", __FILE__)
require "openapi_client/version"

Gem::Specification.new do |s|
  s.name        = "sevdesk_client"
  s.version     = OpenapiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator", "Djamal Sadaghiani"]
  s.email       = ["djamal@dobbi.co"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = %q{Ruby client for the sevDesk API}
  s.description   = %q{A comprehensive Ruby client for interacting with the sevDesk API, generated from OpenAPI specifications.}

  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
