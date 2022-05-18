import 'package:flutter/material.dart';
import 'package:quispe_ui/pages/comercial/splash_quispe.dart';
import 'package:quispe_ui/pages/ferreteria/splash_ferreteria.dart';
import 'package:quispe_ui/pages/fundo/splash_fundo.dart';
import 'package:quispe_ui/utils/responsive.dart';

class InicioQuispe extends StatefulWidget {
  const InicioQuispe({Key? key}) : super(key: key);

  @override
  _InicioQuispeState createState() => _InicioQuispeState();
}

class _InicioQuispeState extends State<InicioQuispe> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: responsive.hp(10),
            left: 0,
            right: 0,
            child: Container(
              height: responsive.hp(25),
              color: Colors.white,
              child: Image.asset(
                'assets/quispe_logo.png',
              ),
            ),
          ),
          Positioned(
            top: responsive.hp(30),
            left: 0,
            right: 0,
            child: ClipPath(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return SplashQuispe();
                        },
                        transitionDuration: Duration(milliseconds: 800),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeInCubic, parent: animation);
                          return Align(
                            child: SizeTransition(
                              sizeFactor: animation,
                              child: child,
                              axisAlignment: 0.0,
                            ),
                          );
                        }),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: responsive.hp(40),
                  color: Colors.green,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/quispe_splash.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.yellow[700]!.withOpacity(.6),
                        child: Center(
                          child: Text(
                            'Centro Comercial Quispe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: responsive.ip(4),
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 2.0,
                                  color: Colors.grey[500]!,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              clipper: MyClipper(),
            ),
          ),
          Positioned(
            top: responsive.hp(50),
            left: 0,
            right: 0,
            child: ClipPath(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return SplashFerreteria();
                        },
                        transitionDuration: Duration(milliseconds: 800),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeInCubic, parent: animation);
                          return Align(
                            child: SizeTransition(
                              sizeFactor: animation,
                              child: child,
                              axisAlignment: 0.0,
                            ),
                          );
                        }),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: responsive.hp(40),
                  color: Colors.green,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/ferro_back.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.green.withOpacity(.8),
                        child: Center(
                          child: Text(
                            'Ferrocentro',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: responsive.ip(4),
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 2.0,
                                  color: Colors.grey[500]!,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              clipper: MyClipper(),
            ),
          ),
          Positioned(
            top: responsive.hp(70),
            left: 0,
            right: 0,
            child: ClipPath(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder: (context, animation, anotherAnimation) {
                          return SplashFundo();
                        },
                        transitionDuration: Duration(milliseconds: 800),
                        transitionsBuilder: (context, animation, anotherAnimation, child) {
                          animation = CurvedAnimation(curve: Curves.easeInCubic, parent: animation);
                          return Align(
                            child: SizeTransition(
                              sizeFactor: animation,
                              child: child,
                              axisAlignment: 0.0,
                            ),
                          );
                        }),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: responsive.hp(40),
                  color: Colors.green,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/home2.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Color(0xff00b3fa).withOpacity(.8),
                        child: Center(
                          child: Text(
                            'El Fundo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: responsive.ip(4),
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 2.0,
                                  color: Colors.grey[500]!,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              clipper: MyClipper(),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(00, size.height * 0.3);
    path.lineTo(00, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0);
    path.quadraticBezierTo(size.width * 0.98, size.height * 0.18, size.width * 0.85, size.height * 0.2);
    path.lineTo(size.width * 0.28, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.012, size.height * 0.18, 0, size.height * 0.4);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
