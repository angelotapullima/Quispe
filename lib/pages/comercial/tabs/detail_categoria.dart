import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quispe_ui/Models/Comercial/categorias.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/pages/comercial/tabs/Categorias/lista_productos.dart';

class DetailCategory extends StatelessWidget {
  const DetailCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(70),
              child: Stack(
                children: [
                  Container(
                    child: BackButton(
                      onPressed: () {
                        final bottomBloc = ProviderBloc.homeComercial(context);
                        bottomBloc.changePage(1);
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Zapatillas',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(24),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return Listproduct();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          var begin = Offset(0.0, 1.0);
                          var end = Offset.zero;
                          var curve = Curves.ease;

                          var tween = Tween(begin: begin, end: end).chain(
                            CurveTween(curve: curve),
                          );

                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(90),
                              height: ScreenUtil().setHeight(90),
                              child: CachedNetworkImage(
                                imageUrl: '${listSubcategorias[i].foto}',
                                placeholder: (context, url) => Image(image: const AssetImage('assets/jar-loading.gif'), fit: BoxFit.cover),
                                errorWidget: (context, url, error) => Image(image: AssetImage('assets/carga_fallida.jpg'), fit: BoxFit.cover),
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
                            SizedBox(width: ScreenUtil().setWidth(16)),
                            Expanded(
                              child: Text(
                                '${listSubcategorias[i].nombre}',
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(16),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                );
              },
              itemCount: listSubcategorias.length,
            ))
          ],
        ),
      ),
    );
  }
}
