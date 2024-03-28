import 'package:budiawan_app/app/modules/cashier/auth/login/controllers/login_cashier_controller.dart';
import 'package:get/get.dart';

class LoginCashierBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginCashierController>(
      () => LoginCashierController(),
    );
  }
}
