import 'package:get/get.dart';

class HeaderController extends GetxController {
  bool _hoverContenido = false;
  bool _hoverMasterClass = false;
  bool _hoverCasos = false;
  bool _hoverProximos = false;
  bool _hoverFull = false;
  bool _iconCart = false;
  bool _perfil = false;

  bool get hoverContenido => _hoverContenido;

  set hoverContenido(bool _) {
    this._hoverContenido = _;
    update();
  }

  bool get hoverMasterClass => _hoverMasterClass;
  set hoverMasterClass(bool _) {
    this._hoverMasterClass = _;
    update();
  }

  bool get hoverCasos => _hoverCasos;
  set hoverCasos(bool _) {
    this._hoverCasos = _;
    update();
  }

  bool get hoverProximos => _hoverProximos;
  set hoverProximos(bool _) {
    this._hoverProximos = _;
    update();
  }

  bool get hoverFull => _hoverFull;
  set hoverFull(bool _) {
    this._hoverFull = _;
    update();
  }

  bool get iconCart => _iconCart;
  set iconCart(bool _) {
    this._iconCart = _;
    update();
  }

  bool get perfil => _perfil;
  set perfil(bool _) {
    this._perfil = _;
    update();
  }
}
