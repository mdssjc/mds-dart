import 'package:flutter_test/flutter_test.dart';
import 'package:friendly_chat/main.dart';

void main() {
  testWidgets('smoke test', (tester) async {
    await tester.pumpWidget(const FriendlyChatApp());

    expect(find.text('FriendlyChat'), findsOneWidget);
    expect(find.text('UnfriendlyChat'), findsNothing);
  });
}
