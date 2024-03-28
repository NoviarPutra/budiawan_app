import 'package:budiawan_app/app/modules/cashier/auth/login/views/login_cashier_view.dart';
import 'package:get/get.dart';

import '../modules/cashier/auth/login/bindings/login_cashier_binding.dart';
import '../modules/cashier/auth/register/bindings/register_cashier_binding.dart';
import '../modules/cashier/auth/register/views/register_cashier_view.dart';
import '../modules/cashier/dashboard/bindings/dashboard_cashier_binding.dart';
import '../modules/cashier/dashboard/views/dashboard_cashier_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

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
