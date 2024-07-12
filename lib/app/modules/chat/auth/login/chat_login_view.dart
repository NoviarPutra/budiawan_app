import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'chat_login_controller.dart';

class ChatLoginView extends GetView<ChatLoginController> {
  const ChatLoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatLoginView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChatLoginView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
