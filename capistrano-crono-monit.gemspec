# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/crono/version'

Gem::Specification.new do |spec|
  spec.name = 'capistrano-crono-monit'
  spec.version = Capistrano::Crono::VERSION
  spec.authors = ['Jose ALberto Suarez Lopez']
  spec.email = ['ja@josealberto.org']
  spec.summary = %q{Crono & Monit integration for Capistrano}
  spec.description = %q{Crono & Monit integration for Capistrano}
  spec.homepage = 'https://github.com/jalberto/capistrano-crono-monit'
  spec.license = 'LGPL-3.0'

  spec.required_ruby_version = '>= 1.9.3'
  spec.files = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano'
  spec.add_dependency 'crono'
end
