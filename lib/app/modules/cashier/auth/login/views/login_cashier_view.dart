// ignore_for_file: use_super_parameters

import 'package:budiawan_app/app/modules/cashier/auth/login/controllers/login_cashier_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginCashierView extends GetView<LoginCashierController> {
  const LoginCashierView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginCashierView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginCashierView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
