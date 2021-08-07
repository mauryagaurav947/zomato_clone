import 'package:flutter/material.dart';
import 'package:zomato_clone/models/models.dart';
import 'package:zomato_clone/services/services.dart';

class SearchProvider extends ChangeNotifier {
  List<SearchData> _searchResults = <SearchData>[];

  List<SearchData> get searchResults => _searchResults;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void search(String value) async {
    if (value.isEmpty) {
      return;
    }
    _searchResults.clear();
    _isLoading = true;
    notifyListeners();
    var data = await Services.searchCities({'q': value});
    if (data.status) {
      _searchResults = data.data;
    }
    _isLoading = false;
    notifyListeners();
  }

  void clear() {
    _searchResults.clear();
    _isLoading = false;
  }
}
