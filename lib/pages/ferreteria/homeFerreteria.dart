import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/pages/ferreteria/tabs/CarritoFerreteria.dart';
import 'package:quispe_ui/pages/ferreteria/tabs/Categorias/CategoriasFerreteria.dart';
import 'package:quispe_ui/pages/ferreteria/tabs/FavoritosFerreteria.dart';
import 'package:quispe_ui/pages/ferreteria/tabs/InicioFerreteria.dart';
import 'package:quispe_ui/pages/ferreteria/tabs/UsuarioFerreteria.dart';
import 'package:quispe_ui/utils/responsive.dart';

class HomeFerreteriaPage extends StatefulWidget {
  const HomeFerreteriaPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeFerreteriaPage> {
  List<Widget> listPages = [];

  @override
  void initState() {
    listPages.add(InicioFerro());
    listPages.add(FavoritosFerroPage());
    listPages.add(CategoriasFerreteria());
    listPages.add(CarritoFerroPage());
    listPages.add(UsuarioFerroPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final buttonBloc = ProviderBloc.homeComercial(context);
    buttonBloc.changePage(0);
    final responsive = Responsive.of(context);
    return Scaffold(
      body: StreamBuilder(
          stream: buttonBloc.selectPageStream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Stack(
              children: [
                StreamBuilder(
                  stream: buttonBloc.selectPageStream,
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    return IndexedStack(
                      index: snapshot.data,
                      children: listPages,
                    );
                  },
                ),
                Positioned(
                  bottom: responsive.hp(3),
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsive.wp(2),
                      vertical: responsive.hp(.7),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: responsive.wp(3),
                      vertical: responsive.hp(1),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white.withOpacity(.9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            buttonBloc.changePage(0);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                                color: (buttonBloc.page == 0) ? Colors.red : Colors.black,
                              ),
                              Text(
                                "Inicio",
                                style: TextStyle(
                                  fontSize: responsive.ip(1.5),
                                  color: (buttonBloc.page == 0) ? Colors.red : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            buttonBloc.changePage(1);
                          },
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.heart,
                                //size: responsive.ip(2.7),
                                color: (buttonBloc.page == 1) ? Colors.red : Colors.black,
                              ),
                              Text(
                                "Favoritos",
                                style: TextStyle(
                                  fontSize: responsive.ip(1.5),
                                  color: (buttonBloc.page == 1) ? Colors.red : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            buttonBloc.changePage(2);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.category_sharp,
                                color: (buttonBloc.page == 2) ? Colors.red : Colors.black,
                              ),
                              Text(
                                "Cátegorias",
                                style: TextStyle(
                                  fontSize: responsive.ip(1.5),
                                  color: (buttonBloc.page == 2) ? Colors.red : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            buttonBloc.changePage(3);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: (buttonBloc.page == 3) ? Colors.red : Colors.black,
                              ),
                              Text(
                                "Carrito",
                                style: TextStyle(
                                  fontSize: responsive.ip(1.5),
                                  color: (buttonBloc.page == 3) ? Colors.red : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            buttonBloc.changePage(4);
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.verified_user_rounded,
                                color: (buttonBloc.page == 4) ? Colors.red : Colors.black,
                              ),
                              Text(
                                "Usuario",
                                style: TextStyle(
                                  fontSize: responsive.ip(1.5),
                                  color: (buttonBloc.page == 4) ? Colors.red : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
      /* bottomNavigationBar: StreamBuilder(
          stream: buttonBloc.selectPageStream,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              selectedItemColor: Theme.of(context).textSelectionColor,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Principal",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: "Pedidos",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.data_usage),
                  label: "Pagos",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle),
                  label: "Usuario",
                ),
              ],
              currentIndex: buttonBloc.page,
              onTap: (valor) {
                buttonBloc.changePage(valor);
              },
            );
          }),
    */
    );
  }
}
