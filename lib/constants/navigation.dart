import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigate {
  // Push screen
  static Future<T> to<T>(BuildContext context, Widget widget) {
    // Completer completer = Completer<T>();

    // Navigator.push<T>(context, MaterialPageRoute(builder: (_) => widget))
    //     .then((value) => completer.complete(value));
    return Navigator.push<T>(
        context, CupertinoPageRoute(builder: (_) => widget));
    // return completer.future;
  }

  // Replace screen
  static Future replace<T, TO>(BuildContext context, Widget widget) {
    return Navigator.pushReplacement<T, TO>(
        context, CupertinoPageRoute(builder: (_) => widget));
  }

  // Remove all and push
  static Future toAndRemoveAll<T, TO>(BuildContext context, Widget widget) {
    return Navigator.pushAndRemoveUntil(
        context, CupertinoPageRoute(builder: (_) => widget), (route) => false);
  }

  static void close<T>(BuildContext context, [T data]) {
    return Navigator.pop<T>(context, data);
  }
}
