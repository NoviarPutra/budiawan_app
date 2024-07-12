import 'package:get/get.dart';

import 'chat_dashboard_controller.dart';

class ChatDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatDashboardController>(
      () => ChatDashboardController(),
    );
  }
}
