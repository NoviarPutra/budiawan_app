// ignore_for_file: use_super_parameters

import 'package:budiawan_app/app/modules/cashier/auth/login/login_cashier_controller.dart';
import 'package:budiawan_app/widgets/base_elevated_button.dart';
import 'package:budiawan_app/widgets/base_input_text.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';

class LoginCashierView extends GetView<LoginCashierController> {
  const LoginCashierView({Key? key}) : super(key: key);
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
        body: Center(
          child: Container(
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
                          'Login Cashier App',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Enter credentials to login',
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            baseInputText(
                              label: 'Email',
                              name: 'email',
                              hintText: 'example@email.com',
                              prefixIcon: const Icon(Icons.email),
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted: (_) => controller.handleLogin(),
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
                              onFieldSubmitted: (_) => controller.handleLogin(),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                  errorText: 'Password tidak boleh kosong',
                                ),
                              ]),
                            ),
                            baseElevatedButton(
                              title: 'Login',
                              onTap: () {
                                controller.handleLogin();
                              },
                            ),

                            // Forgot Password
                            const SizedBox(height: 5),
                            TextButton(
                              onPressed: () {
                                showAboutDialog(
                                  context: context,
                                  applicationName: 'Cashier App',
                                  applicationVersion: '1.0.0',
                                  applicationIcon: const FlutterLogo(),
                                  applicationLegalese:
                                      'Copyright © ${DateTime.now().year} by Noviar Putra.',
                                  children: [
                                    const Text(
                                      'Fitur ini belum tersedia. Silahkan hubungi admin.',
                                    ),
                                  ],
                                );
                              },
                              child: const Text('Forgot Password?'),
                            ),

                            // Register
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Don\'t have an account?'),
                                TextButton(
                                  onPressed: () {
                                    Get.offNamed('/cashier/auth/register');
                                  },
                                  child: const Text('Register'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
