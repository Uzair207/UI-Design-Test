
import 'package:design_test/screens/create_profile_screen.dart';
import 'package:design_test/screens/topic_screen.dart';
import 'package:design_test/utils/screen_bindings.dart';
import 'package:design_test/utils/screen_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: createProfileScreenRoute,
          page: () => const CreateProfileScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: selectTopicScreenRoute,
          page: () => const TopicScreen(),
          binding: ScreenBindings()),

    ];
  }
}
