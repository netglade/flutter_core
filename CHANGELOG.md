# 1.1.2
- Enabled `format-comment`; issues with it were fixed.

# 1.1.1
- Configure `prefer-static-class` DCM rule exceptions for hooks and providers.
- Disabled `format-comment` because of https://github.com/dart-code-checker/dart-code-metrics/issues/1158.

# 1.1.0
- Add `prefer-static-class` DCM rule.
- Add `use-setstate-synchronously` DCM rule.
- Add `prefer-using-list-view` DCM rule.
- Disabled `alphabetize` from `member-ordering` DCM rule.
- **Breaking**: renamed `code_metrics.yaml` to `dcm.yaml`.

# 1.0.0

- Add `analysis_options` and `code_metrics` used at [netglade](https://netglade.cz/en)
