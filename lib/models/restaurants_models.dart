
//Restaurant result model
class RestaurantsDetail {
  Restaurant restaurant;

  RestaurantsDetail({this.restaurant});

  RestaurantsDetail.fromJson(Map<String, dynamic> json) {
    restaurant = json['restaurant'] != null
        ? new Restaurant.fromJson(json['restaurant'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.restaurant != null) {
      data['restaurant'] = this.restaurant.toJson();
    }
    return data;
  }
}

class Restaurant {
  R r;
  String apikey;
  String id;
  String name;
  String url;
  Location location;
  String switchToOrderMenu;
  String cuisines;
  String timings;
  String averageCostForTwo;
  String priceRange;
  String currency;
  List<String> highlights;
  List offers;
  String opentableSupport;
  String isZomatoBookRes;
  String mezzoProvider;
  String isBookFormWebView;
  String bookFormWebViewUrl;
  String bookAgainUrl;
  String thumb;
  UserRating userRating;
  String allReviewsCount;
  String photosUrl;
  String photoCount;
  String menuUrl;
  String featuredImage;
  String medioProvider;
  String hasOnlineDelivery;
  String isDeliveringNow;
  String storeType;
  String includeBogoOffers;
  String deeplink;
  String orderUrl;
  String orderDeeplink;
  String isTableReservationSupported;
  String hasTableBooking;
  String eventsUrl;
  String phoneNumbers;
  AllReviews allReviews;
  List<String> establishment;
  List establishmentTypes;

  Restaurant(
      {this.r,
        this.apikey,
        this.id,
        this.name,
        this.url,
        this.location,
        this.switchToOrderMenu,
        this.cuisines,
        this.timings,
        this.averageCostForTwo,
        this.priceRange,
        this.currency,
        this.highlights,
        this.offers,
        this.opentableSupport,
        this.isZomatoBookRes,
        this.mezzoProvider,
        this.isBookFormWebView,
        this.bookFormWebViewUrl,
        this.bookAgainUrl,
        this.thumb,
        this.userRating,
        this.allReviewsCount,
        this.photosUrl,
        this.photoCount,
        this.menuUrl,
        this.featuredImage,
        this.medioProvider,
        this.hasOnlineDelivery,
        this.isDeliveringNow,
        this.storeType,
        this.includeBogoOffers,
        this.deeplink,
        this.orderUrl,
        this.orderDeeplink,
        this.isTableReservationSupported,
        this.hasTableBooking,
        this.eventsUrl,
        this.phoneNumbers,
        this.allReviews,
        this.establishment,
        this.establishmentTypes});

