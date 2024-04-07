import 'package:budiawan_app/interfaces/auth_register_response_interface.dart';
import 'package:budiawan_app/utils/app_storage.dart';
import 'package:flutter/material.dart';

class CashierHomeSection extends StatelessWidget {
  const CashierHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    UserRegistered user = AppStorage.getUserCashier();
    return Center(
      child: Text('Welcome ${user.name}'),
    );
  }
}
