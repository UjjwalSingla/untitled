import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/App/app.dart';

void main() {
  testWidgets("Home Test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Container), findsOneWidget);
  });
}
