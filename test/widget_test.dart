import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:explore_the_city/App/app.dart';

void main() {
  testWidgets("Home Test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Container), findsOneWidget);
  });
}
