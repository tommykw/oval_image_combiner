part of oval_image_combiner;

Widget buildImage({
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
        : Image.network(
            imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
  );
}

bool _isSvg(String imageUrl) {
  return imageUrl.endsWith('.svg');
}