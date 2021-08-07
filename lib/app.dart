import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:zomato_clone/constants/palette.dart';
import 'package:zomato_clone/provider/home_provider.dart';
import 'package:zomato_clone/provider/search_provider.dart';

import 'constants/global.dart';
import 'pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider()),
        ChangeNotifierProvider<SearchProvider>(
            create: (context) => SearchProvider())
      ],
      child: ScreenUtilInit(
          builder: () => MaterialApp(
                title: APP_NAME,
                theme: ThemeData(
                    primarySwatch: Palette.primaryColor,
                    fontFamily: QUICKSANDS_MEDIUM),
                debugShowCheckedModeBanner: false,
                home: Home(),
              )),
    );
  }
}
