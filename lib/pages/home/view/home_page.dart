import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zomato_clone/constants/navigation.dart';
import 'package:zomato_clone/mixins/post_frame_callback.dart';
import 'package:zomato_clone/models/models.dart';
import 'package:zomato_clone/pages/search/search.dart';
import 'package:zomato_clone/pages/widgets/appbar.dart';
import 'package:zomato_clone/pages/widgets/iconButton.dart';
import 'package:zomato_clone/provider/home_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with PostFrameCallBack<Home> {
  HomeProvider _homeProvider;

  @override
  void initState() {
    _homeProvider = Provider.of<HomeProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var result;
    return Scaffold(
      appBar: appBar(
        context: context,
        leading: Consumer<HomeProvider>(
          builder: (context, provider, child) => iconButton(
            isInAsync: _homeProvider.isLoading,
            icon: Icon(Icons.refresh),
            onPressed: _homeProvider.isLoading
                ? null
                : () => _homeProvider.getRestaurants(),
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.8),
        elevation: 0,
        title: "Find My Dine",
        centerTitle: true,
        actions: [
          iconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              result = await Navigate.to<SearchData>(context, Search());
              if (result != null) {
                _homeProvider.searchResult = result;
                _homeProvider.getRestaurants();
              }
            },
            color: Colors.black,
          )
        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) {
            if (!provider.cityHasRestaurants) {
              return Center(
                  child: Text(
                      "No restaurants found in ${result?.name ?? ''} :(",
                      style: TextStyle(fontSize: 14.0.sp)));
            }
            return ListView.builder(
                itemBuilder: (context, index) {
                  return RestaurantCard(
                      restaurant: _homeProvider.restaurants[index]);
                },
                itemCount: _homeProvider.restaurants.length);
          },
        ),
      ),
    );
  }

  @override
  void postCallback(Duration timeStamp) {
    _homeProvider.getRestaurants();
  }

  @override
  void dispose() {
    _homeProvider.clear();
    super.dispose();
  }
}
