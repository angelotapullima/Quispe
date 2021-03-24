import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quispe_ui/utils/responsive.dart';

class SeleccionInicial extends StatefulWidget {
  const SeleccionInicial({Key key}) : super(key: key);

  @override
  _SeleccionInicialState createState() => _SeleccionInicialState();
}

class _SeleccionInicialState extends State<SeleccionInicial> {
  int page = 0;

  final _pageController = PageController(viewportFraction: 1, initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          /* Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
          ),
          height: responsive.hp(40),
          child: Center(
            child: Image.asset(
              'assets/quispe_logo.png',
              height: responsive.hp(25),
            ),
          ),
        ),
        SizedBox(
          height: responsive.hp(2),
        ),
        ContainerItem(responsive: responsive,color: Colors.red,titulo:'Centro Comercial'),
        SizedBox(
          height: responsive.hp(2),
        ),
        ContainerItem(responsive: responsive,color: Colors.green,titulo: 'Ferretería',),
        SizedBox(
          height: responsive.hp(2),
        ),
        ContainerItem(responsive: responsive,color: Colors.yellow[700],titulo:'Fundo'),
      ],
    ) */

          Stack(
        children: [
          /*  Positioned(
            top: responsive.hp(30),
                      child: Container(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
        ),
          ), */

          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [
              QuispeInicio(),
              FerroQuispe(),
              FundoQuispe(),
            ],
            onPageChanged: (index) {
              setState(() {
                page = index;
              });
            },
          ),
          Center(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white, size: 37),
                    onPressed: () {
                      if (page == 0) {
                      } else {
                        setState(() {
                          _pageController.jumpToPage(page - 1);
                          page--;
                          print(page);
                        });
                      }
                    }),
                Spacer(),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 37),
                    onPressed: () {
                      if (page == 2) {
                      } else {
                        setState(() {
                          _pageController.jumpToPage(page + 1);
                          page++;
                          print(page);
                        });
                      }
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContainerItem extends StatelessWidget {
  final Color color;
  final String titulo;
  const ContainerItem({
    Key key,
    @required this.responsive,
    @required this.color,
    @required this.titulo,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsive.hp(15),
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: responsive.wp(2),
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: ExactAssetImage('assets/quispe_back.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Container(
                  color: color.withOpacity(.8),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'Centro Comercial',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: responsive.ip(3),
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    //draw arc

    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.2, size.height * 0.5, size.width / 2, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.05, size.width, size.height * 0.25);

    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class FundoQuispe extends StatelessWidget {
  const FundoQuispe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Stack(
      children: [
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage('assets/splash.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.white.withOpacity(0.0),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(.2),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(5),
            ),
            child: Image.asset(
              'assets/fundo_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: responsive.hp(50),
            child: GestureDetector(
              onVerticalDragUpdate: (update) {
                print(update.primaryDelta);
                Navigator.pushNamed(context, 'homeFundo');
              },
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_up_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.wp(4),
                        ),
                        child: Text(
                          'Deslizar hacia arriba para conocer nuestros servicios',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: responsive.ip(1.8)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: responsive.hp(7),
                      )
                    ],
                  ),
                  Container(
                    height: responsive.hp(50),
                    color: Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class FerroQuispe extends StatelessWidget {
  const FerroQuispe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Stack(
      children: [
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage('assets/quispe_back.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.white.withOpacity(0.0),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(.2),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(10),
            ),
            child: Image.asset(
              'assets/ferro_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: responsive.hp(50),
            child: GestureDetector(
              onVerticalDragUpdate: (update) {
                print(update.primaryDelta);
                Navigator.pushNamed(context, 'homeFerreteria');
              },
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_up_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.wp(4),
                        ),
                        child: Text(
                          'Deslizar hacia arriba para conocer nuestros productos',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: responsive.ip(1.8)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: responsive.hp(7),
                      )
                    ],
                  ),
                  Container(
                    height: responsive.hp(50),
                    color: Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class QuispeInicio extends StatelessWidget {
  const QuispeInicio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Stack(
      children: [
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage('assets/quispe_back.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.white.withOpacity(0.0),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white.withOpacity(.2),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(10),
            ),
            child: Image.asset(
              'assets/quispe_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: responsive.hp(50),
            child: GestureDetector(
              onVerticalDragUpdate: (update) {
                print(update.primaryDelta);

                if (update.primaryDelta < -7) {
                  Navigator.pushNamed(context, 'homeComercial');
                }
              },
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_up_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.wp(4),
                        ),
                        child: Text(
                          'Deslizar hacia arriba para conocer nuestros productos',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: responsive.ip(1.8)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: responsive.hp(7),
                      )
                    ],
                  ),
                  Container(
                    height: responsive.hp(50),
                    color: Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
