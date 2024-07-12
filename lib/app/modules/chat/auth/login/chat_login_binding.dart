import 'package:get/get.dart';

import 'chat_login_controller.dart';

class ChatLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatLoginController>(
      () => ChatLoginController(),
    );
  }
}
