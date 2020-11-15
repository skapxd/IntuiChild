import 'package:get/get.dart';
import 'package:intui_child/app/modules/home/devices/pc/home_Binding.dart';
import 'package:intui_child/app/modules/home/devices/pc/home_Page.dart';
import 'package:intui_child/app/routes/app_Routs.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
