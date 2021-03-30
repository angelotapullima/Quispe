import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/utils/customCacheManager.dart';
import 'package:quispe_ui/utils/responsive.dart';

class AgregarcarritoFerreteria extends StatefulWidget {
  final String urlImage;
  const AgregarcarritoFerreteria({Key key, @required this.urlImage})
      : super(key: key);

  @override
  _AgregarcarritoState createState() => _AgregarcarritoState();
}

class _AgregarcarritoState extends State<AgregarcarritoFerreteria>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animationButton1;
  Animation _animationMovementIn;
  Animation _animationMovementOut;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _animationButton1 = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.3),
      ),
    );
    _animationMovementIn = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.45, 0.6),
      ),
    );
    _animationMovementOut = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.6, 1.0, curve: Curves.elasticIn),
      ),
    );

    Future<void>.delayed(Duration(milliseconds: 700), () {
      _controller.forward();
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //Navigator.pop(context);
        /* Navigator.of(context)
            .pushNamedAndRemoveUntil('home', (Route<dynamic> route) => false); */
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Material(
      color: Colors.transparent,
      child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final buttonSize = (responsive.wp(30) * _animationButton1.value).clamp(
              responsive.ip(6),
              responsive.wp(30),
            );
            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.black.withOpacity(.8),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      (_animationMovementIn.value != 1)
                          ? Positioned(
                              top: responsive.hp(45) +
                                  (_animationMovementIn.value),
                              left: responsive.wp(50) -
                                  (responsive.wp(100) * _animationButton1.value)
                                          .clamp(responsive.ip(6),
                                              responsive.wp(100)) /
                                      2,
                              width:
                                  (responsive.wp(100) * _animationButton1.value)
                                      .clamp(
                                responsive.ip(6),
                                responsive.wp(100),
                              ),
                              child: buildPanel(responsive),
                            )
                          : Positioned(
                              bottom: responsive.hp(45),
                              left: responsive.wp(50) +
                                  (_animationMovementOut.value * 100),
                              child: TweenAnimationBuilder(
                                duration: Duration(milliseconds: 600),
                                curve: Curves.easeIn,
                                tween: Tween(begin: 0.0, end: 1.0),
                                builder: (context, value, child) {
                                  return Transform.translate(
                                      offset: Offset(
                                        value * responsive.hp(25),
                                        0.0,
                                      ),
                                      child: child);
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    _controller.forward();
                                  },

                                  //ancho del boton == responsive.wp(30)
                                  //ancho del circular == responsive.wp(10)
                                  child: Container(
                                    width: buttonSize,
                                    height: (responsive.hp(5) *
                                            _animationButton1.value)
                                        .clamp(
                                      responsive.ip(6),
                                      responsive.wp(30),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: responsive.hp(.5),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius:
                                          BorderRadiusDirectional.circular(100),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.white,
                                          ),
                                        ),
                                        if (_animationButton1.value == 1) ...[
                                          SizedBox(
                                            width: responsive.wp(2),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Text(
                                              'Cesta',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: responsive.ip(2),
                                              ),
                                            ),
                                          )
                                        ]
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
                /* (_animationMovementIn.value == 1)
                    ? (_animationMovementOut.value != 1)
                        ? Container(
                            margin: EdgeInsets.only(
                              top: responsive.hp(60),
                            ),
                            height: double.infinity,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/quispe_logo.png',
                                  height: responsive.hp(10),
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'Gracias Por tu Compra',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: responsive.ip(3),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container()
                    : Container(), */
                (_animationMovementOut.value == 1)
                    ? Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: responsive.wp(4),
                            vertical: responsive.hp(32)),
                        height: responsive.hp(30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: responsive.hp(4),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: responsive.wp(5),
                                ),
                                Container(
                                  width: responsive.ip(8),
                                  height: responsive.ip(8),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CachedNetworkImage(
                                      cacheManager: CustomCacheManager(),
                                      placeholder: (context, url) => Image(
                                          image: AssetImage(
                                              'assets/jar-loading.gif'),
                                          fit: BoxFit.cover),
                                      errorWidget: (context, url, error) =>
                                          Image(
                                              image: AssetImage(
                                                  'assets/carga_fallida.jpg'),
                                              fit: BoxFit.cover),
                                      imageUrl: widget.urlImage,
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: responsive.wp(5),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        'Pack x3 Focos LED Ecohome',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: responsive.ip(2),
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: responsive.hp(1),
                                      ),
                                      Text(
                                        '1 Und',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: responsive.ip(2),
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        'S/ 30.00',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: responsive.ip(2),
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: responsive.hp(4),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: responsive.wp(5),
                                ),
                                height: responsive.hp(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text('Seguir Comprando'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsive.hp(1),
                            ),
                            InkWell(
                              onTap: () {
                                final buttonBloc =
                                    ProviderBloc.homeComercial(context);
                                buttonBloc.changePage(3);
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: responsive.wp(5),
                                ),
                                height: responsive.hp(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text('Ver el Carrito'),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
              ],
            );
          }),
    );
  }

  Widget buildPanel(Responsive responsive) {
    final buttonSize = (responsive.wp(30) * _animationButton1.value).clamp(
      responsive.ip(6),
      responsive.wp(30),
    );

    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 600),
      curve: Curves.easeIn,
      tween: Tween(begin: 1.0, end: 0.0),
      builder: (context, value, child) {
        return Transform.translate(
            offset: Offset(
              0.0,
              value * responsive.hp(55),
            ),
            child: child);
      },
      child: Container(
        height: (responsive.hp(55) * _animationButton1.value)
            .clamp(responsive.ip(6), responsive.hp(55)),
        width: (responsive.wp(100) * _animationButton1.value)
            .clamp(responsive.ip(6), responsive.wp(100)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: (_animationButton1.value == 1)
                ? Radius.circular(0)
                : Radius.circular(30),
            bottomRight: (_animationButton1.value == 1)
                ? Radius.circular(0)
                : Radius.circular(30),
          ),
        ),
        child: (_animationButton1.value == 1)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: (responsive.hp(25) * _animationButton1.value)
                            .clamp(responsive.ip(4.5), responsive.hp(25)),
                        width: (responsive.wp(35) * _animationButton1.value)
                            .clamp(responsive.ip(4.5), responsive.wp(35)),
                        child: Stack(
                          children: [
                            Container(
                              child: CachedNetworkImage(
                                cacheManager: CustomCacheManager(),
                                placeholder: (context, url) => Image(
                                    image: AssetImage('assets/jar-loading.gif'),
                                    fit: BoxFit.cover),
                                errorWidget: (context, url, error) => Image(
                                    image:
                                        AssetImage('assets/carga_fallida.jpg'),
                                    fit: BoxFit.cover),
                                imageUrl: widget.urlImage,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Container(
                width: buttonSize,
                height: (responsive.hp(5) * _animationButton1.value).clamp(
                  responsive.ip(6),
                  responsive.wp(30),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: responsive.hp(.5),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.circular(100),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                    if (_animationButton1.value == 1) ...[
                      SizedBox(
                        width: responsive.wp(2),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Cesta',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: responsive.ip(2),
                          ),
                        ),
                      )
                    ]
                  ],
                ),
              ),
      ),
    );
  }
}
