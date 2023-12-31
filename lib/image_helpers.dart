part of oval_image_combiner;

/// Fetches and displays an image from the specified URL with the appropriate size and scale.
Widget _buildImage({
  required String imageUrl,
  required double width,
  required double height,
  double? scale = 1.0,
}) {
  return Transform.scale(
    scale: scale,
    child: (_isSvg(imageUrl))
        ? SvgPicture.network(
            imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
          )
        : CachedNetworkImage(
            imageUrl: imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
  );
}

bool _isSvg(String imageUrl) {
  return imageUrl.endsWith('.svg');
}
