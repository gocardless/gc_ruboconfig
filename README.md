Ruboconfig
==========

[![CircleCI](https://circleci.com/gh/gocardless/ruboconfig.svg?style=svg)](https://circleci.com/gh/gocardless/ruboconfig)

GoCardless' shared rubocop configuration.

To use ruboconfig, simply add it to your Gemfile
```ruby
gem 'ruboconfig', git: 'git@github.com:gocardless/ruboconfig'
```

and inherit from it in your `.rubocop.yml`
```yaml
inherit_gem:
  ruboconfig: rubocop.yml
```
