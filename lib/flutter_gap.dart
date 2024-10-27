library flutter_gap;

import 'package:flutter/material.dart';

/// An ultra simple gap widget to easy and readable code.
class Gap extends SizedBox {
  const Gap(this.value, {super.key}) : super(width: value, height: value);
  final double value;

  /// Gap separated horizontally
  ///
  /// example:
  /// {@tool snippet}
  /// ```dart
  /// const Gap(8.0).row
  /// ```
  /// {@end-tool}
  SizedBox get row => SizedBox(width: value);

  /// Gap separated vertically
  ///
  /// example:
  /// {@tool snippet}
  /// ```dart
  /// const Gap(8.0).column
  /// ```
  /// {@end-tool}
  SizedBox get column => SizedBox(height: value);

  /// Returns Gap based on isMobile bool provided.
  ///
  /// If true will be return Gap separated horizontally,
  ///
  /// other case will be return Gap separated vertically
  ///
  /// example:
  /// {@tool snippet}
  /// ```dart
  /// const Gap(8.0).columnOrRow(screenWidth <= 880)
  /// ```
  /// {@end-tool}
  SizedBox columnOrRow(bool isMobile) =>
      isMobile ? SizedBox(height: value) : SizedBox(width: value);
}

/// An mixed widget between [Padding] and [Row] or [Column] depending [Axis] value provided
class Section extends Padding {
  Section({
    super.key,
    required super.padding,
    required final List<Widget> children,
    final Axis direction = Axis.vertical,
    final CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    final MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    final MainAxisSize mainAxisSize = MainAxisSize.max,
  }) : super(
            child: direction == Axis.vertical
                ? Column(
                    crossAxisAlignment: crossAxisAlignment,
                    mainAxisAlignment: mainAxisAlignment,
                    mainAxisSize: mainAxisSize,
                    children: children,
                  )
                : Row(
                    crossAxisAlignment: crossAxisAlignment,
                    mainAxisAlignment: mainAxisAlignment,
                    mainAxisSize: mainAxisSize,
                    children: children,
                  ));
}

/// An mixed widget between [Align] and [ConstrainedBox]
class ConstrainedBoxAligned extends Align {
  ConstrainedBoxAligned({
    super.key,
    super.alignment,
    super.widthFactor,
    super.heightFactor,
    required BoxConstraints constraints,
    required Widget child,
  }) : super(child: ConstrainedBox(constraints: constraints, child: child));
}
