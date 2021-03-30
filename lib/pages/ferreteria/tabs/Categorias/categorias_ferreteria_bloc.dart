import 'package:flutter/material.dart';
import 'package:quispe_ui/Models/Comercial/Tabs.dart';
import 'package:meta/meta.dart';
import 'package:quispe_ui/pages/comercial/tabs/Categorias/CategoriasComercial.dart';

class CategoriaFerreteriaBloc with ChangeNotifier {
  List<CategoriaTab> tabs = [];
  List<CategoriaItems> items = [];
  TabController tabController;
  ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    scrollController.removeListener(_onScrolled);
    super.dispose();
  }

  void init(TickerProvider ticker) {
    tabController = TabController(vsync: ticker, length: listCategorias.length);
    double offsetFrom = 0.0;
    double offsetTo = 0.0;

    for (var i = 0; i < listCategorias.length; i++) {
      final category = listCategorias[i];
      if (i > 0) {
        offsetFrom += listCategorias[i - 1].productos.length * heigthProduct;
      }
      if (i < listCategorias.length - 1) {
        offsetTo =
            offsetFrom + listCategorias[i + 1].productos.length * heigthProduct;
      } else {
        offsetTo = double.infinity;
      }
      tabs.add(
        CategoriaTab(
            category: category, 
            selected: (i == 0),
            offsetFrom: (heigthCategory * i) + offsetFrom,
            offsetTo: offsetTo),
      );

      items.add(CategoriaItems(category: category));
      for (var j = 0; j < category.productos.length; j++) {
        final product = category.productos[j];
        items.add(CategoriaItems(productoModel: product));
      }
    }

    scrollController.addListener(_onScrolled);
  }

  void _onScrolled() {
    for (var i = 0; i < tabs.length; i++) {
      final tab = tabs[i];
      if (scrollController.offset >= tab.offsetFrom &&
          scrollController.offset <= tab.offsetTo &&
          !tab.selected) {
        onCategorySelected(i,animationRequired: false);
        tabController.animateTo(i + 1);
        break;
      }
    }
  }

  void onCategorySelected(int value, {bool animationRequired = true}) {
    final selected = tabs[value];

    print(tabs[value].category.categoriaNombre);
    for (var i = 0; i < tabs.length; i++) {
      final condition = selected.category.categoriaNombre == tabs[i].category.categoriaNombre;
      print(condition);
      tabs[i] = tabs[i].copyWith(condition);
    }
    notifyListeners();

    if (animationRequired) {
      scrollController.animateTo(selected.offsetFrom,
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    }
  }
}

class CategoriaTab {
  final CategoriaModel category;
  final bool selected;
  final double offsetFrom;
  final double offsetTo;

  CategoriaTab copyWith(bool selected) => CategoriaTab(
      category: category,
      selected: selected,
      offsetFrom: offsetFrom,
      offsetTo: offsetTo);

  CategoriaTab(
      {@required this.category,
      @required this.selected,
      @required this.offsetFrom,
      @required this.offsetTo});
}

class CategoriaItems {
  final CategoriaModel category;
  final ProductoModel productoModel;

  bool get isCategory => category != null;

  CategoriaItems({this.category, this.productoModel});
}