  Restaurant.fromJson(Map<String, dynamic> json) {
    r = json['R'] != null ? new R.fromJson(json['R']) : null;
    apikey = json['apikey']?.toString();
    id = json['id']?.toString();
    name = json['name']?.toString();
    url = json['url']?.toString();
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    switchToOrderMenu = json['switch_to_order_menu']?.toString();
    cuisines = json['cuisines']?.toString();
    timings = json['timings']?.toString();
    averageCostForTwo = json['average_cost_for_two']?.toString();
    priceRange = json['price_range']?.toString();
    currency = json['currency']?.toString();
    highlights = json['highlights'].cast<String>();
    offers = json['offers'];
    opentableSupport = json['opentable_support']?.toString();
    isZomatoBookRes = json['is_zomato_book_res']?.toString();
    mezzoProvider = json['mezzo_provider']?.toString();
    isBookFormWebView = json['is_book_form_web_view']?.toString();
    bookFormWebViewUrl = json['book_form_web_view_url']?.toString();
    bookAgainUrl = json['book_again_url']?.toString();
    thumb = json['thumb']?.toString();
    userRating = json['user_rating'] != null
        ? new UserRating.fromJson(json['user_rating'])
        : null;
    allReviewsCount = json['all_reviews_count']?.toString();
    photosUrl = json['photos_url']?.toString();
    photoCount = json['photo_count']?.toString();
    menuUrl = json['menu_url']?.toString();
    featuredImage = json['featured_image']?.toString();
    medioProvider = json['medio_provider']?.toString();
    hasOnlineDelivery = json['has_online_delivery']?.toString();
    isDeliveringNow = json['is_delivering_now']?.toString();
    storeType = json['store_type']?.toString();
    includeBogoOffers = json['include_bogo_offers']?.toString();
    deeplink = json['deeplink']?.toString();
    orderUrl = json['order_url']?.toString();
    orderDeeplink = json['order_deeplink']?.toString();
    isTableReservationSupported = json['is_table_reservation_supported']?.toString();
    hasTableBooking = json['has_table_booking']?.toString();
    eventsUrl = json['events_url']?.toString();
    phoneNumbers = json['phone_numbers']?.toString();
    allReviews = json['all_reviews'] != null
        ? new AllReviews.fromJson(json['all_reviews'])
        : null;
    establishment = json['establishment'].cast<String>();
    establishmentTypes = json['establishment_types'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.r != null) {
      data['R'] = this.r.toJson();
    }
    data['apikey'] = this.apikey;
    data['id'] = this.id;
    data['name'] = this.name;
    data['url'] = this.url;
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    data['switch_to_order_menu'] = this.switchToOrderMenu;
    data['cuisines'] = this.cuisines;
    data['timings'] = this.timings;
    data['average_cost_for_two'] = this.averageCostForTwo;
    data['price_range'] = this.priceRange;
    data['currency'] = this.currency;
    data['highlights'] = this.highlights;
    if (this.offers != null) {
      data['offers'] = this.offers.map((v) => v.toJson()).toList();
    }
    data['opentable_support'] = this.opentableSupport;
    data['is_zomato_book_res'] = this.isZomatoBookRes;
    data['mezzo_provider'] = this.mezzoProvider;
    data['is_book_form_web_view'] = this.isBookFormWebView;
    data['book_form_web_view_url'] = this.bookFormWebViewUrl;
    data['book_again_url'] = this.bookAgainUrl;
    data['thumb'] = this.thumb;
    if (this.userRating != null) {
      data['user_rating'] = this.userRating.toJson();
    }
    data['all_reviews_count'] = this.allReviewsCount;
    data['photos_url'] = this.photosUrl;
    data['photo_count'] = this.photoCount;
    data['menu_url'] = this.menuUrl;
    data['featured_image'] = this.featuredImage;
    data['medio_provider'] = this.medioProvider;
    data['has_online_delivery'] = this.hasOnlineDelivery;
    data['is_delivering_now'] = this.isDeliveringNow;
    data['store_type'] = this.storeType;
    data['include_bogo_offers'] = this.includeBogoOffers;
    data['deeplink'] = this.deeplink;
    data['order_url'] = this.orderUrl;
    data['order_deeplink'] = this.orderDeeplink;
    data['is_table_reservation_supported'] = this.isTableReservationSupported;
    data['has_table_booking'] = this.hasTableBooking;
    data['events_url'] = this.eventsUrl;
    data['phone_numbers'] = this.phoneNumbers;
    if (this.allReviews != null) {
      data['all_reviews'] = this.allReviews.toJson();
    }
    data['establishment'] = this.establishment;
    if (this.establishmentTypes != null) {
      data['establishment_types'] =
          this.establishmentTypes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class R {
  String resId;
  String isGroceryStore;
  HasMenuStatus hasMenuStatus;

  R({this.resId, this.isGroceryStore, this.hasMenuStatus});

  R.fromJson(Map<String, dynamic> json) {
    resId = json['res_id']?.toString();
    isGroceryStore = json['is_grocery_store']?.toString();
    hasMenuStatus = json['has_menu_status'] != null
        ? new HasMenuStatus.fromJson(json['has_menu_status'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res_id'] = this.resId;
    data['is_grocery_store'] = this.isGroceryStore;
    if (this.hasMenuStatus != null) {
      data['has_menu_status'] = this.hasMenuStatus.toJson();
    }
    return data;
  }
}

class HasMenuStatus {
  String delivery;
  String takeaway;

  HasMenuStatus({this.delivery, this.takeaway});

  HasMenuStatus.fromJson(Map<String, dynamic> json) {
    delivery = json['delivery']?.toString();
    takeaway = json['takeaway']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['delivery'] = this.delivery;
    data['takeaway'] = this.takeaway;
    return data;
  }
}

class Location {
  String address;
  String locality;
  String city;
  String cityId;
  String latitude;
  String longitude;
  String zipcode;
  String countryId;
  String localityVerbose;

  Location(
      {this.address,
        this.locality,
        this.city,
        this.cityId,
        this.latitude,
        this.longitude,
        this.zipcode,
        this.countryId,
        this.localityVerbose});

  Location.fromJson(Map<String, dynamic> json) {
    address = json['address']?.toString();
    locality = json['locality']?.toString();
    city = json['city']?.toString();
    cityId = json['city_id']?.toString();
    latitude = json['latitude']?.toString();
    longitude = json['longitude']?.toString();
    zipcode = json['zipcode']?.toString();
    countryId = json['country_id']?.toString();
    localityVerbose = json['locality_verbose']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['locality'] = this.locality;
    data['city'] = this.city;
    data['city_id'] = this.cityId;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['zipcode'] = this.zipcode;
    data['country_id'] = this.countryId;
    data['locality_verbose'] = this.localityVerbose;
    return data;
  }
}

class UserRating {
  String aggregateRating;
  String ratingText;
  String ratingColor;
  RatingObj ratingObj;
  String votes;

  UserRating(
      {this.aggregateRating,
        this.ratingText,
        this.ratingColor,
        this.ratingObj,
        this.votes});

  UserRating.fromJson(Map<String, dynamic> json) {
    aggregateRating = json['aggregate_rating']?.toString();
    ratingText = json['rating_text']?.toString();
    ratingColor = json['rating_color']?.toString();
    ratingObj = json['rating_obj'] != null
        ? new RatingObj.fromJson(json['rating_obj'])
        : null;
    votes = json['votes']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aggregate_rating'] = this.aggregateRating;
    data['rating_text'] = this.ratingText;
    data['rating_color'] = this.ratingColor;
    if (this.ratingObj != null) {
      data['rating_obj'] = this.ratingObj.toJson();
    }
    data['votes'] = this.votes;
    return data;
  }
}

class RatingObj {
  Title title;
  BgColor bgColor;

  RatingObj({this.title, this.bgColor});

  RatingObj.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    bgColor = json['bg_color'] != null
        ? new BgColor.fromJson(json['bg_color'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.bgColor != null) {
      data['bg_color'] = this.bgColor.toJson();
    }
    return data;
  }
}

class Title {
  String text;

  Title({this.text});

  Title.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    return data;
  }
}

class BgColor {
  String type;
  String tString;

  BgColor({this.type, this.tString});

  BgColor.fromJson(Map<String, dynamic> json) {
    type = json['type']?.toString();
    tString = json['tString']?.toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['tString'] = this.tString;
    return data;
  }
}

class AllReviews {
  List<Reviews> reviews;

  AllReviews({this.reviews});

  AllReviews.fromJson(Map<String, dynamic> json) {
    if (json['reviews'] != null) {
      reviews = new List<Reviews>();
      json['reviews'].forEach((v) {
        reviews.add(new Reviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.reviews != null) {
      data['reviews'] = this.reviews.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reviews {
  List review;

  Reviews({this.review});

  Reviews.fromJson(Map<String, dynamic> json) {
    review = json['review'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.review != null) {
      data['review'] = this.review.map((v) => v.toJson()).toList();
    }
    return data;
  }
}