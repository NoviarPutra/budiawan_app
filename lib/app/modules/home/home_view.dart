import 'package:budiawan_app/utils/initial_view.dart';
import 'package:budiawan_app/widgets/icon_menu.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(30),
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 4,
          children: <Widget>[
            iconMenu(
              imgPathSvg: 'lib/assets/svg/menu_cashier.svg',
              title: 'Cashier App',
              onTap: () {
                InitialView.cashier();
              },
            ),
          ],
        ),
      ),
    );
  }
}
