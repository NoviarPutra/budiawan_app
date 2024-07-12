import 'package:get/get.dart';

import '../modules/cashier/auth/login/login_cashier_binding.dart';
import '../modules/cashier/auth/login/login_cashier_view.dart';
import '../modules/cashier/auth/register/register_cashier_binding.dart';
import '../modules/cashier/auth/register/register_cashier_view.dart';
import '../modules/cashier/dashboard/dashboard_cashier_binding.dart';
import '../modules/cashier/dashboard/dashboard_cashier_view.dart';
import '../modules/chat/auth/login/chat_login_binding.dart';
import '../modules/chat/auth/login/chat_login_view.dart';
import '../modules/chat/auth/register/chat_register_binding.dart';
import '../modules/chat/auth/register/chat_register_view.dart';
import '../modules/chat/dashboard/chat_dashboard_binding.dart';
import '../modules/chat/dashboard/chat_dashboard_view.dart';
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
    GetPage(
      name: _Paths.CHAT + _Paths.DASHBOARD,
      page: () => const ChatDashboardView(),
      binding: ChatDashboardBinding(),
    ),
    GetPage(
      name: _Paths.CHAT + _Paths.AUTH + _Paths.REGISTER,
      page: () => const ChatRegisterView(),
      binding: ChatRegisterBinding(),
    ),
    GetPage(
      name: _Paths.CHAT + _Paths.AUTH + _Paths.LOGIN,
      page: () => const ChatLoginView(),
      binding: ChatLoginBinding(),
    )
  ];
}
