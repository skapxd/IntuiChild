import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/header_Controller.dart';

class HeaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HeaderController());
  }
}
