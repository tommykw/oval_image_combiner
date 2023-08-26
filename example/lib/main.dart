import 'package:flutter/material.dart';
import 'package:oval_image_combiner/oval_image_combiner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oval Image Combiner Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oval Image Combiner Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Combinded Images:'),
            const SizedBox(height: 20),
            OvalImageCombiner(
              imageUrls: [
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
              ],
              imageSize: 100,
            ),
            const SizedBox(height: 20),
            OvalImageCombiner(
              imageUrls: [
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
              ],
              imageSize: 100,
            ),
            const SizedBox(height: 20),
            OvalImageCombiner(
              imageUrls: [
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
              ],
              imageSize: 100,
            ),
            const SizedBox(height: 20),
            OvalImageCombiner(
              imageUrls: [
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
              ],
              imageSize: 100,
            ),
          ],
        ),
      ),
    );
  }
}
