library oval_image_combiner;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'src/divider_helpers.dart';
part 'src/image_helpers.dart';

const Color _dividerColor = Colors.white;
const double _dividerThickness = 2;

/// This class provides a widget that displays images in different combinations using a list of specified image URLs.
class OvalImageCombiner extends StatelessWidget {
  final List<String> imageUrls;
  final double imageSize;

  const OvalImageCombiner({
    Key? key,
    required this.imageUrls,
    required this.imageSize,
  }) : super(key: key);

  double get _imageHalfSize => imageSize / 2;

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
    return ClipOval(
      child: buildImage(
        imageUrl: imageUrl,
        width: imageSize,
        height: imageSize,
      ),
    );
  }

  Widget _buildTwoImages(String imageUrl1, String imageUrl2) {
    return ClipOval(
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
                child: buildImage(
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
                child: buildImage(
                  imageUrl: imageUrl2,
                  width: _imageHalfSize,
                  height: imageSize,
                  scale: 1.2,
                ),
              ),
            ),
            buildVerticalDivider(
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
    return ClipOval(
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
                child: buildImage(
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
                child: buildImage(
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
                child: buildImage(
                  imageUrl: imageUrl3,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            buildVerticalDivider(
              width: imageSize,
              color: _dividerColor,
              thickness: _dividerThickness,
            ),
            buildHorizontalRightDivider(
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
    return ClipOval(
      child: SizedBox(
        width: imageSize,
        height: imageSize,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: ClipRect(
                child: buildImage(
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
                child: buildImage(
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
                child: buildImage(
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
                child: buildImage(
                  imageUrl: imageUrl4,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
                  scale: 1.5,
                ),
              ),
            ),
            buildVerticalDivider(
              width: imageSize,
              color: _dividerColor,
              thickness: _dividerThickness,
            ),
            buildHorizontalDivider(
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
