import 'package:flutter/material.dart';

enum CategoriasEnum { categorias, marcas }

class CategoriasBlocListener with ChangeNotifier {
  ValueNotifier<CategoriasEnum> _page = ValueNotifier(CategoriasEnum.categorias);
  ValueNotifier<CategoriasEnum> get page => this._page;

  BuildContext? context;

  CategoriasBlocListener({this.context}) {
    _init();
  }
  void _init() {}

  void changeToLugar() {
    _page.value = CategoriasEnum.categorias;
    notifyListeners();
  }

  void changeToHora() {
    _page.value = CategoriasEnum.marcas;
    notifyListeners();
  }
}
