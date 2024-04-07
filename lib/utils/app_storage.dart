import 'dart:convert';

import 'package:budiawan_app/interfaces/auth_register_response_interface.dart';
import 'package:get_storage/get_storage.dart';

class AppStorage {
  static UserRegistered getUserCashier() {
    GetStorage storage = GetStorage();
    final readUser = storage.read('userCashier');
    final user = UserRegistered.fromJson(jsonDecode(readUser));
    return user;
  }

  static String getTokenCashier() {
    GetStorage storage = GetStorage();
    final token = storage.read('userCashierToken');
    return token;
  }
}
