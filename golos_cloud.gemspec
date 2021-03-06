# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'golos_cloud/version'

Gem::Specification.new do |spec|
  spec.name = 'golos_cloud'
  spec.version = GolosCloud::VERSION
  spec.authors = ['Anthony Martin']
  spec.email = ['golos_cloud@martin-studio.com']

  spec.summary = %q{Ruby/Rails wrapper for golos.cloud}
  spec.description = %q{Rails compatible gem that provides full DB connection and models to golos.cloud}
  spec.homepage = 'https://github.com/inertia186/golos_cloud'
  spec.license = 'WTFPL'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  spec.require_paths = ['lib']
  spec.bindir = 'bin'
  spec.executables = 'golos_cloud'
  
  spec.add_development_dependency 'bundler', '~> 1.15', '>= 1.15.4'
  spec.add_development_dependency 'rake', '~> 12.1', '>= 12.1.0'
  spec.add_development_dependency 'awesome_print', '~> 1.7', '>= 1.7.0'

  spec.add_runtime_dependency 'nokogiri', ['~> 1.8']
  spec.add_runtime_dependency 'rest-client', ['~> 2.0']
  spec.add_runtime_dependency 'activerecord', ['>= 4', '< 6']
  spec.add_runtime_dependency 'tiny_tds', ['~> 1.3']
  spec.add_runtime_dependency 'activerecord-sqlserver-adapter', ['>= 4', '< 6']
end
