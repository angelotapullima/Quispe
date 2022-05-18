import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/Models/Comercial/carrito_data.dart';
import 'package:quispe_ui/pages/comercial/tabs/carrito/metodo_entrega_page.dart';

class CarritoComercial extends StatelessWidget {
  const CarritoComercial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: ScreenUtil().setHeight(70),
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(16),
                ),
                color: Colors.white,
                child: Row(
                  children: [
                    Text(
                      'Carrito de compra',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(18),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: ScreenUtil().setHeight(28),
                      width: ScreenUtil().setWidth(28),
                      child: SvgPicture.asset(
                        'assets/svg/user_b.svg',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Text(
                '3 ITEMS',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(16),
                  fontWeight: FontWeight.w600,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: productos.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(24),
                        vertical: ScreenUtil().setHeight(16),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              productos[index]['image'],
                              height: ScreenUtil().setHeight(86),
                              width: ScreenUtil().setWidth(86),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(8),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(229.75),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Spacer(),
                                    Icon(
                                      FontAwesomeIcons.times,
                                      size: ScreenUtil().setSp(8),
                                      color: Color(0XFF1C1C1C).withOpacity(0.6),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${productos[index]["nombre"]} ${productos[index]["marca"]}',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(8),
                                ),
                                Text(
                                  'Talla ${productos[index]["talla"]}',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(12),
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFF808080),
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(8),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'S/${productos[index]["precio"]}',
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: ScreenUtil().setSp(0.016),
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset('assets/carrito/resta.svg'),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(10),
                                    ),
                                    Text(
                                      '01',
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: ScreenUtil().setSp(0.016),
                                      ),
                                    ),
                                    SizedBox(
                                      width: ScreenUtil().setWidth(10),
                                    ),
                                    SvgPicture.asset('assets/carrito/pluss.svg'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Container(
                height: ScreenUtil().setHeight(40),
                margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0XFFC4C4C4),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: ScreenUtil().setWidth(10),
                    ),
                    SvgPicture.asset('assets/carrito/tag.svg'),
                    SizedBox(
                      width: ScreenUtil().setWidth(36),
                    ),
                    Text(
                      'Código promocional',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFC4C4C4),
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: ScreenUtil().setHeight(40),
                      width: ScreenUtil().setWidth(98),
                      decoration: BoxDecoration(
                        color: Color(0XFFFFD733).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Text(
                          'Aplicar',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
                child: Divider(
                  thickness: 1,
                  color: Color(0XFFC4C4C4),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w500,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'S/330.00',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w500,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(8),
                    ),
                    Row(
                      children: [
                        Text(
                          'Descuento',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w500,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'S/00.00',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w500,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(8),
                    ),
                    Row(
                      children: [
                        Text(
                          'Costo de envío',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w500,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Por definir',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(14),
                            fontWeight: FontWeight.w400,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(8),
                    ),
                    Row(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w500,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                        Spacer(),
                        Text(
                          'S/330.00',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w700,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(19),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 700),
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return MetodoEntregaPage();
                      },
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  height: ScreenUtil().setHeight(40),
                  margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0XFF2186D0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        blurRadius: 2,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'COMPRAR',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: ScreenUtil().setSp(0.016),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(18),
              ),
            ],
          ),
        ),
      ),

      //     Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: Stack(
      //     children: [
      //       SafeArea(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Container(
      //               height: responsive.hp(6),
      //               color: Colors.white,
      //               child: Center(
      //                 child: Text(
      //                   'Carrito',
      //                   style: TextStyle(
      //                       color: Colors.black,
      //                       fontSize: responsive.ip(3),
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               child: ListView.builder(
      //                   itemCount: 10,
      //                   itemBuilder: (_, index) {
      //                     if (index == 9) {
      //                       return Container(
      //                           height: responsive.hp(15), color: Colors.white);
      //                     }
      //                     return _productoCarrito(responsive);
      //                   }),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Positioned(
      //         bottom: responsive.hp(0),
      //         left: 0,
      //         right: 0,
      //         child: Container(
      //           width: double.infinity,
      //           height: responsive.hp(18),
      //           color: Colors.transparent,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             children: [
      //               Padding(
      //                 padding: EdgeInsets.symmetric(horizontal: responsive.wp(2)),
      //                 child: Card(
      //                   elevation: 6,
      //                   child: Container(
      //                     width: double.infinity,
      //                     height: responsive.hp(7),
      //                     child: Center(
      //                       child: Text(
      //                         'Pagar S/300.0',
      //                         style: TextStyle(
      //                             fontSize: responsive.ip(2.5),
      //                             fontWeight: FontWeight.bold),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // )
    );
  }

  // Widget _productoCarrito(Responsive responsive) {
  //   return Container(
  //     width: double.infinity,
  //     height: responsive.hp(16),
  //     color: Colors.white,
  //     margin: EdgeInsets.all(responsive.ip(0.5)),
  //     padding: EdgeInsets.symmetric(
  //       horizontal: responsive.wp(5),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.end,
  //       children: [
  //         Row(
  //           //crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               width: responsive.wp(20),
  //               height: responsive.hp(10),
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(10),
  //                 child: CachedNetworkImage(
  //                   imageUrl: '$calzado',
  //                   errorWidget: (context, url, error) => Image(image: AssetImage('assets/carga_fallida.jpg'), fit: BoxFit.cover),
  //                   placeholder: (context, url) => Image(image: const AssetImage('assets/jar-loading.gif'), fit: BoxFit.cover),
  //                   imageBuilder: (context, imageProvider) => Container(
  //                     decoration: BoxDecoration(
  //                       image: DecorationImage(
  //                         image: imageProvider,
  //                         fit: BoxFit.cover,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             SizedBox(width: responsive.wp(2)),
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text('Adidas W foil Bos GT'),
  //                 Text('color: Rosado'),
  //                 Text('Talla M'),
  //                 Text(
  //                   'S/80.00',
  //                   style: TextStyle(
  //                     fontSize: 18,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             Spacer(),
  //             //iconos
  //             Container(
  //               width: responsive.wp(3),
  //               child: Icon(
  //                 Icons.delete,
  //               ),
  //             ),
  //           ],
  //         ),
  //         cantidad(responsive)
  //       ],
  //     ),
  //   );
  // }

  // Widget cantidad(Responsive responsive) {
  //   final pad = responsive.hp(1);
  //   return Padding(
  //     padding: EdgeInsets.symmetric(vertical: pad),
  //     child: Container(
  //       decoration: BoxDecoration(
  //         //border: Border.all(color: Colors.red),
  //         borderRadius: BorderRadius.circular(8),
  //       ),
  //       width: responsive.wp(50),
  //       height: responsive.hp(3.5),
  //       child: Row(
  //         mainAxisSize: MainAxisSize.min,
  //         children: <Widget>[
  //           Flexible(
  //             flex: 3,
  //             child: GestureDetector(
  //               onTap: () {
  //                 /*  _decrease();
  //                 utils.agregarAlCarritoContador(
  //                     context, widget.idSudsidiaryGood,widget.tallaProducto,widget.modeloProducto,widget.marcaProducto, _counter);
  //                */
  //               },
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   color: Colors.grey[300],
  //                   borderRadius: BorderRadius.only(
  //                     topLeft: Radius.circular(5),
  //                     bottomLeft: Radius.circular(5),
  //                   ),
  //                 ),
  //                 height: double.infinity,
  //                 child: Center(
  //                   child: Text(
  //                     "-",
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.black87,
  //                       fontSize: responsive.ip(2),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Flexible(
  //             flex: 6,
  //             child: Container(
  //               color: Colors.grey[100],
  //               height: double.infinity,
  //               child: Center(
  //                 child: Text('1 UN',
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.black87,
  //                       fontSize: responsive.ip(1.5),
  //                     )),
  //               ),
  //             ),
  //           ),
  //           Flexible(
  //             flex: 3,
  //             child: GestureDetector(
  //               onTap: () {
  //                 /* _increase();
  //                 utils.agregarAlCarritoContador(
  //                     context, widget.idSudsidiaryGood,widget.tallaProducto,widget.modeloProducto,widget.marcaProducto, _counter);

  //                  */ //utils.agregarAlCarrito(context, _counter.toString());
  //               },
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   color: Colors.grey[300],
  //                   borderRadius: BorderRadius.only(
  //                     topRight: Radius.circular(5),
  //                     bottomRight: Radius.circular(5),
  //                   ),
  //                 ),
  //                 height: double.infinity,
  //                 child: Center(
  //                   child: Text(
  //                     "+",
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.black87,
  //                       fontSize: responsive.ip(2),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
