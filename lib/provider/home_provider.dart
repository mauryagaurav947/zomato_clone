import 'package:flutter/material.dart';
import 'package:zomato_clone/models/models.dart';
import 'package:zomato_clone/services/services.dart';

class HomeProvider extends ChangeNotifier {
  List<RestaurantsDetail> _restaurants = [];
  bool _isLoading = false;
  SearchData _searchResult;

  List<RestaurantsDetail> get restaurants => _restaurants;

  bool get isLoading => _isLoading;

  set searchResult(SearchData result) => _searchResult = result;

  // Fetch all restaurants
  Future<void> getRestaurants() async {
    _restaurants.clear();
    _isLoading = true;
    notifyListeners();

    Map<String, dynamic> body = {
      'entity_type': 'city',
      'entity_id': _searchResult?.id ?? ''
    };
    var data = await Services.restaurants(body);
    if (data.status) {
      _restaurants = data.data;
    }
    _isLoading = false;
    notifyListeners();
  }

  void clear() {
    _restaurants = [];
    _isLoading = false;
    _searchResult = null;
  }
}
