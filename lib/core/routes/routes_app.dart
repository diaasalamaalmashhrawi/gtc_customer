import 'package:get/get.dart';
import 'package:gtc_customer/ui/pages/successfully_added.dart';

import '../../home_page.dart';
import '../../ui/pages/splash_screen1.dart';

class RoutesApp {
  static const String initialPage = '/initialPage';
  static const String splashScreen1 = '/';
  static const String success = '/success';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: initialPage,
        page: () => const HomePage(),
      ),
      GetPage(
        name: splashScreen1,
        page: () => const SplashScreen1(),
      ),
      GetPage(
        name: success,
        page: () => const SuccessfullyAdded(),
      ),
    ];
  }
}
