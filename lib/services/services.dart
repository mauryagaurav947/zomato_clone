import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:zomato_clone/models/models.dart';
import 'urls.dart';
import 'data.dart';

class Services {
  static const String ERROR_MESSAGE = 'Something went wrong, please try later';

  static const String _USER_KEY = 'b8cc3b8b0a85afed047f030fb52dc15f';

  // search all restaurant to corresponding city code
  static Future<Data<List<RestaurantsDetail>>> searchRestaurants(
      Map<String, dynamic> body) async {
    Uri url = Uri.https(Urls.BASE_URL, Urls.SEARCH_RESTAURANTS, body);
    try {
      http.Response response =
          await http.get(url, headers: {'user-key': _USER_KEY});
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        List<RestaurantsDetail> restaurants = <RestaurantsDetail>[];
        if (jsonResponse['restaurants'] != null) {
          jsonResponse['restaurants'].forEach((v) {
            restaurants.add(new RestaurantsDetail.fromJson(v));
          });
        }
        return Data(
            message: 'Restaurants fetched successfully',
            data: restaurants,
            status: true);
      }
      return Data(message: ERROR_MESSAGE);
    } on SocketException catch (e) {
      return Data(message: 'No internet connection');
    } catch (e) {
      return Data(message: ERROR_MESSAGE);
    }
  }

  // get all suggested cities
  static Future<Data<List<SearchData>>> citySuggestion(
      Map<String, dynamic> body) async {
    Uri url = Uri.https(Urls.BASE_URL, Urls.CITY_SUGGESTION, body);
    try {
      http.Response response =
          await http.get(url, headers: {'user-key': _USER_KEY});
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        List<SearchData> searchData = <SearchData>[];
        if (jsonResponse['location_suggestions'] != null) {
          jsonResponse['location_suggestions'].forEach((v) {
            searchData.add(new SearchData.fromJson(v));
          });
        }
        return Data(
            message: 'Cities fetched successfully',
            data: searchData,
            status: true);
      }
      return Data(message: ERROR_MESSAGE);
    } on SocketException catch (e) {
      return Data(message: 'No internet connection');
    } catch (e) {
      return Data(message: ERROR_MESSAGE);
    }
  }
}
