# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'gc_ruboconfig'
  spec.version       = '5.0.3'
  spec.summary       = "GoCardless's shared Rubocop configuration, conforming to our house style"
  spec.authors       = %w[GoCardless]
  spec.homepage      = 'https://github.com/gocardless/ruboconfig'
  spec.email         = %w[developers@gocardless.com]
  spec.license       = 'MIT'

  spec.files         = ['rubocop.yml', 'rails.yml', 'capybara.yml']
  spec.add_dependency 'rubocop', '>= 1.63'
  spec.add_dependency 'rubocop-factory_bot', '>= 2.26.1'
  spec.add_dependency 'rubocop-performance', '>= 1.24'
  spec.add_dependency 'rubocop-rails', '>= 2.30.0'
  spec.add_dependency 'rubocop-rspec', '>= 3.5.0'
  spec.add_dependency 'rubocop-rspec_rails', '>= 2.30.0'
end
