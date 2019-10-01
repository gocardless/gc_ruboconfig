Gem::Specification.new do |spec|
  spec.name          = 'gc_ruboconfig'
  spec.version       = '2.5.0'
  spec.summary       = "GoCardless's shared Rubocop configuration, conforming to our house style"
  spec.authors       = %w[GoCardless]
  spec.homepage      = 'https://github.com/gocardless/ruboconfig'
  spec.email         = %w[developers@gocardless.com]
  spec.license       = 'MIT'

  spec.files         = 'rubocop.yml'
  spec.add_dependency 'rubocop', '>= 0.75'
  spec.add_dependency 'rubocop-rspec', '>= 1.33.0'
end
