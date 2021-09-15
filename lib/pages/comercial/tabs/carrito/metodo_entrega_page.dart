import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quispe_ui/pages/comercial/tabs/carrito/metodo_pago_page.dart';

class MetodoEntregaPage extends StatefulWidget {
  const MetodoEntregaPage({Key key}) : super(key: key);

  @override
  _MetodoEntregaPageState createState() => _MetodoEntregaPageState();
}

class _MetodoEntregaPageState extends State<MetodoEntregaPage> {
  final TextEditingController direccion = TextEditingController();
  final TextEditingController telefono = TextEditingController();
  final TextEditingController distrito = TextEditingController();
  @override
  void initState() {
    direccion.text = 'Ricardo Palma N° 132';
    telefono.text = '912 456 789';
    distrito.text = 'Iquitos';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
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
                      'assets/carrito/entregaStep.svg',
                      fit: BoxFit.cover,
                      height: ScreenUtil().setHeight(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(180),
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
                          'Método de entrega',
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
                          'Seleccione una opción',
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
                        //height: ScreenUtil().setHeight(120),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0XFF8DD433), width: 2),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dirección de envío',
                                    style: TextStyle(
                                      color: Color(0XFF8DD433),
                                      fontSize: ScreenUtil().setSp(16),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: ScreenUtil().setSp(0.016),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(24),
                                  ),
                                  Container(
                                    height: ScreenUtil().setHeight(35),
                                    child: TextField(
                                      controller: direccion,
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        prefixStyle: TextStyle(
                                          fontSize: ScreenUtil().setSp(14),
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: ScreenUtil().setSp(0.016),
                                        ),
                                        prefixText: 'Domicilio: ',
                                        suffixIcon: Icon(
                                          Icons.keyboard,
                                          color: Color(0XFFD1D1D1),
                                        ),
                                        hintText: 'Ricardo Palma N° 132',
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: ScreenUtil().setSp(0.016),
                                            fontStyle: FontStyle.normal),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        border: InputBorder.none,
                                      ),
                                      style: GoogleFonts.poppins(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: ScreenUtil().setSp(0.016),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: ScreenUtil().setHeight(35),
                                    child: TextField(
                                      controller: distrito,
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        prefixStyle: TextStyle(
                                          fontSize: ScreenUtil().setSp(14),
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: ScreenUtil().setSp(0.016),
                                        ),
                                        prefixText: 'Distrito: ',
                                        suffixIcon: Icon(
                                          Icons.keyboard,
                                          color: Color(0XFFD1D1D1),
                                        ),
                                        hintText: 'Iquitos',
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: ScreenUtil().setSp(0.016),
                                            fontStyle: FontStyle.normal),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        border: InputBorder.none,
                                      ),
                                      style: GoogleFonts.poppins(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: ScreenUtil().setSp(0.016),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: ScreenUtil().setHeight(35),
                                    child: TextField(
                                      controller: telefono,
                                      maxLines: 1,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        prefixStyle: TextStyle(
                                          fontSize: ScreenUtil().setSp(14),
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: ScreenUtil().setSp(0.016),
                                        ),
                                        prefixText: 'Teléfono: ',
                                        suffixIcon: Icon(
                                          Icons.keyboard,
                                          color: Color(0XFFD1D1D1),
                                        ),
                                        hintText: ' 912 456 789',
                                        hintStyle: GoogleFonts.poppins(
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: ScreenUtil().setSp(0.016),
                                            fontStyle: FontStyle.normal),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        border: InputBorder.none,
                                      ),
                                      style: GoogleFonts.poppins(
                                        fontSize: ScreenUtil().setSp(14),
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: ScreenUtil().setSp(0.016),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: ScreenUtil().setHeight(8),
                                    ),
                                    Container(
                                      child: SvgPicture.asset(
                                        'assets/carrito/selectOption.svg',
                                        fit: BoxFit.cover,
                                        height: ScreenUtil().setHeight(30),
                                      ),
                                    ),
                                  ],
                                ),
                              )
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
                        height: ScreenUtil().setHeight(120),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0XFFC4C4C4), width: 2),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Recoger en tienda',
                                    style: TextStyle(
                                      color: Color(0XFF808080),
                                      fontSize: ScreenUtil().setSp(16),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: ScreenUtil().setSp(0.016),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(8),
                                  ),
                                  Text(
                                    'Domicilio: Jirón Próspero N° 935',
                                    style: TextStyle(
                                      color: Color(0XFF808080),
                                      fontSize: ScreenUtil().setSp(14),
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: ScreenUtil().setSp(0.016),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(8),
                                  ),
                                  Text(
                                    'Distrito: Iquitos',
                                    style: TextStyle(
                                      color: Color(0XFF808080),
                                      fontSize: ScreenUtil().setSp(14),
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: ScreenUtil().setSp(0.016),
                                    ),
                                  ),
                                  SizedBox(
                                    height: ScreenUtil().setHeight(8),
                                  ),
                                  Text(
                                    'Teléfono: 065 22 55 66',
                                    style: TextStyle(
                                      color: Color(0XFF808080),
                                      fontSize: ScreenUtil().setSp(14),
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: ScreenUtil().setSp(0.016),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SizedBox(
                                    height: ScreenUtil().setHeight(8),
                                  ),
                                  Container(
                                    child: SvgPicture.asset(
                                      'assets/carrito/unSelect.svg',
                                      fit: BoxFit.cover,
                                      height: ScreenUtil().setHeight(30),
                                    ),
                                  ),
                                ],
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
                              'AGREGAR NUEVA DIRECCIÓN ',
                              style: TextStyle(
                                color: Color(0XFF2186D0),
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w400,
                                letterSpacing: ScreenUtil().setSp(0.016),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              FontAwesomeIcons.plus,
                              color: Color(0XFF2186D0),
                              size: ScreenUtil().setSp(14),
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 0.5,
                    blurRadius: 3,
                    offset: Offset(0, -1),
                  ),
                ],
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
                        return MetodoPagoPage();
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
                      'CONTINUAR',
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
