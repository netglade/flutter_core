## 15.0.0
- Adhere to DCM 1.26.0:
  - Add avoid-commented-out-code
  - Add avoid-future-ignore
  - Add prefer-switch-expression
  - Add avoid-unnecessary-continue
  - Add pattern-fields-ordering
  - Add use-existing-destructuring
  - Add avoid-if-with-many-branches
  - Add prefer-commenting-future-delayed
  - Add avoid-complex-arithmetic-expressions
  - Add prefer-spacing
  - Add use-closest-build-context
  - Add prefer-transform-over-container
  - Add prefer-align-over-container

## 14.0.1
- Don't check onSafe with check-is-not-closed-after-async-gap

## 14.0.0
- Adhere to DCM 1.25.0:
  - Add avoid-single-field-destructuring
  - Add avoid-unnecessary-patterns
  - Add record-fields-ordering
  - Add prefer-container
  - Add avoid-bloc-public-fields
  - Add avoid-existing-instances-in-bloc-provider
  - Add avoid-instantiating-in-bloc-value-provider
  - Add avoid-returning-value-from-cubit-methods
  - Add emit-new-bloc-state-instances
  - Add prefer-bloc-event-suffix
  - Add prefer-bloc-state-suffix
  - Update bloc rules with onSafe method

## 13.0.1
- Fix prefer-boolean-prefixes config

## 13.0.0
- Adhere to DCM 1.22.0, 1.23.0, and 1.24.2:
  - Add avoid-adjacent-strings
  - Add avoid-assignments-as-conditions
  - Add avoid-complex-loop-conditions
  - Add avoid-incorrect-uri
  - Add avoid-negations-in-equality-checks
  - Add avoid-unnecessary-extends
  - Add avoid-unnecessary-overrides
  - Add avoid-unused-assignment
  - Add function-always-returns-same-value
  - Add prefer-add-all
  - Add prefer-for-in
  - Add prefer-simpler-boolean-expressions
  - Add avoid-late-final-reassignment
  - Add use-existing-variable
  - Add avoid-flexible-outside-flex
  - Add prefer-center-over-align
  - Add prefer-padding-over-container
  - Add prefer-sized-box-square
  - Add prefer-provider-extensions
  - Add avoid-duplicate-bloc-event-handlers
  - Add avoid-passing-build-context-to-blocs
  - Add handle-bloc-event-subclasses
  - Add prefer-bloc-extensions
  - Add prefer-sealed-bloc-events
  - Add prefer-sealed-bloc-state
  - Add avoid-assigning-to-static-field
  - Add avoid-getter-prefix
  - Add avoid-implicitly-nullable-extension-types
  - Add avoid-non-final-exception-class-fields
  - Add avoid-unnecessary-constructor
  - Add avoid-unnecessary-enum-arguments
  - Add avoid-unnecessary-enum-prefix
  - Add prefer-contains

## 12.0.0
- Minimal Dart 3.5.0
- Adhere to DCM 1.18.0, 1.19.0, and 1.21.0:
  - Add avoid-only-rethrow
  - Add avoid-returning-cascades
  - Add avoid-unsafe-reduce
  - Add handle-throwing-invocations
  - Add prefer-abstract-final-static-class
  - Add avoid-incorrect-image-opacity
  - Add avoid-calling-notifier-members-inside-build
  - Add avoid-notifier-constructors
  - Add dispose-provided-instances
  - Add use-ref-read-synchronously
- Adhere to Dart 3.5 and previous lints:
  - Add invalid_runtime_check_with_js_interop_types
  - Add missing_code_block_language_in_doc_comment
  - Add unintended_html_in_doc_comment
  - Add unnecessary_library_name

## 11.0.0
- Adhere to DCM 1.17.0:
  - Add avoid-collection-equality-checks
  - Add avoid-multi-assignment
  - Add prefer-switch-with-sealed-classes
  - Add prefer-single-declaration-per-file
  - Add prefer-use-callback
  - Add avoid-misused-hooks
  - Add avoid-ref-read-inside-build
  - Add avoid-ref-watch-outside-build
  - Add avoid-unnecessary-consumer-widgets

## 10.0.0
- Adhere to DCM 1.16.0:
  - Add avoid-conditions-with-boolean-literals
  - Add prefer-for-loop-in-children
  - Add avoid-unnecessary-hook-widgets

