// ignore_for_file: use_super_parameters

import 'package:budiawan_app/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'dashboard_cashier_controller.dart';

class DashboardCashierView extends GetView<DashboardCashierController> {
  const DashboardCashierView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    child: const ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    onTap: () => Get.offNamed('/home'),
                    child: const ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Back To Home'),
                    ),
                  )
                ],
              );
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Obx(
        () => Container(
          padding: const EdgeInsets.all(20),
          child: controller.widgetOptions
              .elementAt(controller.selectedIndex.value),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: primaryColor,
          onTap: controller.onItemTapped,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
