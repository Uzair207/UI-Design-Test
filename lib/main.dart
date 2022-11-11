
import 'package:design_test/utils/route_generator.dart';
import 'package:design_test/utils/screen_bindings.dart';
import 'package:design_test/utils/screen_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Manrope'
      ),

      getPages: RouteGenerator.getPages(),
      initialRoute: createProfileScreenRoute,
      initialBinding: ScreenBindings(),
    );
  }
}