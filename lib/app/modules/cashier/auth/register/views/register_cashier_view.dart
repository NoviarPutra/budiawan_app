import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_cashier_controller.dart';

class RegisterCashierView extends GetView<RegisterCashierController> {
  const RegisterCashierView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterCashierView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegisterCashierView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
