import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class BaseAdapter {
  static String get baseUrl => FlavorConfig.instance.variables['baseUrl']!;

  static dio() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
    return dio;
  }
}
