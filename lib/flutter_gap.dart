library flutter_gap;

import 'package:flutter/material.dart';

/// An ultra simple gap widget to easy and readable code.
class Gap extends SizedBox {
  const Gap(this.value, {super.key}) : super(width: value, height: value);
  final double value;

  /// Gap separated horizontally
  SizedBox get row => SizedBox(width: value);

  /// Gap separated vertically
  SizedBox get column => SizedBox(height: value);
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
