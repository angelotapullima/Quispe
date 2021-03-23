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
      body: Stack(
        children: [
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
                page=index;
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
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.wp(4),
                        ),
                        child: Text(
                          'Deslizar hacia arriba para conocer nuestros servicios',
                          style: TextStyle(color: Colors.white,fontSize: responsive.ip(1.8)),
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
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.wp(4),
                        ),
                        child: Text(
                          'Deslizar hacia arriba para conocer nuestros productos',
                          style: TextStyle(color: Colors.white,fontSize: responsive.ip(1.8)),
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

                if(update.primaryDelta<-7){
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
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsive.wp(4),
                        ),
                        child: Text(
                          'Deslizar hacia arriba para conocer nuestros productos',
                          style: TextStyle(color: Colors.white,fontSize: responsive.ip(1.8)),
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
