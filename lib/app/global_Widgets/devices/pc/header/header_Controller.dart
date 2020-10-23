import 'package:get/get.dart';

class HeaderController extends GetxController {
  bool _hoverContenido = false;

  bool get hoverContenido => _hoverContenido;

  set hoverContenido(bool _) {
    this._hoverContenido = _;
    update();
  }
}
