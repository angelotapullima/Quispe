import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/pages/ferreteria/detalle_producto_ferreteria.dart';
import 'package:quispe_ui/utils/constants.dart';
import 'package:quispe_ui/utils/responsive.dart';

class InicioFerro extends StatelessWidget {
  const InicioFerro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CabeceraInicio(responsive: responsive),
            PromocionesInicio(responsive: responsive),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: responsive.hp(2),
              ),
              height: responsive.hp(5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsetsDirectional.only(
                      end: responsive.wp(2),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.yellow[600],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: responsive.hp(5),
                          padding: EdgeInsets.symmetric(
                            horizontal: responsive.wp(2),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Colors.yellow[300],
                          ),
                          child: Icon(Icons.security_sharp),
                        ),
                        SizedBox(
                          width: responsive.wp(1),
                        ),
                        Text('Categoría'),
                        SizedBox(
                          width: responsive.wp(1),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ProductosInicio(
                alturaCard: responsive.hp(15), anchoCard: responsive.wp(55), imagen: '$iluminacion', titulo: 'Iluminación', responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(
                alturaCard: responsive.hp(17), imagen: '$taladros', anchoCard: responsive.wp(45), titulo: 'Taladros', responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(
                alturaCard: responsive.hp(18), imagen: '$desarmadores', anchoCard: responsive.wp(60), titulo: 'Desarmadores', responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(
                alturaCard: responsive.hp(19), imagen: '$martillo', anchoCard: responsive.wp(55), titulo: 'Martillos', responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(alturaCard: responsive.hp(16), imagen: '$tubos', anchoCard: responsive.wp(45), titulo: 'Tubos', responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            SizedBox(
              height: responsive.hp(12),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductosInicio extends StatelessWidget {
  const ProductosInicio(
      {Key? key, required this.responsive, required this.titulo, required this.alturaCard, required this.imagen, required this.anchoCard})
      : super(key: key);

  final Responsive? responsive;
  final String? titulo;
  final double? alturaCard;
  final String? imagen;
  final double? anchoCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: responsive!.wp(2)),
          child: Row(
            children: [
              Text(
                '$titulo',
                style: TextStyle(fontSize: responsive!.ip(2), fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: responsive!.wp(1), vertical: responsive!.hp(.3)),
                decoration: BoxDecoration(
                  color: Colors.green[600],
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Text(
                  'Ver más',
                  style: TextStyle(color: Colors.white, fontSize: responsive!.ip(1.8)),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: responsive!.hp(1)),
        Container(
          height: alturaCard,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return DetalleProductoFerreteria();
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
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: responsive!.wp(2)),
                    height: alturaCard,
                    width: anchoCard,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: imagen!,
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
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: responsive!.wp(2),
                              vertical: responsive!.hp(.3),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.black.withOpacity(.7),
                            ),
                            child: Text(
                              'Nombre de producto',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: responsive!.ip(2),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class PromocionesInicio extends StatefulWidget {
  const PromocionesInicio({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive? responsive;

  @override
  _PromocionesInicioState createState() => _PromocionesInicioState();
}

class _PromocionesInicioState extends State<PromocionesInicio> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: widget.responsive!.hp(15),
        child: CarouselSlider(
          options: CarouselOptions(
            height: widget.responsive!.hp(100),
            //aspectRatio: 16/9,
            //carouselController: buttonCarouselController,
            viewportFraction: 0.8,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,

            enableInfiniteScroll: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onScrolled: (data) {
              setState(() {
                _current = data!.toInt();
              });
              /* _scrollController.animateTo(
          data * size.width,
          /* ((data * 125 / imageSliders.length) / 100) *
              _scrollController.position.maxScrollExtent */

          curve: Curves.ease,
          duration: const Duration(milliseconds: 100),
        ); */
            },
          ),
          items: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: 'https://practika.com.mx/wp-content/uploads/2017/07/banner-promociones-practika-publicidad.jpg',
                errorWidget: (context, url, error) => Image(image: AssetImage('assets/carga_fallida.jpg'), fit: BoxFit.cover),
                placeholder: (context, url) => Image(image: const AssetImage('assets/jar-loading.gif'), fit: BoxFit.cover),
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
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: 'https://practika.com.mx/wp-content/uploads/2017/07/banner-promociones-practika-publicidad.jpg',
                errorWidget: (context, url, error) => Image(image: AssetImage('assets/carga_fallida.jpg'), fit: BoxFit.cover),
                placeholder: (context, url) => Image(image: const AssetImage('assets/jar-loading.gif'), fit: BoxFit.cover),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: 'https://practika.com.mx/wp-content/uploads/2017/07/banner-promociones-practika-publicidad.jpg',
                errorWidget: (context, url, error) => Image(image: AssetImage('assets/carga_fallida.jpg'), fit: BoxFit.cover),
                placeholder: (context, url) => Image(image: const AssetImage('assets/jar-loading.gif'), fit: BoxFit.cover),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => _Puntos(_current, index),
        ),
      ),
    ]);
  }
}

class _Puntos extends StatelessWidget {
  final int current;
  final int index;
  _Puntos(this.current, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: (current >= index - 0.5 && current < index + 0.5) ? Colors.redAccent : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

class CabeceraInicio extends StatelessWidget {
  const CabeceraInicio({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsive.hp(26),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: responsive.wp(2),
                ),
                CircleAvatar(
                  radius: responsive.hp(2.5),
                ),
                SizedBox(
                  width: responsive.wp(2),
                ),
                Text(
                  'Hola, Angelo',
                  style: TextStyle(fontSize: responsive.ip(1.8), fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Spacer(),
                IconButton(icon: Icon(FontAwesomeIcons.bell, color: Colors.black), onPressed: null)
              ],
            ),
            SizedBox(
              height: responsive.hp(.8),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsive.wp(4),
              ),
              child: Text(
                'Encuentra los mejores productos, ',
                style: TextStyle(fontSize: responsive.ip(1.8), fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsive.wp(4),
              ),
              child: Text(
                'Solo Aquí',
                style: TextStyle(fontSize: responsive.ip(1.8), fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            SizedBox(
              height: responsive.hp(1),
            ),
            Row(
              children: [
                SizedBox(
                  width: responsive.wp(3),
                ),
                Image.asset(
                  'assets/ferro_logo.png',
                  height: responsive.hp(5),
                ),
                SizedBox(
                  width: responsive.wp(5),
                ),
                Expanded(
                  child: Container(
                    height: responsive.hp(5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
                    child: Row(
                      children: [
                        SizedBox(
                          width: responsive.wp(3),
                        ),
                        Text('Buscar'),
                        Spacer(),
                        Icon(Icons.search),
                        SizedBox(
                          width: responsive.wp(2),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: responsive.wp(5),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
