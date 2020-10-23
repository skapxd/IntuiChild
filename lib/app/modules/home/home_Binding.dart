import 'package:get/get.dart';
import 'package:intui_child/app/modules/home/home_Controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
