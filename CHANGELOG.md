Changelog
=========

3.0.1
-----
Remove `rubocop-rails` require from `rubocop.yml`

3.0.0
-----
Allowing Rails based cops to be required separately. Add the following to use them:

```yaml
inherit_gem:
  gc_ruboconfig:
    - rubocop.yml
    - rails.yml
```

2.33.0
-----
Adding `rubocop-rails` as part of the default install

* Enabled all `Rails/` cops except:
  - `Rails/AddColumnIndex` - Allow `index: true` when creating a column
  - `Rails/ShortI18n` - Use long form `translate` and `localize` instead of `t` and `l`

2.32.0
-----
Adding support for new cops:

* Enabled cops:
  - `Performance/StringIdentifierArgument` - Only pass symbols to `send`
  - `Style/MapToHash` - Prefer `to_h {}` over `map {}.to_h`
  - `Style/NumberedParameters` - Only allow numbered params on single lines
  - `Style/NumberedParametersLimit` - Cap number of numbered params at 2
  - `Security/IoMethods` - Disallow direct access to `IO.read` methods
  - `Gemspec/RequireMFA` - Require MFA annotation on gemspecs
  - `Lint/AmbiguousOperatorPrecedence` - Wrap arguments in parenthesis to denote operator preference
  - `Lint/IncompatibleIoSelectWithFiberScheduler` -
  - `Lint/RequireRelativeSelfPath` - Don't `require_relative` on self
  - `Lint/UselessRuby2Keywords`
  - `Naming/BlockForwarding` - Prefer `def foo(&block)` over `def foo(&)`
  - `RSpec/ExcessiveDocstringSpacing` - Remove extra spaces in rspec `describe/context/it` blocks
  - `RSpec/SubjectDeclaration` - Ensure `subject` is defined using `subject {}` rather than `let(:subject) {}`
  - `RSpec/Rails/AvoidSetupHook` - Don't use `setup {}` in tests
  - `Performance/ConcurrentMonotonicTime` - Use correct monotonic time

* Disabled cops:
  - `Style/HashSyntax` - Don't permit shorthand hash assignment `foo = 1; { foo: }`
  - `Style/FileRead` - Allow use of `File.open(path, "r")`
  - `Style/FileWrite` - Allow use of `File.open(path, "w")`
  - `Style/OpenStructUse` - Allow use of `OpenStruct`s
  - `Style/SelectByRegexp` - Allow `select { _1 =~ /regex/ }`

2.31.0
-----
* Set sensible defaults for:
  - `Metrics/AbcSize`
  - `Metrics/CyclomaticComplexity`
  - `Metrics/ParameterLists`

2.30.0
-----
* Disabled cop:
  - `RSpec/FactoryBot/SyntaxMethods`

2.29.0
-----
* Disabled cop:
  - `Metrics/MethodLength`

2.28.0
-----
* Enable support for new cops:
  - `Layout/LineEndStringConcatenationIndentation`
  - `Naming/InclusiveLanguage` (disabled by default)
  - `Lint/AmbiguousRange`
  - `Style/RedundantSelfAssignmentBranch`
  - `RSpec/IdenticalEqualityAssertion`

2.27.0
-----
* Disabled a couple of cops:
  - Style/NegatedIf
  - Style/IfUnlessModifier

2.26.0
-----
* Enabled new rubocop cops:
  - Lint/EmptyInPattern
  - Style/StringChars
  - Style/InPatternThen
  - Style/MultilineInPatternThen
  - Style/QuotedSymbols
* Enabled new rubocop-performance cops:
  - Performance/MapCompact

2.25.0
------
* Enabled new cops:
  - Gemspec/DateAssignment
  - Layout/SpaceBeforeBrackets
  - Lint/AmbiguousAssignment
  - Lint/DeprecatedConstants
  - Lint/LambdaWithoutLiteralBlock
  - Lint/NumberedParameterAssignment
  - Lint/OrAssignmentToConstant
  - Lint/RedundantDirGlobSort
  - Lint/SymbolConversion
  - Lint/TripleQuotes
  - Style/EndlessMethod
  - Style/HashConversion
  - Style/HashExcept
  - Style/IfWithBooleanLiteralBranches
  - Performance/RedundantEqualityComparisonBlock
  - Performance/RedundantSplitRegexpArgument

