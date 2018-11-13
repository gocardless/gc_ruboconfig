Changelog
=========

2.3.12
------

* Bump rubocop version to v0.60

2.3.11
------

* Bump rubocop version to v0.58
* Disable new `Style/AccessModifierDeclarations` cop which is
  [buggy](https://github.com/rubocop-hq/rubocop/issues/5953)

2.3.10
-----

* Bump rubocop version to v0.57.0
* Remove `Lint/SplatKeywordArguments` configuration

2.3.9
-----

* Bump rubocop-rspec to v1.25
* Enable rspec pending validation `RSpec/Pending`

2.3.8
-----
* Replaced by 2.3.9

2.3.7
-----

* Bump rubocop of v0.56.0
* Disable the new `Lint/SplatKeywordArguments` cop which is [buggy](https://github.com/bbatsov/rubocop/issues/5887)

2.3.6
-----

* Bump rubocop to v0.55.0

2.3.5
-----

* Bump rubocop to v0.54.0

2.3.4
-----

* Bump rubocop-rspec to v1.24

2.3.3
-----

* Bump rubocop to v0.53.0, renaming a few cops in the configuration to match their new names
* Enable the `Lint/UnneededCopEnableDirective` cop, to work alongside the already-enabled `Lint/UnneededCopDisableDirective` cop
* Fix `validate_config.rb` so it correctly outputs any problems with the `rubocop.yml` file, rather than just exiting silently with an appropriate code

2.3.2
-----

Bump [`rubocop-rspec`](https://github.com/backus/rubocop-rspec) to v1.22.0

2.3.1
-----

Configure the `RSpec/MessageSpies` cop to enforce that message
expectations should be set using `.to receive`, not
`.to have_received` (#17)

2.3.0
-----

Include `rubocop` and `rubocop-rspec` as production dependencies, automatically installed
with this gem, so we can control the versions which are installed (#15)

2.2.0
-----

Include [`rubocop-rspec`](https://github.com/backus/rubocop-rspec) and configure it as we
do in other projects to enforce good style in RSpec specs (#13)

2.1.0
-----

Enable Rubocop's `DisplayStyleGuide` and `ExtraDetails` options so more helpful error messages are displayed for offences (see 1de8a18 for further details)

2.0.0
-----

Rename the gem to `gc_ruboconfig` ahead of release on RubyGems (see d73dbee for details)

1.2.2
-----

* Bump rubocop to 0.52.1
* Re-enable the `Style/FormatStringToken` cop which was temporarily disabled in v1.2.1

1.2.1
-----

Disable the `Style/FormatStringToken` cop, which currently generates false positives against date format strings

1.2.0
-----

Bump rubocop to 0.52.0

1.1.0
-----

Bump rubocop to 0.51.0

1.0.1
-----

Fix invalid cop name

1.0.0
-----

Initial release
