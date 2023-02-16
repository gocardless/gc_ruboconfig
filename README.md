gc_ruboconfig
==========

GoCardless's shared Rubocop configuration, confirming to our house style.

If you're using [RSpec](https://github.com/rspec/rspec), this will also enforce that your
specs conform to GoCardless's house style.

## Installation

To use `gc_ruboconfig`, simply add it to your Gemfile:

```ruby
gem 'gc_ruboconfig'
```

The relevant versions of `rubocop`, `rubocop-rspec` and `rubocop-performance`
will automatically be installed.

## Usage

Inherit the config from the gem in your `.rubocop.yml`:

```yaml
inherit_gem:
  gc_ruboconfig: rubocop.yml
```

## Release

To publish the gem cut a new tagged release. This can be done via the [GitHub UI][1].

Once the release has been created, the [release GitHub Actions workflow][2] will build
the gem and push it to the [RubyGems registry][3].

[1]: https://github.com/gocardless/gc_ruboconfig/releases/new
[2]: https://github.com/gocardless/gc_ruboconfig/blob/master/.github/workflows/release.yml
[3]: https://rubygems.org/gems/gc_ruboconfig
