import 'package:design_test/controller/create_profile_screen_controller.dart';
import 'package:design_test/controller/topic_screen_controller.dart';
import 'package:get/get.dart';

class ScreenBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProfileScreenController());
    Get.lazyPut(() => TopicScreenController());
  }

}