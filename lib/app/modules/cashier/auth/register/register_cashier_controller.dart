// ignore_for_file: unnecessary_overrides

import 'package:budiawan_app/interfaces/dto/auth_register_dto.dart';
import 'package:budiawan_app/services/auth_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class RegisterCashierController extends GetxController {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  RxBool isLoading = false.obs;

  Future<void> register() async {
    isLoading.value = true;
    try {
      if (formKey.currentState?.saveAndValidate() ?? false) {
        EasyLoading.show(status: 'Memproses...');
        final formData = formKey.currentState?.value;
        AuthRegisterDto payload = AuthRegisterDto(
          name: formData?['name'],
          email: formData?['email'],
          password: formData?['password'],
          role: 'USER',
        );
        if (formData?['password'] != formData?['confirmPassword']) {
          EasyLoading.showError("Konfirmasi password tidak cocok");
          return;
        }
        await AuthServices().register(payload);
        EasyLoading.showSuccess("Registrasi Berhasil");

        // DELAY
        await Future.delayed(const Duration(seconds: 1));
        Get.offNamed('/cashier/auth/login');
      }
    } catch (e) {
      if (e is DioException) {
        EasyLoading.showError(e.response!.data['message']);
        return;
      }
      EasyLoading.showError("Terjadi kesalahan pada server");
    } finally {
      isLoading.value = false;
      EasyLoading.dismiss();
    }
  }
}
