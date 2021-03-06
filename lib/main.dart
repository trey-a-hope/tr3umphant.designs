import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tr3umphant_designs/constants/app_routes.dart';
import 'package:tr3umphant_designs/constants/app_themes.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/initial_binding.dart';

void main() async {
  // Initialize Get Storage.
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tr3umphant.Designs',
      theme: AppThemes.lightTheme,
      initialBinding: InitialBinding(),
      initialRoute: Globals.routesHome,
      getPages: AppRoutes.routes,
    );
  }
}
