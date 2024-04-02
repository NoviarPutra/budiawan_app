import 'package:budiawan_app/app/modules/cashier/auth/login/login_cashier_view.dart';
import 'package:get/get.dart';

import '../modules/cashier/auth/login/login_cashier_binding.dart';
import '../modules/cashier/auth/register/register_cashier_binding.dart';
import '../modules/cashier/auth/register/register_cashier_view.dart';
import '../modules/cashier/dashboard/dashboard_cashier_binding.dart';
import '../modules/cashier/dashboard/dashboard_cashier_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CASHIER + _Paths.AUTH + _Paths.REGISTER,
      page: () => const RegisterCashierView(),
      binding: RegisterCashierBinding(),
    ),
    GetPage(
      name: _Paths.CASHIER + _Paths.AUTH + _Paths.LOGIN,
      page: () => const LoginCashierView(),
      binding: LoginCashierBinding(),
    ),
    GetPage(
      name: _Paths.CASHIER + _Paths.DASHBOARD,
      page: () => const DashboardCashierView(),
      binding: DashboardCashierBinding(),
    ),
  ];
}
