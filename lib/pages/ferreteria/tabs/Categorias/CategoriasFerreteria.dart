import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quispe_ui/Models/Comercial/Tabs.dart';
import 'package:quispe_ui/pages/ferreteria/tabs/Categorias/categorias_ferreteria_bloc.dart';
import 'package:quispe_ui/utils/responsive.dart';

const heigthCategory = 40.00;
const heigthProduct = 130.00;

class CategoriasFerreteria extends StatefulWidget {
  const CategoriasFerreteria({Key key}) : super(key: key);

  @override
  _CategoriasComercialState createState() => _CategoriasComercialState();
}

class _CategoriasComercialState extends State<CategoriasFerreteria>
    with SingleTickerProviderStateMixin {
  final bloc = CategoriaFerreteriaBloc();

  @override
  void initState() {
    bloc.init(this);
    super.initState();
  }

  @override
  void dispose() {
    //bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: AnimatedBuilder(
        animation: bloc,
        builder: (_, __) => SafeArea(
          child: Column(
            children: [
              Container(
                height: responsive.hp(6),
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Categorías',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: responsive.ip(3),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: responsive.hp(7),
                color: Colors.white,
                child: TabBar(
                    onTap: bloc.onCategorySelected,
                    controller: bloc.tabController,
                    indicatorWeight: 0.1,
                    isScrollable: true,
                    tabs: bloc.tabs
                        .map(
                          (e) => WidgetTab(
                            categoryTab: e,
                          ),
                        )
                        .toList()
                    //List.generate(10, (index) => RappiTab()),
                    ),
              ),
              Expanded(
                child: ListView.builder(
                    controller: bloc.scrollController,
                    itemCount: bloc.items.length,
                    itemBuilder: (_, index) {
                      final item = bloc.items[index];

                      if (item.isCategory) {
                        return ProductoTittle(
                          category: item.category,
                        );
                      } else {
                        return ProductoItem(
                          producto: item.productoModel,
                        );
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetTab extends StatelessWidget {
  final CategoriaTab categoryTab;
  final String index;
  const WidgetTab({Key key, @required this.categoryTab, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = categoryTab.selected;
    return Opacity(
      opacity: selected ? 1 : 0.5,
      child: Card(
        elevation: selected ? 6 : 0,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '${categoryTab.category.categoriaNombre} ',
            style: TextStyle(
                color: selected ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class ProductoTittle extends StatelessWidget {
  final CategoriaModel category;
  const ProductoTittle({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: responsive.wp(2)),
      height: heigthCategory,
      child: Text(
        category.categoriaNombre,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: responsive.ip(2),
        ),
      ),
    );
  }
}

class ProductoItem extends StatelessWidget {
  const ProductoItem({Key key, @required this.producto}) : super(key: key);

  final ProductoModel producto;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: responsive.hp(.5),
        horizontal: responsive.wp(2),
      ),
      height: heigthProduct,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 6,
        child: Row(
          children: [
            Container(
              width: responsive.wp(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://practika.com.mx/wp-content/uploads/2017/07/banner-promociones-practika-publicidad.jpg',
                  errorWidget: (context, url, error) => Image(
                      image: AssetImage('assets/carga_fallida.jpg'),
                      fit: BoxFit.cover),placeholder: (context, url) => Image(
                image: const AssetImage('assets/jar-loading.gif'),
                fit: BoxFit.cover),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: responsive.wp(4),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(producto.nombreProducto),
                Text(
                  'S/ ${producto.precio}',
                  style: TextStyle(
                      fontSize: responsive.ip(2),
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'S/ ${producto.descriprion}',
                  style: TextStyle(
                      fontSize: responsive.ip(1.5),
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
