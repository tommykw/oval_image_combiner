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
            const Text('Combined Images:'),
            const SizedBox(height: 20),
            OvalImageCombiner(
              borderColor: Colors.grey.shade100,
              borderWidth: 2,
              imageUrls: [
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
              ],
              imageSize: 100,
            ),
            const SizedBox(height: 20),
            OvalImageCombiner(
              borderColor: Colors.grey.shade100,
              borderWidth: 2,
              imageUrls: [
                'https://raw.githubusercontent.com/tommykw/oval_image_combiner/0545c8914db2f2d596b71491ea5d66c2c1217c4b/asset/search_black.svg',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
              ],
              imageSize: 100,
            ),
            const SizedBox(height: 20),
            OvalImageCombiner(
              imageUrls: [
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://raw.githubusercontent.com/tommykw/oval_image_combiner/0545c8914db2f2d596b71491ea5d66c2c1217c4b/asset/search_black.svg',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
              ],
              imageSize: 100,
            ),
            const SizedBox(height: 20),
            OvalImageCombiner(
              dividerColor: Colors.grey.shade300,
              dividerThickness: 2,
              imageUrls: [
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://raw.githubusercontent.com/tommykw/oval_image_combiner/0545c8914db2f2d596b71491ea5d66c2c1217c4b/asset/search_black.svg',
                'https://github.com/tommykw/oval_image_combiner/blob/main/example/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png?raw=true',
                'https://raw.githubusercontent.com/tommykw/oval_image_combiner/0545c8914db2f2d596b71491ea5d66c2c1217c4b/asset/search_black.svg',
              ],
              imageSize: 100,
            ),
          ],
        ),
      ),
    );
  }
}
