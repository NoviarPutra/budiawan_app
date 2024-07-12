import 'package:get/get.dart';

import 'chat_register_controller.dart';

class ChatRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatRegisterController>(
      () => ChatRegisterController(),
    );
  }
}
