import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/pages/comercial/tabs/carrito/detalle_pedido_page.dart';

class MetodoPagoPage extends StatelessWidget {
  const MetodoPagoPage({Key key}) : super(key: key);

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
                    child: BackButton(),
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
                        'assets/carrito/pagoStep.svg',
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
            top: ScreenUtil().setHeight(200),
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
                        child: Text(
                          'Método de pago',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.w700,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(8),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Text(
                          'Seleccione un método de pago',
                          style: TextStyle(
                            color: Color(0XFF808080),
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w400,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        height: ScreenUtil().setHeight(164),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0XFF8DD433), width: 2),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tarjeta principal',
                                    style: TextStyle(
                                      color: Color(0XFF8DD433),
                                      fontSize: ScreenUtil().setSp(16),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: ScreenUtil().setSp(0.016),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(8),
                                  ),
                                  Text(
                                    '4551 **** **** 9075',
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(14),
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: ScreenUtil().setSp(0.016),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(8),
                                  ),
                                  Container(
                                    height: ScreenUtil().setHeight(23),
                                    width: ScreenUtil().setWidth(69),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Text(
                                            'CVV',
                                            style: TextStyle(
                                              color: Color(0XFF808080),
                                              fontSize: ScreenUtil().setSp(16),
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: ScreenUtil().setSp(0.016),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: ScreenUtil().setHeight(1),
                                          width: ScreenUtil().setWidth(69),
                                          color: Color(0XFFC4C4C4),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    child: Image.asset(
                                      'assets/carrito/visa.png',
                                      fit: BoxFit.cover,
                                      height: ScreenUtil().setHeight(30),
                                      width: ScreenUtil().setWidth(54),
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    child: SvgPicture.asset(
                                      'assets/carrito/selectOption.svg',
                                      fit: BoxFit.cover,
                                      height: ScreenUtil().setHeight(30),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Eliminar',
                                    style: TextStyle(
                                      color: Color(0XFF8DD433),
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
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(16),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        height: ScreenUtil().setHeight(57),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0XFFC4C4C4), width: 2),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              SizedBox(
                                width: ScreenUtil().setWidth(8),
                              ),
                              Container(
                                child: Image.asset(
                                  'assets/carrito/master.png',
                                  fit: BoxFit.cover,
                                  height: ScreenUtil().setHeight(30),
                                  width: ScreenUtil().setWidth(54),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(8),
                              ),
                              Text(
                                '5278 **** **** 2147',
                                style: TextStyle(
                                  color: Color(0XFF808080),
                                  fontSize: ScreenUtil().setSp(14),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: ScreenUtil().setSp(0.016),
                                ),
                              ),
                              Spacer(),
                              Container(
                                child: SvgPicture.asset(
                                  'assets/carrito/unSelect.svg',
                                  fit: BoxFit.cover,
                                  height: ScreenUtil().setHeight(30),
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(8),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(20),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        height: ScreenUtil().setHeight(40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0XFF2186D0), width: 2),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
                            ),
                            Text(
                              'AGREGAR NUEVA TARJETA ',
                              style: TextStyle(
                                color: Color(0XFF2186D0),
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w400,
                                letterSpacing: ScreenUtil().setSp(0.016),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              FontAwesomeIcons.creditCard,
                              color: Color(0XFF2186D0),
                              size: ScreenUtil().setSp(16),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
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
                          'Comprobante de pago',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.w700,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(8),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Text(
                          'Seleccione un tipo de comprobante',
                          style: TextStyle(
                            color: Color(0XFF808080),
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w400,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        height: ScreenUtil().setHeight(53),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0XFF8DD433), width: 2),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
                            ),
                            Text(
                              'Boleta',
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w600,
                                letterSpacing: ScreenUtil().setSp(0.016),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: SvgPicture.asset(
                                'assets/carrito/selectOption.svg',
                                fit: BoxFit.cover,
                                height: ScreenUtil().setHeight(30),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(16),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        height: ScreenUtil().setHeight(53),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0XFFC4C4C4), width: 2),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
                            ),
                            Text(
                              'Factura',
                              style: TextStyle(
                                color: Color(0XFFC4C4C4),
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w600,
                                letterSpacing: ScreenUtil().setSp(0.016),
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: SvgPicture.asset(
                                'assets/carrito/unSelect.svg',
                                fit: BoxFit.cover,
                                height: ScreenUtil().setHeight(30),
                              ),
                            ),
                            SizedBox(
                              width: ScreenUtil().setWidth(16),
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
                          'Dirección de entrega',
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(18),
                            fontWeight: FontWeight.w700,
                            letterSpacing: ScreenUtil().setSp(0.016),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(8),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24),
                        ),
                        child: Text(
                          'Tu orden se enviará a esta dirección',
                          style: TextStyle(
                            color: Color(0XFF808080),
                            fontSize: ScreenUtil().setSp(16),
                            fontWeight: FontWeight.w400,
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
                            Text('Domicilio: Ricardo Palma N° 132'),
                            SizedBox(
                              height: ScreenUtil().setHeight(8),
                            ),
                            Text('Distrito: Iquitos'),
                            SizedBox(
                              height: ScreenUtil().setHeight(8),
                            ),
                            Text('Teléfono: 912 456 789'),
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
                                  'Consto de envío',
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
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 700),
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return DetallePedido();
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
                      'GENERAR PEDIDO',
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
