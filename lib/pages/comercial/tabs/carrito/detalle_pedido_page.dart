import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/Models/Comercial/carrito_data.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/pages/comercial/tabs/carrito/comprobante_page.dart';

class DetallePedido extends StatelessWidget {
  const DetallePedido({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        final bottomBloc = ProviderBloc.homeComercial(context);
                        bottomBloc.changePage(0);
                      },
                      icon: Icon(
                        FontAwesomeIcons.times,
                        size: ScreenUtil().setSp(20),
                        color: Color(0XFF5A5A5A),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Image.asset(
                        'assets/quispe_logo.png',
                        fit: BoxFit.cover,
                        height: ScreenUtil().setHeight(60),
                        width: ScreenUtil().setWidth(60),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Center(
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/carrito/detalleStep.svg',
                        fit: BoxFit.cover,
                        height: ScreenUtil().setHeight(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(185),
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                'assets/carrito/coffeti.svg',
                                fit: BoxFit.cover,
                                height: ScreenUtil().setHeight(24),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
                            ),
                            Text(
                              'COMPRA EXITOSA',
                              style: TextStyle(
                                color: Color(0XFF2186D0),
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w700,
                                letterSpacing: ScreenUtil().setSp(0.016),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
                            ),
                            Container(
                              child: SvgPicture.asset(
                                'assets/carrito/coffeti.svg',
                                fit: BoxFit.cover,
                                height: ScreenUtil().setHeight(24),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(16),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Text(
                          'Detalles de compra',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.w700,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(16),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Número de pedido',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '011508450',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
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
                                  'Fecha del pedido',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '03/09/2021',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
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
                                  'Cantidad de',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'paquetes',
                              style: TextStyle(
                                color: Color(0XFF808080),
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w400,
                                letterSpacing: ScreenUtil().setSp(0.016),
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(8),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Método de pago',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Visa',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
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
                                  'Estado',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Por entregar',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                              ],
                            ),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Text(
                          'Detalle de entrega',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.w700,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Row(
                            //   children: [
                            //     Text(
                            //       'Angelo Tapullima',
                            //       style: TextStyle(
                            //         fontSize: ScreenUtil().setSp(16),
                            //         fontWeight: FontWeight.w600,
                            //         letterSpacing: ScreenUtil().setSp(0.016),
                            //       ),
                            //     ),
                            //     Spacer(),
                            //     Text(
                            //       '71124578',
                            //       style: TextStyle(
                            //         color: Color(0XFF808080),
                            //         fontSize: ScreenUtil().setSp(16),
                            //         fontWeight: FontWeight.w400,
                            //         letterSpacing: ScreenUtil().setSp(0.016),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            Row(
                              children: [
                                Text(
                                  'Cliente',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Angelo Tapullima',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
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
                                  'DNI',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '71124578',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
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
                                  'Dirección',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Ricardo Palma',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  'N° 132',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  'Iquitos',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
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
                                  'Teléfono',
                                  style: TextStyle(
                                    color: Color(0XFF808080),
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '912 456 789',
                                  style: TextStyle(
                                    fontSize: ScreenUtil().setSp(16),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: ScreenUtil().setSp(0.016),
                                  ),
                                ),
                              ],
                            ),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Text(
                          'Lista de productos',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.w700,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Text(
                          '3 paquetes',
                          style: TextStyle(
                            color: Color(0XFF808080),
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.w400,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
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
                                        Text(
                                          'S/${productos[index]["precio"]}',
                                          style: TextStyle(
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: ScreenUtil().setSp(0.016),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                      SizedBox(
                        height: ScreenUtil().setHeight(100),
                      )
                    ],
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
              height: ScreenUtil().setHeight(80),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                  final bottomBloc = ProviderBloc.homeComercial(context);
                  bottomBloc.changePage(0);
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 700),
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return ComprobantePage();
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
                  margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24), vertical: ScreenUtil().setHeight(16)),
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
                      'DESCARGAR COMPROBANTE',
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
            ),
          ),
        ],
      ),
    );
  }
}
