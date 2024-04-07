import 'package:budiawan_app/widgets/base_elevated_button.dart';
import 'package:budiawan_app/widgets/base_input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';

import 'register_cashier_controller.dart';

class RegisterCashierView extends GetView<RegisterCashierController> {
  const RegisterCashierView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                showMenu(
                  context: context,
                  position: const RelativeRect.fromLTRB(100, 0, 0, 0),
                  items: [
                    PopupMenuItem(
                      value: 1,
                      onTap: () => Get.offNamed('/home'),
                      child: const Text('Back To Home'),
                    )
                  ],
                );
              },
              icon: const Icon(Icons.more_vert),
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Text Login
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const Column(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Create an account',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                // Form Login
                Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: FormBuilder(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        baseInputText(
                          label: 'Nama',
                          name: 'name',
                          hintText: 'Example Name',
                          prefixIcon: const Icon(Icons.person),
                          onFieldSubmitted: (_) => controller.register(),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Name tidak boleh kosong',
                            ),
                            FormBuilderValidators.minLength(
                              5,
                              errorText: 'Minimal 5 karakter',
                            ),
                          ]),
                        ),
                        baseInputText(
                          label: 'Email',
                          name: 'email',
                          hintText: 'example@email.com',
                          prefixIcon: const Icon(Icons.email),
                          onFieldSubmitted: (_) => controller.register(),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Email tidak boleh kosong',
                            ),
                            FormBuilderValidators.email(
                              errorText: 'Email tidak valid',
                            ),
                          ]),
                        ),
                        baseInputText(
                          label: 'Password',
                          name: 'password',
                          hintText: '************',
                          obscureText: true,
                          prefixIcon: const Icon(Icons.password),
                          onFieldSubmitted: (_) => controller.register(),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Password tidak boleh kosong',
                            ),
                          ]),
                        ),
                        baseInputText(
                          label: 'Confirm Password',
                          name: 'confirmPassword',
                          hintText: '************',
                          obscureText: true,
                          prefixIcon: const Icon(Icons.password),
                          onFieldSubmitted: (_) => controller.register(),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                              errorText: 'Confirm Password tidak boleh kosong',
                            ),
                          ]),
                        ),
                        baseElevatedButton(
                          title: 'Register',
                          onTap: () {
                            controller.register();
                          },
                        ),
                        const Text('or'),
                        baseElevatedButton(
                          title: 'Login',
                          color: Colors.grey,
                          onTap: () {
                            Get.offNamed('/cashier/auth/login');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
