import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'chat_register_controller.dart';

class ChatRegisterView extends GetView<ChatRegisterController> {
  const ChatRegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatRegisterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChatRegisterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
