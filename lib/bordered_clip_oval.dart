part of oval_image_combiner;

/// A widget that clips its child using an oval shape, optionally displaying a border.
class _BorderedClipOval extends StatelessWidget {
  final Color? borderColor;
  final double? borderWidth;
  final Widget child;

  const _BorderedClipOval({
    Key? key,
    this.borderColor,
    this.borderWidth,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (borderColor == null || borderWidth == null) {
      return ClipOval(
        child: child,
      );
    }

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor!,
          width: borderWidth!,
        ),
      ),
      child: ClipOval(
        child: child,
      ),
    );
  }
}
