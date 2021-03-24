import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quispe_ui/pages/comercial/AgregarAlCarritoAnimacion.dart';
import 'package:quispe_ui/utils/constants.dart';
import 'package:quispe_ui/utils/customCacheManager.dart';
import 'package:quispe_ui/utils/responsive.dart';

class DetalleProductoComercial extends StatelessWidget {
  const DetalleProductoComercial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {},
            child: _backgroundImage(context),
          ),
          _crearAppbar(responsive),
          _contenido(responsive, context),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    opaque: false,
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Agregarcarrito(urlImage: '$calzado');
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                ),
                padding: EdgeInsets.only(
                    bottom: responsive.hp(3),
                    top: responsive.hp(2),
                    left: responsive.wp(3),
                    right: responsive.wp(3)),
                child: Center(
                  child: Text(
                    'Agregar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: responsive.ip(3),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _crearAppbar(Responsive responsive) {
    return Container(
      height: kToolbarHeight + 30,
      child: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget _backgroundImage(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        //Navigator.pushNamed(context, 'detalleProductoFoto', arguments: carrito);
      },
      onVerticalDragUpdate: (drag) {
        if (drag.primaryDelta > 7) {
          Navigator.pop(context);
        }
      },
      child: Container(
        width: double.infinity,
        height: size.height * 0.50,
        child: ClipRRect(
          child: CachedNetworkImage(
            cacheManager: CustomCacheManager(),
            placeholder: (context, url) => Image(
                image: const AssetImage('assets/jar-loading.gif'),
                fit: BoxFit.cover),
            errorWidget: (context, url, error) => Image(
                image: AssetImage('assets/carga_fallida.jpg'),
                fit: BoxFit.cover),
            imageUrl: '$calzado',
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
    );
  }

  Widget _contenido(Responsive responsive, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: responsive.hp(25),
      ),
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.7,
        builder: (context, controller) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: Colors.white),
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(5),
            ),
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: responsive.hp(3),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Adidas Zero',
                          style: TextStyle(
                              fontSize: responsive.ip(3),
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(width: responsive.wp(3)),
                      Text(
                        'S/ 30.00',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: responsive.ip(3),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: responsive.hp(3),
                  ),
                  //botonesBajos(responsive, productosData, productosBloc),
                  //_cantidad(responsive),
                  SizedBox(
                    height: responsive.hp(1),
                  ),

                  /*  ('${productosData.productoNuevo}' == '1')
                      ? Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: responsive.wp(3),
                            vertical: responsive.wp(.5),
                          ),
                          decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Text(
                            'Producto Nuevo',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: responsive.ip(2),
                            ),
                          ),
                        )
                      : Container(), */
                  SizedBox(
                    height: responsive.hp(1),
                  ),
                  Text(
                    '$description',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: responsive.ip(2),
                    ),
                  ),
                  SizedBox(
                    height: responsive.hp(1.5),
                  ),

                  SizedBox(
                    height: responsive.hp(1.5),
                  ),

                  SizedBox(
                    height: responsive.hp(3),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
