import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  FlavorConfig(name: "Budiawan App Dev", variables: {
    'baseUrl': dotenv.env['BASE_URL'],
  });
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        title: "Budiawan App",
        debugShowCheckedModeBanner: true,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(fontFamily: 'Lato'),
        builder: EasyLoading.init(),
      ),
    ),
  );
}
