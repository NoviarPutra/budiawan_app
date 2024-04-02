// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'dashboard_cashier_controller.dart';

class DashboardCashierView extends GetView<DashboardCashierController> {
  const DashboardCashierView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GetStorage storage = GetStorage();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cashier App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(100, 0, 0, 0),
                items: [
                  PopupMenuItem(
                    value: 1,
                    onTap: () {
                      controller.handleLogout();
                    },
                    child: const Text('Logout'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    onTap: () => Get.offNamed('/home'),
                    child: const Text('Back To Home'),
                  )
                ],
              );
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Center(
        child: Text(
          storage.read('userCashier')['email'],
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
