# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lexical_units/version'

Gem::Specification.new do |spec|
  spec.name          = 'lexical_units'
  spec.version       = LexicalUnits::VERSION
  spec.authors       = ['Aleksander Malaszkiewicz']
  spec.email         = %w(info@fractalsoft.org)
  spec.summary       = %q(Split text into lexical units)
  spec.homepage      = 'https://github.com/fractalsoft/lexical_units'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '>=0'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
end
