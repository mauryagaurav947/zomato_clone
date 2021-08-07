import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

IconButton iconButton(
    {bool isInAsync = false,
    Widget icon,
    @required VoidCallback onPressed,
    Size circularProgressIndicatorSize = const Size(14, 14),
    double iconSize = 24.0,
    EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),
    Color color = Colors.black}) {
  Widget child = icon;
  circularProgressIndicatorSize = Size(circularProgressIndicatorSize.width.r,
      circularProgressIndicatorSize.height.r);
  if (isInAsync) {
    child = SizedBox.fromSize(
      size: circularProgressIndicatorSize,
      child: CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
  return IconButton(
      icon: child,
      onPressed: isInAsync ? null : onPressed,
      iconSize: iconSize,
      alignment: Alignment.center,
      splashRadius: 23.0.r,
      color: color,
      padding: padding);
}
