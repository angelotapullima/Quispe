import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/pages/fundo/detalle_fundo.dart';
import 'package:quispe_ui/utils/responsive.dart';

class HomeFundoPage extends StatefulWidget {
  const HomeFundoPage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeFundoPage> {
  int page = 0;

  final _pageController = PageController(viewportFraction: 1, initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: [CanchaSintetica()],
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

class CanchaSintetica extends StatelessWidget {
  const CanchaSintetica({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            'assets/home2.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(.5),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/fundo_logo.png',
                      height: responsive.hp(13),
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: responsive.wp(2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Piscinas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: responsive.ip(5),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: responsive.wp(4),
                  ),
                  child: Text(
                    'Información',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: responsive.ip(1.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: responsive.hp(2),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: responsive.wp(4),
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: responsive.ip(1.2),
                    ),
                  ),
                ),
                SizedBox(
                  height: responsive.hp(2),
                ),
                Row(
                  children: [
                    Spacer(),
                    Icon(FontAwesomeIcons.heart, color: Colors.white),
                    Text(
                      '20',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: responsive.ip(2),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: responsive.wp(5),
                    ),
                    Icon(FontAwesomeIcons.comment, color: Colors.white),
                    Text(
                      '20',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: responsive.ip(2),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: responsive.hp(4)),
                Container(
                  child: Center(
                    child: Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Colors.white,
                      size: responsive.ip(3),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: responsive.wp(4),
                  ),
                  child: Center(
                    child: Text(
                      'Deslizar hacia arriba',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: responsive.ip(1.8),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: responsive.hp(3),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                print('puta mare');
                /*  Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return DetalleFundo();
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
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
                  ),
                ); */
              },
              onVerticalDragUpdate: (update) {

                  print(update.primaryDelta);
                if (update.primaryDelta > -10) {
                  print(update.primaryDelta);

                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return DetalleFundo2();
                      },
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
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
                    ),
                  );
                }
                
              },
              child: Container(
                height: responsive.hp(50),
                width: double.infinity,
                color: Colors.white.withOpacity(.01),
              ),
            ),
          )
        ],
      ),
    );
  }
}
