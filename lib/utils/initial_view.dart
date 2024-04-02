import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InitialView {
  static Future<void> cashier() async {
    GetStorage storage = GetStorage();
    storage.hasData('isCashierLoggedIn')
        ? Get.offNamed('/cashier/dashboard')
        : Get.offNamed('/cashier/auth/login');
  }
}
