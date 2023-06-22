<a href="https://github.com/netglade">
  <picture >
    <source media="(prefers-color-scheme: dark)" height='120px' srcset="https://raw.githubusercontent.com/netglade/netglade_analysis/main/doc/badge_light.png">
    <source media="(prefers-color-scheme: light)" height='120px' srcset="https://raw.githubusercontent.com/netglade/netglade_analysis/main/doc/badge_dark.png">
    <img alt="netglade" height='120px' src="https://raw.githubusercontent.com/netglade/netglade_analysis/main/doc/badge_dark.png">
  </picture>
</a>

Developed with 💚 by [netglade][netglade_link]

[![ci][ci_badge]][ci_badge_link]
[![pub package][pub_badge]][pub_badge_link]
[![license: MIT][license_badge]][license_badge_link]
[![style: netglade analysis][style_badge]][style_badge_link]
[![Discord][discord_badge]][discord_badge_link]

---

This package provides lint rules for Dart and Flutter which are used at [netglade][netglade_link].

You can also check all the available Dart lint rules on [linter rules site][linter_rules] or [supported lint rules site][supported_lint_rules].
And you can see all the available on [DCM rules site][dcm_rules].

## Usage

To use the lints, add as a dev dependency in your `pubspec.yaml`:

```yaml
dev_dependencies:
  netglade_analysis: ^2.0.0
```

Then, add an include in `analysis_options.yaml`:

```yaml
include: package:netglade_analysis/lints.yaml
```

To also use [Dart Code Metrics](https://dcm.dev), add configuration in `analysis_options.yaml`.
Then you can use its CLI tool.

```yaml
dart_code_metrics:
  extends:
    - package:netglade_analysis/dcm.yaml
```

## Recommendations

Consider adding an analyzer exclude for generated, coverage, ... files. 

```yaml
analyzer:
  exclude:
    - '**/*.g.dart'
    - '**/*.freezed.dart'
    - test/.test_coverage.dart
    - lib/generated_plugin_registrant.dart
```

## Badge

To indicate your project is using `netglade_analysis` →
[![style: netglade analysis][style_badge]][style_badge_link]

```md
[![style: netglade analysis](https://img.shields.io/badge/style-netglade_analysis-26D07C.svg)](https://pub.dev/packages/netglade_analysis)
```

[netglade_link]: https://netglade.com/en

[ci_badge]: https://github.com/netglade/netglade_analysis/workflows/ci/badge.svg
[ci_badge_link]: https://github.com/netglade/netglade_analysis/actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_badge_link]: https://opensource.org/licenses/MIT
[pub_badge]: https://img.shields.io/pub/v/netglade_analysis.svg
[pub_badge_link]: https://pub.dartlang.org/packages/netglade_analysis
[style_badge]: https://img.shields.io/badge/style-netglade_analysis-26D07C.svg
[style_badge_link]: https://pub.dev/packages/netglade_analysis
[discord_badge]: https://img.shields.io/discord/1091460081054400532.svg?logo=discord&color=blue
[discord_badge_link]: https://discord.gg/sJfBBuDZy4

[linter_rules]: https://dart.dev/tools/linter-rules
[supported_lint_rules]: https://dart-lang.github.io/linter/lints
[dcm_rules]: https://dcm.dev/docs/rules/
