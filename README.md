# Oval Image Combiner

A Flutter widget that allows you to combine up to four images into an oval shape.

<img src="https://github.com/tommykw/oval_image_combiner/blob/main/asset/sample_capture.png?raw=true" width="320" />

## Features

- Combine 1 to 4 images into an oval shape.
- Supports both raster and SVG images.
- Customizable image size.
- Customizable borders and dividers.

## Getting started

### Installation

Add the following to your `pubspec.yaml` file:

```dart
dependencies:
  oval_image_combiner: ^[LATEST_VERSION]
```

### Usage

Import the package:

```dart
import 'package:oval_image_combiner/oval_image_combiner.dart';
```

Use the `OvalImageCombiner` widget:

```dart
OvalImageCombiner(
  borderColor: Colors.grey,
  borderWidth: 2,
  dividerColor: Colors.grey,
  dividerThickness: 2,
  imageUrls: [
    'https://example.com/image1.png',
    'https://example.com/image2.png',
    // Add up to 4 image URLs
  ],
  imageSize: 60,
)
```

## Example 
[Here](https://github.com/tommykw/oval_image_combiner/tree/main/example) you can find an example probject showcasing how to use the `OvalImageCombiner` widget.

## License
This probject is licensed under the MIT License. See the [LICENSE](https://github.com/tommykw/oval_image_combiner/blob/main/LICENSE) file for details.



