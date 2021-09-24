import 'package:flutter/material.dart';
import 'package:zomato_clone/constants/global.dart';
import 'package:zomato_clone/models/models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key key, this.restaurant}) : super(key: key);
  final RestaurantsDetail restaurant;
  final String _defaultImage =
      'https://blog.indifi.com/wp-content/uploads/2019/12/How-Zomato-Helps-Restaurants-Cut-Down-Operational-Costs-500x283.jpg';

  @override
  Widget build(BuildContext context) {
    var image = '';
    var featuredImage = restaurant.restaurant.featuredImage.replaceAll(" ", "");
    if (featuredImage.isNotEmpty) {
      image = featuredImage;
    } else {
      image = _defaultImage;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new FadeInImage.assetNetwork(
            placeholder: 'assets/images/zomato-clone-banner.png',
            image: image,
            imageCacheHeight: 1000,
            imageCacheWidth: 1000,
            height: 0.3.sh,
            width: 1.0.sw,
            fit: BoxFit.cover,
            imageErrorBuilder: (context, obj, trace) {
              return new Image(
                  image: imageProvider(image, size: Size(1000, 1000)),
                  width: 1.0.sw,
                  fit: BoxFit.cover,
                  height: 0.3.sh,
                  filterQuality: FilterQuality.high);
            }),
        Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Text(
            restaurant.restaurant.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Text(restaurant.restaurant.location.address,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0.sp)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 10.0.w),
          child: Text(
            "Average cost for 2 persons: ${restaurant.restaurant.currency} "
            "${restaurant.restaurant.averageCostForTwo}",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 5.0.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Text('${restaurant.restaurant.userRating.votes} Votes',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0.sp,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 2.0.h),
                child: Text(
                  "${restaurant.restaurant.userRating.aggregateRating}/5.0",
                  style: TextStyle(
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(int.parse(
                        "0xff${restaurant.restaurant.userRating.ratingColor}"))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
