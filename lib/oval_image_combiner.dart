library oval_image_combiner;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'divider_helpers.dart';
part 'image_helpers.dart';
part 'bordered_clip_oval.dart';

/// 'OvalImageCombiner' is a widget that desgined to combine multiple images and
/// display them as a single oval widget.
class OvalImageCombiner extends StatelessWidget {
  /// A list of image URLs.
  /// The list can contain up to four URLs.
  final List<String> imageUrls;

  /// The overall size of the widget.
  final double imageSize;

  /// The color of the border.
  final Color? borderColor;

  /// The width of the border.
  final double? borderWidth;

  /// Constructs a new 'OvalImageCombiner' instance.
  const OvalImageCombiner({
    Key? key,
    required this.imageUrls,
    required this.imageSize,
    this.borderColor,
    this.borderWidth,
  }) : super(key: key);

  double get _imageHalfSize => imageSize / 2;
  Color get _dividerColor => Colors.white;
  double get _dividerThickness => 2;

  @override
  Widget build(BuildContext context) {
    switch (imageUrls.length) {
      case 0:
        return const SizedBox.shrink();
      case 1:
        return _buildOneImage(imageUrls[0]);
      case 2:
        return _buildTwoImages(
          imageUrls[0],
          imageUrls[1],
        );
      case 3:
        return _buildThreeImages(
          imageUrls[0],
          imageUrls[1],
          imageUrls[2],
        );
      default:
        return _buildFourImages(
          imageUrls[0],
          imageUrls[1],
          imageUrls[2],
          imageUrls[3],
        );
    }
  }

  Widget _buildOneImage(String imageUrl) {
    return _BorderedClipOval(
      borderColor: borderColor,
      borderWidth: borderWidth,
      child: _buildImage(
        imageUrl: imageUrl,
        width: imageSize,
        height: imageSize,
      ),
    );
  }

  Widget _buildTwoImages(String imageUrl1, String imageUrl2) {
    return _BorderedClipOval(
      borderColor: borderColor,
      borderWidth: borderWidth,
      child: SizedBox(
        width: imageSize,
        height: imageSize,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: _imageHalfSize,
              height: imageSize,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl1,
                  width: _imageHalfSize,
                  height: imageSize,
                  scale: 1.2,
                ),
              ),
            ),
            Positioned(
              right: 0,
              width: _imageHalfSize,
              height: imageSize,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl2,
                  width: _imageHalfSize,
                  height: imageSize,
                  scale: 1.2,
                ),
              ),
            ),
            _buildVerticalDivider(
              width: imageSize,
              color: _dividerColor,
              thickness: _dividerThickness,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThreeImages(
    String imageUrl1,
    String imageUrl2,
    String imageUrl3,
  ) {
    return _BorderedClipOval(
      borderColor: borderColor,
      borderWidth: borderWidth,
      child: SizedBox(
        width: imageSize,
        height: imageSize,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: _imageHalfSize,
              height: imageSize,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl1,
                  width: imageSize,
                  height: imageSize,
                  scale: 1.2,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              width: _imageHalfSize,
              height: _imageHalfSize,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl2,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              width: _imageHalfSize,
              height: _imageHalfSize,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl3,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            _buildVerticalDivider(
              width: imageSize,
              color: _dividerColor,
              thickness: _dividerThickness,
            ),
            _buildHorizontalRightDivider(
              imageHalfSize: _imageHalfSize,
              color: _dividerColor,
              thickness: _dividerThickness,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFourImages(
    String imageUrl1,
    String imageUrl2,
    String imageUrl3,
    String imageUrl4,
  ) {
    return _BorderedClipOval(
      borderColor: borderColor,
      borderWidth: borderWidth,
      child: SizedBox(
        width: imageSize,
        height: imageSize,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl1,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl2,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl3,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: ClipRect(
                child: _buildImage(
                  imageUrl: imageUrl4,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            _buildVerticalDivider(
              width: imageSize,
              color: _dividerColor,
              thickness: _dividerThickness,
            ),
            _buildHorizontalDivider(
              height: imageSize,
              color: _dividerColor,
              thickness: _dividerThickness,
            ),
          ],
        ),
      ),
    );
  }
}
