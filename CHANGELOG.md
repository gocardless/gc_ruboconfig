Changelog
=========

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
