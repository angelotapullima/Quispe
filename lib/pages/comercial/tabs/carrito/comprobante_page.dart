import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ComprobantePage extends StatelessWidget {
  const ComprobantePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24)),
                child: Column(
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFC4C4C4),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            iconSize: ScreenUtil().setSp(24),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xFFC4C4C4),
                          child: IconButton(
                            icon: Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                            ),
                            iconSize: ScreenUtil().setSp(24),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),
                    _details()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _fondo() {
  //   return Container(
  //     height: double.infinity,
  //     width: double.infinity,
  //     child: SvgPicture.asset(
  //       'assets/reservas/fondoTicket.svg',
  //       height: double.infinity,
  //       width: double.infinity,
  //       fit: BoxFit.cover,
  //     ),
  //   );
  // }

  Widget _details() {
    return Column(
      children: [
        Container(
          //height: ScreenUtil().setHeight(20),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(24),
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
                height: ScreenUtil().setHeight(16),
              ),
              Text(
                'OPERACIÓN',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(16),
                  fontWeight: FontWeight.w700,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0XFF2186D0),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'N° pedido',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(12),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Text(
                        '011508450',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'F pedido',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(12),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Text(
                        '03/09/2021',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cliente',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(12),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Text(
                        'Angelo Tapullima',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DNI',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(12),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Text(
                        '71124578',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                'Número de contacto',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0xFFC4C4C4),
                ),
              ),
              Text(
                '912 456 789',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                'Dirección',
                style: GoogleFonts.poppins(
                    fontSize: ScreenUtil().setSp(12),
                    fontWeight: FontWeight.w500,
                    letterSpacing: ScreenUtil().setSp(0.016),
                    color: Color(0xFFC4C4C4)),
              ),
              Text(
                'Ricardo Palma N° 132 - Iquitos',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                'Método de pago',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0xFFC4C4C4),
                ),
              ),
              Text(
                'VISA',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                'Cantidad de paquetes',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0xFFC4C4C4),
                ),
              ),
              Text(
                '3',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              SizedBox(
                height: ScreenUtil().setHeight(20),
                width: ScreenUtil().setWidth(10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)), color: Color(0xFFF7F7F7)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Flex(
                        children: List.generate(
                            (constraints.constrainWidth() / 10).floor(),
                            (index) => SizedBox(
                                  height: ScreenUtil().setHeight(1),
                                  width: ScreenUtil().setWidth(5),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(color: Color(0xFF808080)),
                                  ),
                                )),
                        direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
                width: ScreenUtil().setWidth(10),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)), color: Color(0xFFF7F7F7)),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(16),
              ),
              Text(
                'IMPORTES',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(16),
                  fontWeight: FontWeight.w700,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0XFF2186D0),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                'Lentes de sol RAY BAN, Talla U x 01',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0xFFC4C4C4),
                ),
              ),
              Text(
                'S/150.00',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                'Polo GZUCK, Talla M x 01',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0xFFC4C4C4),
                ),
              ),
              Text(
                'S/65.00',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
              Text(
                'Pantalón GZUCK CREW, Talla 28 x 01',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(12),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                  color: Color(0xFFC4C4C4),
                ),
              ),
              Text(
                'S/115.00',
                style: GoogleFonts.poppins(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500,
                  letterSpacing: ScreenUtil().setSp(0.016),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)),
          height: ScreenUtil().setHeight(1),
          width: double.infinity,
          color: Color(0xFFC4C4C4),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16)),
          width: double.infinity,
          decoration:
              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Costo de envío',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(12),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Text(
                        'S/10',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(12),
                          fontWeight: FontWeight.w500,
                          letterSpacing: ScreenUtil().setSp(0.016),
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Text(
                        'S/340.00',
                        style: GoogleFonts.poppins(
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w600,
                          letterSpacing: ScreenUtil().setSp(0.016),
                          color: Color(0XFF2186D0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
            ],
          ),
        )
      ],
    );
  }
}
