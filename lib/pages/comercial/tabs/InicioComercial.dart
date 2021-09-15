import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/Models/Comercial/categorias.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/pages/comercial/detalle_producto_comercial.dart';
import 'package:quispe_ui/utils/constants.dart';
import 'package:quispe_ui/utils/responsive.dart';

class InicioComercial extends StatelessWidget {
  const InicioComercial({Key key}) : super(key: key);

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
                itemCount: categoryList.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      final bottomBloc = ProviderBloc.homeComercial(context);
                      bottomBloc.changePage(4);
                    },
                    child: Container(
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
                          Text('${categoryList[index].nombre}'),
                          SizedBox(
                            width: responsive.wp(1),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ProductosInicio(
              alturaCard: ScreenUtil().setHeight(250),
              anchoCard: ScreenUtil().setWidth(150),
              titulo: 'Calzados',
              imagen: '$calzado',
              responsive: responsive,
            ),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(
                alturaCard: ScreenUtil().setHeight(250),
                anchoCard: responsive.wp(45),
                imagen: '$cartera',
                titulo: 'Carteras',
                responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(
                alturaCard: ScreenUtil().setHeight(250), anchoCard: responsive.wp(60), imagen: '$deporte', titulo: 'Deporte', responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(
                alturaCard: ScreenUtil().setHeight(250),
                imagen: '$lenceria',
                anchoCard: responsive.wp(55),
                titulo: 'Lenceria',
                responsive: responsive),
            SizedBox(
              height: responsive.hp(2),
            ),
            ProductosInicio(
                alturaCard: ScreenUtil().setHeight(250), imagen: '$muebles', anchoCard: responsive.wp(45), titulo: 'Muebles', responsive: responsive),
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
      {Key key, @required this.responsive, @required this.titulo, @required this.alturaCard, @required this.imagen, @required this.anchoCard})
      : super(key: key);

  final Responsive responsive;
  final String titulo;
  final String imagen;
  final double alturaCard;
  final double anchoCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: responsive.wp(2)),
          child: Row(
            children: [
              Text(
                '$titulo',
                style: TextStyle(fontSize: responsive.ip(2), fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: responsive.wp(1),
                  vertical: responsive.hp(.3),
                ),
                decoration: BoxDecoration(
                  color: Colors.green[600],
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Text(
                  'Ver más',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: responsive.ip(1.8),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: responsive.hp(1),
        ),
        Container(
          height: alturaCard,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return DetalleProductoComercial();
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
                    margin: EdgeInsets.symmetric(horizontal: responsive.wp(2)),
                    height: alturaCard,
                    width: anchoCard,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: alturaCard - ScreenUtil().setHeight(110),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: imagen,
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
                                top: ScreenUtil().setHeight(5),
                                left: ScreenUtil().setWidth(5),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: ScreenUtil().setWidth(2),
                                    vertical: ScreenUtil().setHeight(0),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    '- 30%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(15),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: responsive.wp(2),
                            vertical: responsive.hp(.3),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            //color: Colors.black.withOpacity(.7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nombre del producto',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: responsive.ip(2),
                                ),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(8),
                              ),
                              Text(
                                'S/30.0',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: ScreenUtil().setSp(22),
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
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
    Key key,
    @required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  _PromocionesInicioState createState() => _PromocionesInicioState();
}

class _PromocionesInicioState extends State<PromocionesInicio> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: widget.responsive.hp(15),
        child: CarouselSlider(
          options: CarouselOptions(
            height: widget.responsive.hp(100),
            //aspectRatio: 16/9,
            //carouselController: buttonCarouselController,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayInterval: Duration(seconds: 6),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            viewportFraction: 0.8,
            onScrolled: (data) {
              setState(() {
                _current = data.toInt();
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
                imageUrl: 'https://d13xymm0hzzbsd.cloudfront.net/1/20210911/16313938192419.jpg',
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
                imageUrl:
                    'https://calimod.vteximg.com.br/arquivos/ids/206172/ACCESORIOS%20CALIMOD%20DE%20CUERO%20PORTA%20CELULAR%20PORTA%20TABLET%20MOUSEPAD%20WEB.jpg?v=637593638858200000',
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
                imageUrl: 'https://cdn.evergage.com/promotions/superdeporteperu/marathonstorepeprd/I7pZY/Zsx5R.jpg?decache=1631201044052',
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
    Key key,
    @required this.responsive,
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
                  'assets/quispe_logo.png',
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
