class ErrorMessageModel {
  ErrorMessageModel({
    this.statusCode,
    this.message,
  });

  ErrorMessageModel.fromJson(dynamic json) {
    statusCode = json['status_code'];
    message = json['message'];
  }
  num? statusCode;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status_code'] = statusCode;
    map['message'] = message;
    return map;
  }
}
