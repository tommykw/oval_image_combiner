import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:oval_image_combiner/oval_image_combiner.dart';

void main() {
  testWidgets('OvalImageCombiner displays single image correctly',
      (WidgetTester tester) async {
    final imageUrl = 'https://example.com/image1.jpg';

    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: OvalImageCombiner(
      imageUrls: [imageUrl],
      imageSize: 100,
    ))));

    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(OvalImageCombiner), findsOneWidget);
  });
}
