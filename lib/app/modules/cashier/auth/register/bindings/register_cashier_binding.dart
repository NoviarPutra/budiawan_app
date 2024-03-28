import 'package:get/get.dart';

import '../controllers/register_cashier_controller.dart';

class RegisterCashierBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterCashierController>(
      () => RegisterCashierController(),
    );
  }
}
