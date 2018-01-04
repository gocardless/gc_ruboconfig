gc_ruboconfig
==========

GoCardless's shared Rubocop configuration, confirming to our house style.

If you're using [RSpec](https://github.com/rspec/rspec), this will also enforce that your
specs conform to GoCardless's house style.

To use `gc_ruboconfig`, simply add it to your Gemfile:

```ruby
gem 'gc_ruboconfig'
```

Next, just inherit from it in your `.rubocop.yml`:

```yaml
inherit_gem:
  gc_ruboconfig: rubocop.yml
```
