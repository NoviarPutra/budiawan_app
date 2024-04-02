// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginCashierController extends GetxController {
  GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  GetStorage storage = GetStorage();
  RxBool isLoading = false.obs;

  Future<void> handleLogin() async {
    if (formKey.currentState?.saveAndValidate() == true) {
      isLoading.value = true;
      try {
        storage.write('userCashier', formKey.currentState!.value);
        storage.write('isCashierLoggedIn', true);
        Get.offNamed('/cashier/dashboard');
      } catch (e) {
        EasyLoading.showError(e.toString());
      } finally {
        isLoading.value = false;
      }
    }
  }
}
