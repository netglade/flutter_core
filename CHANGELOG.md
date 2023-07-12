## 3.0.0
- Adhere to DCM 1.7.0:
  - Add avoid-accessing-other-classes-private-members
  - Add avoid-generics-shadowing
  - Add avoid-keywords-in-wildcard-pattern
  - Add avoid-misused-wildcard-pattern
  - Add avoid-nested-futures
  - Add avoid-nested-streams-and-futures
  - Add avoid-shadowed-extension-methods
  - Add avoid-uncaught-future-errors
  - Add avoid-unnecessary-call
  - Add avoid-unnecessary-futures
  - Add map-keys-ordering
  - Add no-equal-nested-conditions
  - Add prefer-correct-future-return-type
  - Add prefer-correct-stream-return-type
  - Add prefer-parentheses-with-if-null
  - Add prefer-trailing-comma
  - Add avoid-missing-image-alt
  - Add avoid-unnecessary-overrides-in-state
  - Add prefer-dedicated-media-query-methods
  - Update allow-false for no-boolean-literal-compare
  - Disable in tests avoid-non-ascii-symbols
  - Disable in tests prefer-moving-to-variable
  - Remove avoid-long-parameter-list

## 2.0.1
- Fix README logo

## 2.0.0
- New Dart lints:
  - collection_methods_unrelated_type
  - deprecated_member_use_from_same_package
  - implicit_reopen
  - invalid_case_patterns
  - unnecessary_library_directive
  - combinators_ordering
  - dangling_library_doc_comments
  - implicit_call_tearoffs
  - matching_super_parameters
  - no_literal_bool_comparisons
  - type_literal_in_constant_pattern
  - unnecessary_breaks
  - use_string_in_part_of_directives
- Update DCM rules and CI to adhere DCM Teams 1.6.0.
- New DCM lints:
  - avoid-any-version
  - banned-dependencies
  - prefer-caret-version-syntax
  - prefer-correct-screenshots
  - prefer-publish-to-none
  - prefer-semver-version
  - avoid-bottom-type-in-patterns
  - avoid-bottom-type-in-records
  - avoid-collapsible-if
  - avoid-declaring-call-method
  - avoid-duplicate-named-imports
  - avoid-duplicate-patterns
  - avoid-equal-expressions
  - avoid-explicit-pattern-field-name
  - avoid-function-type-in-records
  - avoid-future-tostring
  - avoid-inverted-boolean-checks
  - avoid-long-records
  - avoid-missed-calls
  - avoid-mixing-named-and-positional-fields
  - avoid-nested-records
  - avoid-nested-switch-expressions
  - avoid-nested-switches
  - avoid-one-field-records
  - avoid-positional-record-field-access
  - avoid-redundant-else
  - avoid-redundant-positional-field-name
  - avoid-redundant-pragma-inline
  - avoid-self-assignment
  - avoid-self-compare
  - avoid-shadowing
  - avoid-substring
  - avoid-throw-objects-without-tostring
  - avoid-unassigned-late-fields-keyword
  - avoid-unnecessary-conditionals
  - avoid-unnecessary-negations
  - avoid-unnecessary-nullable-return-type
  - avoid-unnecessary-return
  - avoid-unrelated-type-casts
  - avoid-unsafe-collection-methods
  - avoid-unused-generics
  - function-always-returns-null
  - move-records-to-typedefs
  - no-equal-conditions
  - no-equal-switch-case
  - no-equal-switch-expression-cases
  - prefer-bytes-builder
  - prefer-correct-switch-length
  - prefer-declaring-const-constructor
  - prefer-early-return
  - prefer-explicit-parameter-names
  - prefer-return-await
  - prefer-simpler-patterns-null-check
  - prefer-test-matchers
  - prefer-visible-for-testing-on-members
  - prefer-wildcard-pattern
  - unnecessary-trailing-comma
  - add-copy-with
  - avoid-empty-setstate
  - avoid-expanded-as-spacer
  - avoid-incomplete-copy-with
  - avoid-inherited-widget-in-initstate
  - avoid-late-context
  - avoid-state-constructors
  - avoid-stateless-widget-initialized-fields
  - avoid-unnecessary-stateful-widgets
  - dispose-fields
  - prefer-action-button-tooltip
  - prefer-define-hero-tag
  - proper-super-calls
  - use-setstate-synchronously
  - avoid-instantiating-in-value-provider
  - avoid-read-inside-build
  - avoid-watch-outside-build
  - dispose-providers
  - prefer-multi-provider
  - avoid-bloc-public-methods
  - check-is-not-closed-after-async-gap
  - prefer-correct-bloc-provider
  - prefer-multi-bloc-provider
  - extend-equatable
  - list-all-equatable-fields

## 1.2.3
- Fix pub dev icon.

## 1.2.2
- Fix pub dev picture.

## 1.2.1
- Update logo.

## 1.2.0
- Remove `analyzer:exclude:` from `lints.yaml`. (add to README as a recommendation)
- Add a Discord link to README.

# 1.1.2
- Enable `format-comment`; issues with it were fixed.

# 1.1.1
- Configure `prefer-static-class` DCM rule exceptions for hooks and providers.
- Disable `format-comment` because of https://github.com/dart-code-checker/dart-code-metrics/issues/1158.

# 1.1.0
- Add `prefer-static-class` DCM rule.
- Add `use-setstate-synchronously` DCM rule.
- Add `prefer-using-list-view` DCM rule.
- Disable `alphabetize` from `member-ordering` DCM rule.
- **Breaking**: rename `code_metrics.yaml` to `dcm.yaml`.

# 1.0.0

- Add `analysis_options` and `code_metrics` used at [netglade](https://netglade.com/en)
