import 'package:design_test/utils/screen_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateProfileScreenController extends GetxController{
  TextEditingController tf1Controller = TextEditingController();
  TextEditingController tf2Controller = TextEditingController();
  TextEditingController tf3Controller = TextEditingController();
  TextEditingController tf4Controller = TextEditingController();
  TextEditingController tf5Controller = TextEditingController();


  @override
  void onInit() {
    tf1Controller.text = 'Ruben';
    tf2Controller.text = 'Torff';
    tf3Controller.text = 'ruben_torff@gmail.com';
    tf4Controller.text = '81 29 02 2022';
    tf5Controller.text = '18 Sept 1999';
    super.onInit();
  }
  void goToSelectTopicScreen(){
    Get.toNamed(selectTopicScreenRoute);
  }

}