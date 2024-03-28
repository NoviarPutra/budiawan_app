// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_cashier_controller.dart';

class DashboardCashierView extends GetView<DashboardCashierController> {
  const DashboardCashierView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashboardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
