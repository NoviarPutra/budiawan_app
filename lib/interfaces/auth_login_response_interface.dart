import 'package:budiawan_app/interfaces/auth_register_response_interface.dart';

class AuthLoginResponseInterface {
  String? status;
  String? message;
  UserRegistered? data;
  String? token;

  AuthLoginResponseInterface({
    this.status,
    this.message,
    this.data,
    this.token,
  });

  AuthLoginResponseInterface.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserRegistered.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = token;
    return data;
  }
}
