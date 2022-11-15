# NetGlade Analysis

[![NetGlade][logo]][netglade_link]

Developed with 💙 by [NetGlade][netglade_link]

[![ci][ci_badge]][ci_badge_link]
[![pub package][pub_badge]][pub_badge_link]
[![License: MIT][license_badge]][license_badge_link]

---

This package provides lint rules for Dart and Flutter which are used at [NetGlade][netglade_link].

## Usage

To use the lints, add as a dev dependency in your `pubspec.yaml`:

```yaml
dev_dependencies:
  netglade_analysis: ^1.0.0
```

Then, add an include in `analysis_options.yaml`:

```yaml
include: package:netglade_analysis/lints.yaml

analyzer:
  plugins:
    - dart_code_metrics

dart_code_metrics:
  extends:
    - package:netglade_analysis/code_metrics.yaml
```

[netglade_link]: https://netglade.cz/en
[logo]: https://avatars.githubusercontent.com/u/118181453?s=200
[ci_badge]: https://github.com/NetGlade/netglade_analysis/workflows/ci/badge.svg
[ci_badge_link]: https://github.com/NetGlade/netglade_analysis/actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_badge_link]: https://opensource.org/licenses/MIT
[pub_badge]: https://img.shields.io/pub/v/netglade_analysis.svg
[pub_badge_link]: https://pub.dartlang.org/packages/netglade_analysis
