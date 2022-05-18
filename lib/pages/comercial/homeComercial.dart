import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/pages/comercial/tabs/CarritoComercial.dart';
import 'package:quispe_ui/pages/comercial/tabs/Categorias/CategoriasComercial.dart';
import 'package:quispe_ui/pages/comercial/tabs/FavoritosComercial.dart';
import 'package:quispe_ui/pages/comercial/tabs/InicioComercial.dart';
import 'package:quispe_ui/pages/comercial/tabs/categorias2.dart';
import 'package:quispe_ui/pages/comercial/tabs/detail_categoria.dart';
import 'package:quispe_ui/utils/responsive.dart';

class HomeComercialPage extends StatefulWidget {
  const HomeComercialPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeComercialPage> {
  List<Widget> listPages = [];

  @override
  void initState() {
    listPages.add(InicioComercial());
    listPages.add(Categorias2());
    listPages.add(FavoritosComercial());
    listPages.add(CarritoComercial());
    listPages.add(DetailCategory());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bottomBloc = ProviderBloc.homeComercial(context);
    //bottomBloc.changePage(0);
    final responsive = Responsive.of(context);
    return Scaffold(
      body: StreamBuilder(
          stream: bottomBloc.selectPageStream,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: kBottomNavigationBarHeight + responsive.hp(2),
                    ),
                    child: IndexedStack(
                      index: snapshot.data,
                      children: listPages,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: responsive.wp(3),
                        right: responsive.wp(3),
                        bottom: responsive.hp(1.5),
                        top: responsive.hp(1),
                      ),
                      height: kBottomNavigationBarHeight + responsive.hp(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              bottomBloc.changePage(0);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: ScreenUtil().setHeight(23),
                                  width: ScreenUtil().setWidth(23),
                                  child: (bottomBloc.page == 0)
                                      ? SvgPicture.asset(
                                          'assets/svg/home_b.svg',
                                        )
                                      : SvgPicture.asset(
                                          'assets/svg/home_g.svg',
                                        ),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(5),
                                ),
                                CircleAvatar(
                                  radius: ScreenUtil().setSp(3),
                                  backgroundColor: (bottomBloc.page == 0) ? Colors.blue : Colors.transparent,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              bottomBloc.changePage(1);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: ScreenUtil().setHeight(23),
                                  width: ScreenUtil().setWidth(23),
                                  child: (bottomBloc.page == 1 || bottomBloc.page == 4)
                                      ? SvgPicture.asset(
                                          'assets/svg/search_b.svg',
                                        )
                                      : SvgPicture.asset(
                                          'assets/svg/search_g.svg',
                                        ), //Imagsset('assets/logo_largo.svg'),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(5),
                                ),
                                CircleAvatar(
                                  radius: ScreenUtil().setSp(3),
                                  backgroundColor: (bottomBloc.page == 1 || bottomBloc.page == 4) ? Colors.blue : Colors.transparent,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              bottomBloc.changePage(2);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: ScreenUtil().setHeight(23),
                                  width: ScreenUtil().setWidth(23),
                                  child: (bottomBloc.page == 2)
                                      ? SvgPicture.asset(
                                          'assets/svg/heart_b.svg',
                                        )
                                      : SvgPicture.asset(
                                          'assets/svg/heart_g.svg',
                                        ), //Imagsset('assets/logo_largo.svg'),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(5),
                                ),
                                CircleAvatar(
                                  radius: ScreenUtil().setSp(3),
                                  backgroundColor: (bottomBloc.page == 2) ? Colors.blue : Colors.transparent,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              bottomBloc.changePage(3);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: ScreenUtil().setHeight(23),
                                  width: ScreenUtil().setWidth(23),
                                  child: (bottomBloc.page == 3)
                                      ? SvgPicture.asset(
                                          'assets/svg/shopping2.svg',
                                        )
                                      : SvgPicture.asset(
                                          'assets/svg/shopping.svg',
                                        ), //Imagsset('assets/logo_largo.svg'),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(5),
                                ),
                                CircleAvatar(
                                  radius: ScreenUtil().setSp(3),
                                  backgroundColor: (bottomBloc.page == 3) ? Colors.blue : Colors.transparent,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Container();
            }
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
