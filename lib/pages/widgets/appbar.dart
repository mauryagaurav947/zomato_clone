import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zomato_clone/constants/palette.dart';
import 'iconButton.dart';

AppBar appBar<T>(
    {@required BuildContext context,
    String title = '',
    List<Widget> actions,
    ShapeBorder shape,
    Widget leading,
    bool centerTitle,
    Color backgroundColor,
    double elevation,
    Color leadingColor,
    Widget titleWidget,
    VoidCallback onBackPressed,
    TextStyle titleStyle,
    T popData,
    PreferredSizeWidget bottom}) {
  if (leading == null) {
    leading = iconButton(
        icon: ImageIcon(AssetImage("assets/icons/left-arrow.png"), size: 20),
        onPressed: onBackPressed ??
            () async {
              FocusScope.of(context).unfocus();
              await Navigator.maybePop<T>(context, popData);
            },
        iconSize: 20.0);
  }
  return AppBar(
      backgroundColor: backgroundColor ?? Palette.primaryColor,
      title: title != null && title.isNotEmpty
          ? Text(
              '$title',
              style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0)
                  .merge(titleStyle),
            )
          : titleWidget,
      actions: actions,
      shape: shape ?? null,
      leading: leading,
      elevation: elevation ?? 0,
      centerTitle: centerTitle ?? false,
      titleSpacing: 0,
      iconTheme: IconThemeData(color: leadingColor ?? Colors.white, size: 20),
      bottom: bottom);
}
