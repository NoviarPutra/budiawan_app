import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'chat_dashboard_controller.dart';

class ChatDashboardView extends GetView<ChatDashboardController> {
  const ChatDashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatDashboardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChatDashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
