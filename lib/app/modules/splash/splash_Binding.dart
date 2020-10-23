import 'package:get/get.dart';
import 'package:intui_child/app/modules/splash/splash_Controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
