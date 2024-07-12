// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const CASHIER_REGISTER =
      _Paths.CASHIER + _Paths.AUTH + _Paths.REGISTER;
  static const CASHIER_LOGIN = _Paths.CASHIER + _Paths.AUTH + _Paths.LOGIN;
  static const CASHIER_DASHBOARD = _Paths.CASHIER + _Paths.DASHBOARD;
  static const CHAT_DASHBOARD = _Paths.CHAT + _Paths.DASHBOARD;
  static const CHAT_LOGIN = _Paths.CHAT + _Paths.AUTH + _Paths.LOGIN;
  static const CHAT_REGISTER = _Paths.CHAT + _Paths.AUTH + _Paths.REGISTER;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const CASHIER = '/cashier';
  static const CHAT = '/chat';
  static const AUTH = '/auth';
  static const REGISTER = '/register';
  static const LOGIN = '/login';
  static const DASHBOARD = '/dashboard';
}