## 9.0.0
- Adhere to DCM 1.15.0:
  - Add avoid-casting-to-extension-type
  - Add avoid-empty-spread
  - Add avoid-missing-completer-stack-trace
  - Add avoid-nested-extension-types
  - Add avoid-renaming-representation-getters
  - Add avoid-returning-void
  - Add avoid-slow-collection-methods
  - Add avoid-unknown-pragma
  - Add avoid-unnecessary-collections
  - Add prefer-overriding-parent-equality
  - Add prefer-private-extension-type-field
  - Add avoid-missing-controller
  - Add avoid-unnecessary-gesture-detector
- Update prefer-correct-switch-length max-length to 20

## 8.0.0
- Adhere to DCM 1.14.0:
  - Add avoid-empty-test-groups
  - Add avoid-not-encodable-in-to-json
  - Add avoid-contradictory-expressions
  - Add avoid-excessive-expressions
- Put build method in widgets above private methods.
 
## 7.0.0
- Adhere to DCM 1.13.0:
  - Add avoid-duplicate-collection-elements
  - Add avoid-duplicate-initializers
  - Add avoid-duplicate-map-keys
  - Add avoid-nullable-tostring
  - Add avoid-unused-after-null-check
  - Add move-variable-outside-iteration
  - Add avoid-undisposed-instances
  - Add avoid-unassigned-stream-subscriptions
- Update prefer-switch-with-enums with `ignore-contains: true`
- Remove DCM rules `match-class-name-pattern`, `tag-name`, `add-copy-with`, and `extend-equatable`, since we do not configure it (and added comment so we know it's ok)

## 6.0.0
- Add DCM rule prefer-correct-error-name with `e` for error
- Add DCM rule prefer-widget-private-members
- Remove DCM rule banned-dependencies since we do not configure it (and add comment so we know it's ok)
- Adhere to DCM 1.11.0 and 1.12.0:
  - Add avoid-duplicate-cascades
  - Add avoid-duplicate-switch-case-conditions
  - Add avoid-unnecessary-local-late
  - Add avoid-unnecessary-super
  - Add prefer-both-inlining-annotations
  - Add prefer-correct-callback-field-name
  - Add prefer-correct-error-name
  - Add prefer-correct-setter-parameter-name
  - Add prefer-explicit-function-type
  - Add prefer-specific-cases-first
  - Add prefer-typedefs-for-callbacks
  - Add prefer-unique-test-names
  - Add prefer-widget-private-members
  - Add avoid-inferrable-type-arguments
  - Add prefer-switch-with-enums
  - Add avoid-misused-test-matchers
  - Add prefer-any-or-every
  - Add avoid-duplicate-test-assertions
  - Add avoid-conditional-hooks
  - Add avoid-hooks-outside-build
  - Add prefer-use-prefix
- Update function-always-returns-null - disable in useEffect

## 5.0.0
- Adhere to DCM 1.10.0:
  - Add avoid-accessing-collections-by-constant-index
  - Add avoid-extensions-on-records
  - Add avoid-local-functions
  - Enable skip-checked-fields on avoid-non-null-assertion
  - Add avoid-nullable-parameters-with-default-values
  - Add avoid-unnecessary-late
  - Add avoid-wildcard-cases-with-enums
  - Add avoid-single-child-column-or-row
  - Add prefer-sliver-prefix
  - Add avoid-functions-in-register-singleton

## 4.2.0
- Adhere to DCM 1.9.0:
  - Add avoid-async-callback-in-fake-async
  - Add move-variable-closer-to-its-usage
  - Add avoid-passing-self-as-argument
  - Add avoid-referencing-discarded-variables
  - Add avoid-unconditional-break
  - Add avoid-weak-cryptographic-algorithms
  - Add avoid-identical-exception-handling-blocks
  - Add avoid-recursive-calls
  - Add avoid-missing-interpolation
  - Add avoid-unnecessary-if

## 4.1.0
- Temporarily remove (its WIP and not recognized):
  - no_wildcard_variable_uses
  - no_self_assignments
- Remove no-equal-arguments

## 4.0.0
- Adhere to DCM 1.8.0:
  - Add prefer-custom-finder-over-find
  - Add prefer-symbol-over-key
  - Add avoid-map-keys-contains
  - Add avoid-async-call-in-sync-function
  - Add avoid-duplicate-mixins
  - Add avoid-nullable-interpolation
  - Add avoid-unused-instances
  - Add enum-constants-ordering
  - Add prefer-named-boolean-parameters
  - Add prefer-correct-for-loop-increment
  - Add prefer-public-exception-classes
  - Add avoid-unnecessary-reassignment
  - Add avoid-recursive-widget-calls
  - Add prefer-text-rich
- Adhere to Dart lints 3.1.0:
  - Add no_self_assignments
  - Add no_wildcard_variable_uses

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
