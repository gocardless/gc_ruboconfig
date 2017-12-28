Gem::Specification.new do |spec|
  spec.name          = "ruboconfig"
  spec.version       = "1.2.2"
  spec.summary       = "shared rubocop config"
  spec.description   = "The GoCardless Engineering shared Rubocop config"
  spec.authors       = %w(GoCardless)
  spec.homepage      = "https://github.com/gocardless/ruboconfig"
  spec.email         = %w(developers@gocardless.com)
  spec.license       = "MIT"

  spec.files         = "rubocop.yml"
  spec.add_development_dependency "rubocop", "~> 0.52.1"
end
