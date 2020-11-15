import 'package:get/get.dart';

class HomeController extends GetxController {
  bool _favorito = false;

  bool get favorito => _favorito;

  set favorito(bool _) {
    this._favorito = _;
    update();
  }
}
