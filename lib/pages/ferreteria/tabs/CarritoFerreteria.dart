import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/responsive.dart';

class CarritoFerroPage extends StatelessWidget {
  const CarritoFerroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: responsive.hp(5)),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Carrito de Compras",
                  style: Theme.of(context).textTheme.title,
                ),
                _productoCarrito(responsive),
                _productoCarrito(responsive),
                _productoCarrito(responsive),
                _productoCarrito(responsive),
                Positioned(
                  bottom: responsive.hp(50),
                   left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: responsive.hp(20),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget _productoCarrito(Responsive responsive) {
    return Container(
        width: double.infinity,
        height: responsive.hp(20),
        color: Colors.white,
        margin: EdgeInsets.all(responsive.ip(0.5)),
        padding: EdgeInsets.symmetric(
          horizontal: responsive.wp(5),
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: responsive.wp(20),
              height: responsive.hp(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  //cacheManager: CustomCacheManager(),
                  imageUrl:
                      'https://practika.com.mx/wp-content/uploads/2017/07/banner-promociones-practika-publicidad.jpg',
                  errorWidget: (context, url, error) => Image(
                      image: AssetImage('assets/carga_fallida.jpg'),
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
            SizedBox(width: responsive.wp(2)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Adidas W foil Bos GT'),
                Text('color: Rosado'),
                Text('Talla M'),
                Text(
                  'S/80.00',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(width: responsive.wp(8)),
            //iconos
            Padding(
              padding: EdgeInsets.only(top: responsive.hp(5)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.delete,
                  ),
                  SizedBox(height: responsive.hp(5)),
                  Container(
                    width: responsive.wp(22),
                    height: responsive.hp(3),
                    //color: Colors.blue,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Container(
                            width: responsive.wp(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "-",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize: responsive.ip(3),
                              ),
                            )),
                          ),
                        ),
                        Flexible(
                          flex: 4,
                          child: Container(
                            //color: Colors.grey[100],
                            height: double.infinity,
                            child: Center(
                              child: Text('01',
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                    fontSize: responsive.ip(2),
                                  )),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            width: responsive.wp(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Center(
                                child: Text("+",
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                      fontSize: responsive.ip(3),
                                    ))),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
