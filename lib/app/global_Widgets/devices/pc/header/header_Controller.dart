import 'package:get/get.dart';

class HeaderController extends GetxController {
  bool _hoverContenido = false;
  bool _hoverMasterClass = false;
  bool _hoverCasos = false;
  bool _hoverProximos = false;
  bool _hoverFull = false;
  bool _hoverIconCart = false;
  bool _hoverPerfil = false;
  bool _hoverAuth = false;
  bool _hoverBtnRegistro = false;
  bool _hoverBtnEntrar = false;
  bool _hoverCourseSearch = false;
  bool _toggleShowCourse = false;
  int _initValue;

  final duplicateItems = List<String>.generate(10000, (i) => "Curso $i");

  var items = List<String>();

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();

    dummySearchList.addAll(duplicateItems);

    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();

      dummySearchList.forEach(
        (item) {
          if (item.contains(query)) {
            dummyListData.add(item);
          }
        },
      );
      items.clear();
      items.addAll(dummyListData);
      update();
      return;
    } else {
      items.clear();
      items.addAll(duplicateItems);
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    items.addAll(duplicateItems);
  }

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

  bool get hoverIconCart => _hoverIconCart;
  set hoverIconCart(bool _) {
    this._hoverIconCart = _;
    update();
  }

  bool get hoverPerfil => _hoverPerfil;
  set hoverPerfil(bool _) {
    this._hoverPerfil = _;
    update();
  }

  bool get hoverAuth => _hoverAuth;
  set hoverAuth(bool _) {
    this._hoverAuth = _;
    update();
  }

  bool get hoverBtnRegistro => _hoverBtnRegistro;
  set hoverBtnRegistro(bool _) {
    this._hoverBtnRegistro = _;
    update();
  }

  bool get hoverBtnEntrar => _hoverBtnEntrar;
  set hoverBtnEntrar(bool _) {
    this._hoverBtnEntrar = _;
    update();
  }

  bool get hoverCourseSearch => _hoverCourseSearch;
  set hoverCourseSearch(bool _) {
    this._hoverCourseSearch = _;
    update();
  }

  bool get toggleShowCourse => _toggleShowCourse;
  set toggleShowCourse(bool _) {
    this._toggleShowCourse = _;
    update();
  }

  int get initValue => _initValue;
  set initValue(int _) {
    this._initValue = _;
    update();
  }
}
