// ignore_for_file: unnecessary_overrides

import 'package:budiawan_app/app/modules/cashier/dashboard/sections/cashier_home_section.dart';
import 'package:budiawan_app/app/modules/cashier/dashboard/sections/cashier_order_section.dart';
import 'package:budiawan_app/app/modules/cashier/dashboard/sections/cashier_profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DashboardCashierController extends GetxController {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  GetStorage storage = GetStorage();
  RxInt selectedIndex = 0.obs;

  List<Widget> widgetOptions = <Widget>[
    const CashierHomeSection(),
    const CashierOrderSection(),
    const CashierProfileSection(),
  ];

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  Future<void> handleLogout() async {
    storage.remove('isCashierLoggedIn');
    storage.remove('userCashier');
    Get.offAllNamed('/cashier/auth/login');
  }
}
