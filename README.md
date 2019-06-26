gc_ruboconfig
==========

GoCardless's shared Rubocop configuration, confirming to our house style.

If you're using [RSpec](https://github.com/rspec/rspec), this will also enforce that your
specs conform to GoCardless's house style.

To use `gc_ruboconfig`, simply add it to your Gemfile:

```ruby
gem 'gc_ruboconfig'
```

The relevant versions of `rubocop` and `rubocop-rspec` will automatically be installed.

Next, just inherit from it in your `.rubocop.yml`:

```yaml
inherit_gem:
  gc_ruboconfig: rubocop.yml
```

**Note for Rails applications**

If using `gc_ruboconfig` with a Rails application, `rubocop-rails` must also be included separately,
as it has been [deprecated](https://github.com/rubocop-hq/rubocop/pull/7095) as of Rubocop v0.72.

In `Gemfile`:

```ruby
gem 'rubocop-rails'
```

In `.rubocop.yml`:

```yaml
require:
  - rubocop-rails
```
