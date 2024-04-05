// ignore_for_file: unnecessary_overrides

import 'package:budiawan_app/interfaces/dto/auth_login_dto.dart';
import 'package:budiawan_app/services/auth_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginCashierController extends GetxController {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  GetStorage storage = GetStorage();
  RxBool isLoading = false.obs;
  AuthServices authServices = AuthServices();

  Future<void> handleLogin() async {
    if (formKey.currentState?.saveAndValidate() == true) {
      isLoading.value = true;
      EasyLoading.show(status: 'loading...');
      try {
        AuthLoginDto payload = AuthLoginDto(
          email: formKey.currentState!.value['email'],
          password: formKey.currentState!.value['password'],
        );
        final resource = await authServices.login(payload);
        EasyLoading.showSuccess("Login Berhasil");
      } catch (e) {
        if (e is DioException) {
          EasyLoading.showError(e.response!.data['message']);
          return;
        }
        EasyLoading.showError("Terjadi kesalahan pada server");
        // print(e.toString());
      } finally {
        isLoading.value = false;
      }
    }
  }
}
