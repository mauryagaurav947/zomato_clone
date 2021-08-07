import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zomato_clone/constants/palette.dart';

Widget button(
    {Widget child,
    String label,
    bool isInAsync = false,
    @required VoidCallback onPressed,
    Color backgroundColor,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Color circularProgressIndicatorColor,
    Color inAsyncColor,
    double borderRadius,
    TextStyle labelStyle,
    double height,
    double width,
    ShapeBorder shape,
    Size circularProgressIndicatorSize}) {
  circularProgressIndicatorSize ??= Size(20.0.r, 20.0.r);
  height ??= 45.0;
  return Container(
      width: width ?? 1.sw,
      height: height.h,
      margin: margin ?? EdgeInsets.all(10),
      child: TextButton(
        child: isInAsync
            ? SizedBox.fromSize(
                size: circularProgressIndicatorSize,
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        circularProgressIndicatorColor ?? Palette.primaryColor),
                    strokeWidth: 2),
              )
            : child ??
                Text("$label",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0.sp,
                    ).merge(labelStyle)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                isInAsync ? inAsyncColor : (backgroundColor ?? Palette.primaryColor)),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(padding),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                shape ?? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 6))),
            overlayColor:
                MaterialStateProperty.all<Color>(Palette.buttonOverlayColor),
            alignment: Alignment.center),
        onPressed: !isInAsync ? onPressed : null,
      ));
}
