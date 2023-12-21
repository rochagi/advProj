import 'package:advogadox/app/shared/widgets/texts/h1.dart';
import 'package:advogadox/app/shared/widgets/texts/h2.dart';
import 'package:advogadox/app/shared/widgets/texts/h3.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('H1 widget have a content', (WidgetTester tester) async {
    await tester.pumpWidget(const H1(content: 'T'));
    expect(find.text('T'), findsOneWidget);
  });

  testWidgets("H2 widget have a content", (WidgetTester tester) async {
    await tester.pumpWidget(const H2(content: 'T'));
    expect(find.text('T'), findsOneWidget);
  });

  testWidgets("H3 widget have a content", (WidgetTester tester) async {
    await tester.pumpWidget(const H3(content: 'T'));
    expect(find.text('T'), findsOneWidget);
  });
}
