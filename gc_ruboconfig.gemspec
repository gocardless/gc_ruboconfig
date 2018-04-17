Gem::Specification.new do |spec|
  spec.name          = "gc_ruboconfig"
  spec.version       = "2.3.6"
  spec.summary       = "GoCardless's shared Rubocop configuration, conforming to our house style"
  spec.authors       = %w(GoCardless)
  spec.homepage      = "https://github.com/gocardless/ruboconfig"
  spec.email         = %w(developers@gocardless.com)
  spec.license       = "MIT"

  spec.files         = "rubocop.yml"
  spec.add_dependency "rubocop", "~> 0.55.0"
  spec.add_dependency "rubocop-rspec", "~> 1.24"
end
