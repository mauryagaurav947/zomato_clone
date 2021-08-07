import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zomato_clone/constants/navigation.dart';
import 'package:zomato_clone/models/search_data_model.dart';
import 'package:zomato_clone/provider/search_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  SearchProvider _searchProvider;
  TextEditingController _searchController;

  @override
  void initState() {
    _searchProvider = Provider.of<SearchProvider>(context, listen: false);
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchProvider.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        title: _searchBar(),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          FocusScope.of(context).unfocus();
          return;
        },
        child: Consumer<SearchProvider>(
          builder: (context, provider, child) {
            if (provider.isLoading) {
              return Center(child: CupertinoActivityIndicator());
            } else {
              return ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(height: 1, color: Colors.grey);
                  },
                  itemBuilder: (context, index) {
                    var result = _searchProvider.searchResults[index];
                    return ListTile(
                      onTap: () => Navigate.close<SearchData>(context, result),
                      title: Text('${result.name} ${result.stateCode}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      subtitle: Text('${result.countryName}',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)),
                    );
                  },
                  itemCount: _searchProvider.searchResults.length);
            }
          },
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Row(
      children: [
        Container(
          height: 35.0.h,
          width: 0.7.sw,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7)),
          child: TextFormField(
            cursorHeight: 20.0.sp,
            style: TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w500),
            onChanged: _searchProvider.search,
            controller: _searchController,
            cursorRadius: Radius.circular(3),
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIconConstraints: BoxConstraints(),
                prefixIconConstraints: BoxConstraints(),
                prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Icon(Icons.search, color: Colors.grey)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.cancel, color: Colors.grey),
                  onPressed: () {
                    _searchController.clear();
                  },
                  splashRadius: 20,
                ),
                hintText: 'Search Cities',
                hintStyle: TextStyle(fontSize: 13.0.sp),
                contentPadding: EdgeInsets.fromLTRB(7.0.w, 4.5.h, 7.0.w, 0.0)),
          ),
        ),
        Spacer(),
        TextButton(
            onPressed: () => Navigate.close(context),
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.blue, fontSize: 15.0.sp),
            ))
      ],
    );
  }
}
