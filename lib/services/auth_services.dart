import 'package:budiawan_app/app/data/base_adapter.dart';
import 'package:budiawan_app/interfaces/auth_login_response_interface.dart';
import 'package:budiawan_app/interfaces/auth_register_response_interface.dart';
import 'package:budiawan_app/interfaces/dto/auth_login_dto.dart';
import 'package:budiawan_app/interfaces/dto/auth_register_dto.dart';

class AuthServices {
  static AuthServices? _instance;
  factory AuthServices() => _instance ??= AuthServices._();
  AuthServices._();

  Future<AuthRegisterResponseInterface> register(AuthRegisterDto user) async {
    final resource =
        await BaseAdapter.dio().post('/auth/register', data: user.toJson());
    return AuthRegisterResponseInterface.fromJson(resource.data);
  }

  Future<AuthLoginResponseInterface> login(AuthLoginDto user) async {
    final resource =
        await BaseAdapter.dio().post('/auth/login', data: user.toJson());
    return AuthLoginResponseInterface.fromJson(resource.data);
  }
}
