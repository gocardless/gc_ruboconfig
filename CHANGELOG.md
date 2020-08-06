Changelog
=========

2.17.0
------
* Add support for cops introduced by rubocop 0.88 and 0.89
 - Lint/BinaryOperatorWithIdenticalOperands
 - Lint/DuplicateElsifCondition
 - Lint/DuplicateRescueException
 - Lint/EmptyConditionalBody
 - Lint/FloatComparison
 - Lint/MissingSuper
 - Lint/OutOfRangeRegexpRef
 - Lint/SelfAssignment
 - Lint/TopLevelReturnWithArgument
 - Lint/UnreachableLoop
 - Style/ArrayCoercion
 - Style/CaseLikeIf
 - Style/ExplicitBlockArgument
 - Style/GlobalStdStream
 - Style/HashAsLastArrayItem
 - Style/HashLikeCase
 - Style/OptionalBooleanParameter
 - Style/RedundantFileExtensionInRequire
 - Style/SingleArgumentDig
 - Style/StringConcatenation

2.16.0
------
* Enable new cops introduced by rubocop-performance v1.7:
  - `Performance/AncestorsInclude`
  - `Performance/BigDecimalWithNumericArgument`
  - `Performance/RedundantSortBlock`
  - `Performance/ReverseFirst`
  - `Performance/SortReverse`
  - `Performance/Squeeze`
  - `Performance/StringInclude`

2.15.0
------
* Support new cop introduced by rubocop v0.87: `Style/AccessorGrouping` (disabled by default),
  `Style/BisectedAttrAccessor` and `Style/RedundantAssignment`
* Support new cop introduced by rubocop v0.86: `Style/RedundantFetchBlock`
* Support new cops introduced by rubocop v0.85: `Lint/MixedRegexpCaptureTypes`, `Style/RedundantRegexpEscape`
  and `Style/RedundantRegexpCharacterClass`

2.14.0
------
* Enable a new cop introduced by rubocop v0.84: `Lint/DeprecatedOpenSSLConstant`

2.13.0
------
* Enable two cops introduced by rubocop v0.83: `Layout/EmptyLinesAroundAttributeAccessor` and
  `Style/SlicingWithRange`

2.12.0
------
* Enable two cops introduced by rubocop v0.81: `Lint/RaiseException` and `Lint/StructNewOverride`

2.11.0
------

* Bump rubocop version to v0.82 and enable two new cops (`Layout/SpaceAroundMethodCallOperator`
  and `Style/ExponentialNotation`)

2.10.0
------

* Bump rubocop version to v0.80 and enable new Hash style cops

2.9.0
-----

* Bump rubocop version to v0.78 [#62]

2.8.0
-----

* Bump rubocop version to v0.77 [#61]

2.7.1
-----

* Actually use rubocop-performance by default [#60]

2.7.0
-----

* Add rubocop-performance lib [#59]

2.6.1
-----

* Disable RSpec/ImplicitBlockExpectation [#58]

2.6.0
-----

* Bump rubocop version to v0.76 [#57]

2.5.0
-----

* Bump rubocop version to v0.75 [#55]

2.4.0
-----

* Bump rubocop version to v0.70 [#51]
* Bump rubocop-rspec version to v1.33.0 [#51]

2.3.13
------

* Disable `Style/ModuleFunction` cop, as it is not quite
  [correct](https://github.com/rubocop-hq/ruby-style-guide/issues/556)

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
