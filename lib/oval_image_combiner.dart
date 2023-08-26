library oval_image_combiner;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      child: _buildImage(
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
                child: _buildImage(
                  imageUrl: imageUrl1,
                  width: _imageHalfSize,
                  height: imageSize,
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
                ),
              ),
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
                child: _buildImage(
                  imageUrl: imageUrl1,
                  width: imageSize,
                  height: imageSize,
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
                ),
              ),
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
                child: _buildImage(
                  imageUrl: imageUrl1,
                  width: _imageHalfSize,
                  height: _imageHalfSize,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage({
    required String imageUrl,
    required double width,
    required double height,
  }) {
    final isSvg = imageUrl.endsWith('.svg');

    if (isSvg) {
      return SvgPicture.network(
        imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
      );
    }

    return Image.network(
      imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
