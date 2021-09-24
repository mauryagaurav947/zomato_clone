import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'constants.dart';

// Application name
const String kAPP_NAME = 'ZOMATO CLONE';

// Text fields mandatory char
const String kMandatoryChar = "*";

// Regular font
const String kQUICKSANDS_FONT_FAMILY = 'Quicksand';

Future<bool> showToast(String msg, {Toast toastLength = Toast.LENGTH_LONG}) {
  if (msg?.isNotEmpty == true) {
    return Fluttertoast.showToast(msg: msg, toastLength: toastLength);
  } else
    return Future.value(false);
}

ImageProvider imageProvider(String url, {Size size}) {
  if (url != null && url.isNotEmpty) {
    size ??= Size(1920, 1080);
    return new CachedNetworkImageProvider(url,
        maxHeight: size?.height?.toInt(),
        maxWidth: size?.width?.toInt(),
        headers: {
          // 'Keep-Alive': 'timeout=2, max=100',
          'Connection': 'keep-alive'
        });
  } else {
    return new AssetImage('assets/images/pal-logo.png');
  }
}

String removeHtmlTags({String data}) {
  data ??= 'N/A';
  RegExp regExp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
  return data
          ?.replaceAll('<li>', '\n\t\u2022 ')
          ?.replaceAll(regExp, "")
          ?.replaceAll("&nbsp;", " ")
          ?.replaceAll("&amp;", "&")
          ?.replaceAll("&quot;", "\"")
          ?.replaceAll("&#39;", "\'")
          ?.replaceAll("&rsquo;", "'") ??
      "N/A";
}
