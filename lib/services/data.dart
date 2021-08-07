
// Data model to store rest api result
class Data<T> {
  final bool status;
  final String message;
  final T data;

  Data({this.message, this.data, this.status = false});

  Data.fromJson(Map<String, dynamic> json)
      : status = json['status'] != null,
        message = json['message'],
        data = json['data'];

  Map<String, dynamic> toJson() {
    return {
      'status': this.status,
      'message': this.message,
      'data': this.data
    };
  }
}
