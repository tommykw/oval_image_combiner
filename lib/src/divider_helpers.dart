part of oval_image_combiner;

Widget buildVerticalDivider({
  required double width,
  required Color color,
  required double thickness,
}) {
  return VerticalDivider(
    color: color,
    thickness: thickness,
    width: width,
  );
}

Widget buildHorizontalDivider({
  required double height,
  required Color color,
  required double thickness,
}) {
  return Divider(
    color: color,
    thickness: thickness,
    height: height,
  );
}

Widget buildHorizontalRightDivider({
  required double imageHalfSize,
  required Color color,
  required double thickness,
}) {
  return Positioned(
    top: imageHalfSize,
    bottom: imageHalfSize,
    right: 0,
    left: imageHalfSize,
    child: Divider(color: color, thickness: thickness),
  );
}
