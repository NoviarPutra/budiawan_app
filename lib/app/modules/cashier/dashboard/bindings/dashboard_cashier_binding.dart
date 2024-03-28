import 'package:get/get.dart';

import '../controllers/dashboard_cashier_controller.dart';

class DashboardCashierBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardCashierController>(
      () => DashboardCashierController(),
    );
  }
}