2.24.0
------
* Add missing Lint/EmptyClass `enabled` flag
* Enabled new cops:
 - Style/RedundantArgument
 - Lint/UnexpectedBlockArity

2.23.0
------
* Disable Lint/EmptyClass for specs

2.22.0
------
* Enable support for new cops introduced by rubocop v1.1, v1.2 and v1.3:
 - Lint/DuplicateBranch (disabled by default)
 - Lint/EmptyBlock (disabled by default)
 - Lint/NoReturnInBeginEndBlocks (disabled by default)
 - Style/CommentAnnotation (disabled by default)
 - Style/DocumentDynamicEvalDefinition (disabled by default)
 - Style/NegatedIfElseCondition (disabled by default)
 - Lint/DuplicateRegexpCharacterClassElement
 - Lint/ToEnumArguments
 - Lint/UnmodifiedReduceAccumulator
 - Style/ArgumentsForwarding
 - Style/CollectionCompact
 - Style/NilLambda
 - Style/SwapValues
* Enable support for new cops introduced by rubocop-performance 1.9:
 - Performance/ArraySemiInfiniteRangeSlice (disabled by default)
 - Performance/BlockGivenWithExplicitBlock
 - Performance/CollectionLiteralInLoop
 - Performance/ConstantRegexp
 - Performance/MethodObjectAsBlock

2.21.0
------
* Disabled `Lint/ConstantDefinitionInBlock` by default
* Require rubocop 1.0

2.20.0
------
* Enable support for new cops introduced by rubocop v0.91, v0.92 and v0.93,
  rubocop-rspec 1.44 and rubocop-performance 1.8:
 - `RSpec/StubbedMock` (disabled by default)
 - `Performance/Sum`
 - `Lint/ConstantDefinitionInBlock`
 - `Lint/HashCompareByIdentity`
 - `Lint/IdentityComparison`
 - `Lint/RedundantSafeNavigation`
 - `Lint/UselessTimes`
 - `Style/ClassEqualityComparison`
 - `Layout/BeginEndAlignment`

2.19.0
------
* Enable support for new cops introduced by rubocop v0.90:
 - `Lint/DuplicateRequire`
 - `Lint/EmptyFile`
 - `Lint/TrailingCommaInAttributeDeclaration`
 - `Lint/UselessMethodDefinition`
 - `Style/CombinableLoops`
 - `Style/KeywordParametersOrder`
 - `Style/RedundantSelfAssignment`
 - `Style/SoleNestedConditional` (disabled by default)

2.18.0
------
* Set a larger default for `RSpec/MultipleMemoizedHelpers`
* Enable new cops introduced by rubocop v0.89:
 - `Lint/BinaryOperatorWithIdenticalOperands`
 - `Lint/DuplicateRescueException`
 - `Lint/EmptyConditionalBody`
 - `Lint/FloatComparison`
 - `Lint/MissingSuper`
 - `Lint/OutOfRangeRegexpRef`
 - `Lint/SelfAssignment`
 - `Lint/TopLevelReturnWithArgument`
 - `Lint/UnreachableLoop`
 - `Style/ExplicitBlockArgument`
 - `Style/GlobalStdStream`
 - `Style/SingleArgumentDig`
 - `Style/OptionalBooleanParameter`
 - `Style/StringConcatenation`

2.17.0
------

* Enable new cops introduced by rubocop v0.88:
  - `Lint/DuplicateElsifCondition`
  - `Style/ArrayCoercion`
  - `Style/CaseLikeIf`
  - `Style/HashLikeCase`
  - `Style/RedundantFileExtensionInRequire`

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
