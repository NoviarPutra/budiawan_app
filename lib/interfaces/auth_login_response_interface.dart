class AuthLoginResponseInterface {
  String? status;
  String? message;
  String? token;

  AuthLoginResponseInterface({this.status, this.message, this.token});

  AuthLoginResponseInterface.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['token'] = token;
    return data;
  }
}
