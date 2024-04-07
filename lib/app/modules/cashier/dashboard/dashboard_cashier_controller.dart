// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DashboardCashierController extends GetxController {
  GetStorage storage = GetStorage();

  Future<void> handleLogout() async {
    storage.remove('isCashierLoggedIn');
    storage.remove('userCashier');
    Get.offAllNamed('/cashier/auth/login');
  }
}
