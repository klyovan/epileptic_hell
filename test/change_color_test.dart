import 'package:epileptic_hell/change_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:epileptic_hell/main.dart';

void main() {
  testWidgets("The text 'Hey there' is on the screen and background color changed by tap", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Hey there'), findsOneWidget);

    Color previousColor = defaultBackgroundColor;
    await tester.tap(find.byType(Text));
    await tester.pump();
    expect(defaultBackgroundColor, isNot(previousColor));
  });

  test('generateRandomColor gives random color', () {
    Color randomColor = generateRandomColor();
    final randomColorType = randomColor.runtimeType;
    expect(randomColorType, Color);

    Color nextRandomColor = generateRandomColor();
    expect(nextRandomColor, isNot(randomColor));
  });
}
