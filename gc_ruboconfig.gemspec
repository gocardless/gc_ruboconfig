# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'gc_ruboconfig'
  spec.version       = '3.0.0'
  spec.summary       = "GoCardless's shared Rubocop configuration, conforming to our house style"
  spec.authors       = %w[GoCardless]
  spec.homepage      = 'https://github.com/gocardless/ruboconfig'
  spec.email         = %w[developers@gocardless.com]
  spec.license       = 'MIT'

  spec.files         = ['rubocop.yml', 'rails.yml']
  spec.add_dependency 'rubocop', '>= 1.25'
  spec.add_dependency 'rubocop-performance', '>= 1.13'
  spec.add_dependency 'rubocop-rails', '>= 2.13.0'
  spec.add_dependency 'rubocop-rspec', '>= 2.8.0'
end
