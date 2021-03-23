import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/responsive.dart';

class CarritoFerroPage extends StatelessWidget {
  const CarritoFerroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: responsive.hp(6),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Carrito',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: responsive.ip(3),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        if (index == 9) {
                          return Container(
                              height: responsive.hp(15), color: Colors.white);
                        }
                        return _productoCarrito(responsive);
                      }),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: responsive.hp(0),
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: responsive.hp(18),
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: responsive.wp(2)),
                    child: Card(
                      elevation: 6,
                      child: Container(
                        width: double.infinity,
                        height: responsive.hp(7),
                        child: Center(
                          child: Text(
                            'Pagar S/300.0',
                            style: TextStyle(
                                fontSize: responsive.ip(2.5),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _productoCarrito(Responsive responsive) {
    return Container(
      width: double.infinity,
      height: responsive.hp(16),
      color: Colors.white,
      margin: EdgeInsets.all(responsive.ip(0.5)),
      padding: EdgeInsets.symmetric(
        horizontal: responsive.wp(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
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
              ),Spacer(),
              //iconos
              Container(
                width: responsive.wp(3),
                child: Icon(
                  Icons.delete,
                ),
              ),
            ],
          ),
          cantidad(responsive)
        ],
      ),
    );
  }

  Widget cantidad(Responsive responsive) {
    final pad = responsive.hp(1);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: pad),
      child: Container(
        decoration: BoxDecoration(
          //border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
        ),
        width: responsive.wp(50),
        height: responsive.hp(3.5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              flex: 3,
              child: GestureDetector(
                onTap: () {
                  /*  _decrease();
                  utils.agregarAlCarritoContador(
                      context, widget.idSudsidiaryGood,widget.tallaProducto,widget.modeloProducto,widget.marcaProducto, _counter);
                 */
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: responsive.ip(2),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
                color: Colors.grey[100],
                height: double.infinity,
                child: Center(
                  child: Text('1 UN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: responsive.ip(1.5),
                      )),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: GestureDetector(
                onTap: () {
                  /* _increase();
                  utils.agregarAlCarritoContador(
                      context, widget.idSudsidiaryGood,widget.tallaProducto,widget.modeloProducto,widget.marcaProducto, _counter);

                   */ //utils.agregarAlCarrito(context, _counter.toString());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: responsive.ip(2),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
