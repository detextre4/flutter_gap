import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_gap/flutter_gap.dart';

void main() {
  test('Gap widget row test', () {
    final gap = const Gap(16.0).row;
    expect(gap.width, equals(16.0));
    expect(gap.height, equals(0.0));
  });

  test('Gap widget column test', () {
    final gap = const Gap(16.0).column;
    expect(gap.width, equals(0.0));
    expect(gap.height, equals(16.0));
  });

  testWidgets('Gap widget build test', (WidgetTester tester) async {
    await tester.pumpWidget(const Gap(16.0));
    final gapFinder = find.byType(SizedBox);
    expect(gapFinder, findsOneWidget);
    final gapWidget = tester.widget<SizedBox>(gapFinder);
    expect(gapWidget.width, equals(16.0));
    expect(gapWidget.height, equals(16.0));
  });
}
