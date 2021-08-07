import 'package:flutter/material.dart';

mixin PostFrameCallBack<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback(postCallback);
  }

  void postCallback(Duration timeStamp);
}
