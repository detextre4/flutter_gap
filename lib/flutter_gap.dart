library flutter_gap;

import 'package:flutter/material.dart';

/// An ultra simple gap widget to easy and readable code.
class Gap extends StatelessWidget {
  const Gap(this.value, {super.key});
  final double value;

  /// Gap separated horizontally
  SizedBox get row => SizedBox(width: value);

  /// Gap separated vertically
  SizedBox get column => SizedBox(height: value);

  @override
  Widget build(BuildContext context) => SizedBox(width: value, height: value);
}
