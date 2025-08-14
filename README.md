# gc_ruboconfig

[![Gem Version](https://badge.fury.io/rb/gc_ruboconfig.svg)](https://badge.fury.io/rb/gc_ruboconfig)
[![Tests](https://github.com/gocardless/gc_ruboconfig/workflows/tests/badge.svg)](https://github.com/gocardless/gc_ruboconfig/actions)

GoCardless's shared Rubocop configuration, conforming to our house style.

This gem provides a comprehensive set of Ruby style guidelines and linting rules, including support for:

- Core Ruby best practices
- [RSpec](https://github.com/rspec/rspec) testing conventions
- Rails application patterns
- Performance optimizations
- Factory Bot usage

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gc_ruboconfig'
```

Then execute:

```bash
bundle install
```

The following Rubocop plugins will be automatically installed as dependencies:

- [`rubocop`](https://rubygems.org/gems/rubocop) - Core Ruby linting
- [`rubocop-rspec`](https://rubygems.org/gems/rubocop-rspec) - RSpec-specific rules
- [`rubocop-rails`](https://rubygems.org/gems/rubocop-rails) - Rails-specific rules
- [`rubocop-performance`](https://rubygems.org/gems/rubocop-performance) - Performance-focused rules
- [`rubocop-factory_bot`](https://rubygems.org/gems/rubocop-factory_bot) - Factory Bot-specific rules
- [`rubocop-rspec_rails`](https://rubygems.org/gems/rubocop-rspec_rails) - RSpec Rails integration rules

## Usage

### Basic Setup

Create a `.rubocop.yml` file in your project root and inherit from this gem:

```yaml
inherit_gem:
  gc_ruboconfig: rubocop.yml
```

### Rails Projects

For Rails applications, also inherit the Rails-specific configuration:

```yaml
inherit_gem:
  gc_ruboconfig:
    - rubocop.yml
    - rails.yml
```

### Capybara Testing

If you're using Capybara for integration testing, include the Capybara configuration:

```yaml
inherit_gem:
  gc_ruboconfig:
    - rubocop.yml
    - rails.yml
    - capybara.yml
```

### Sorbet Projects

For projects using [Sorbet](https://sorbet.org/), you'll need to add [`rubocop-sorbet`](https://rubygems.org/gems/rubocop-sorbet) separately as it's not included in this gem:

```ruby
# Gemfile
gem 'gc_ruboconfig'
gem 'rubocop-sorbet'
```

```yaml
# .rubocop.yml
inherit_gem:
  gc_ruboconfig: rubocop.yml

plugins:
  - rubocop-sorbet
```

## Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on contributing to this project.

## Versioning

This gem follows [semantic versioning](https://semver.org/). Breaking changes to Rubocop rules will result in a major version bump.

## License

The gem is available as open source under the terms of the [Apache License 2.0](LICENSE).

## Release Process

Releases are automated through GitHub Actions:

1. Update the version in `gc_ruboconfig.gemspec`
2. Update `CHANGELOG.md` with the changes
3. Create a [tagged release](https://github.com/gocardless/gc_ruboconfig/releases/new) on GitHub
4. The gem will be automatically built and published to [RubyGems](https://rubygems.org/gems/gc_ruboconfig)
