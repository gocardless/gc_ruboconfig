# Contributing to gc_ruboconfig

Thank you for your interest in contributing to GoCardless's shared Rubocop configuration! This document provides guidelines for contributing to this project.

## Getting Started

1. Fork the repository on GitHub
2. Clone your fork locally:
   ```bash
   git clone https://github.com/your-username/gc_ruboconfig.git
   cd gc_ruboconfig
   ```
3. Install dependencies:
   ```bash
   bundle install
   ```

## Making Changes

### Configuration Files

This gem provides shared Rubocop configurations through YAML files:

- `rubocop.yml` - Main configuration file with GoCardless house style rules
- `rails.yml` - Rails-specific configuration
- `capybara.yml` - Capybara-specific configuration for testing

### Before Making Changes

1. Create a feature branch from `master`:

   ```bash
   git checkout -b feature/your-feature-name
   ```

2. Make your changes to the appropriate configuration file(s)

### Testing Your Changes

Before submitting a pull request, ensure your changes are valid:

1. Run the validation script:

   ```bash
   bundle exec ruby validate_config.rb
   ```

2. Test your changes in a real project by temporarily pointing your project's Gemfile to your local version:
   ```ruby
   gem 'gc_ruboconfig', path: '/path/to/your/local/gc_ruboconfig'
   ```

### Configuration Guidelines

- Follow existing patterns and structure in the configuration files
- Include clear comments explaining the reasoning behind rule changes
- Consider the impact on existing codebases when making breaking changes
- Prefer enabling rules that improve code quality and consistency
- Document any new dependencies in the gemspec file

## Submitting Changes

1. Ensure all tests pass and configuration is valid
2. Write clear, descriptive commit messages
3. Push your changes to your fork
4. Create a pull request against the `master` branch

### Pull Request Guidelines

- Provide a clear description of the changes and their rationale
- Reference any related issues
- Include examples of code that would be affected by the changes
- Consider the impact on teams already using the configuration

## Release Process

Releases are handled by maintainers:

1. Update the version number in `gc_ruboconfig.gemspec`
2. Update `CHANGELOG.md` with the new version and changes
3. Create a tagged release through the [GitHub UI](https://github.com/gocardless/gc_ruboconfig/releases/new)
4. The GitHub Actions workflow will automatically build and publish the gem

## Getting Help

- Open an issue for bugs or feature requests
- Check existing issues and pull requests before creating new ones

## Code of Conduct

Please be respectful and professional in all interactions. We're committed to providing a welcoming and inclusive environment for all contributors.
