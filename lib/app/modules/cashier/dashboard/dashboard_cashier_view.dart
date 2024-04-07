// ignore_for_file: use_super_parameters

import 'package:budiawan_app/interfaces/auth_register_response_interface.dart';
import 'package:budiawan_app/utils/app_storage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'dashboard_cashier_controller.dart';

class DashboardCashierView extends GetView<DashboardCashierController> {
  const DashboardCashierView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    UserRegistered user = AppStorage.getUserCashier();
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
          'Welcome ${user.name}',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
