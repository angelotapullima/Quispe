import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/utils/responsive.dart';

class SplashQuispe extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashQuispe> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final buttonBloc = ProviderBloc.homeComercial(context);
      buttonBloc.changePage(0);
      Future.delayed(Duration(milliseconds: 1500), () {
        Navigator.pushReplacementNamed(context, 'homeComercial'); //home
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Theme.of(context).brightness,
        statusBarColor: Colors.transparent,
      ),
    );

    final responsive = Responsive.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/quispe_splash.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Positioned(
            bottom: responsive.hp(10),
            left: responsive.wp(4),
            right: 0,
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.yellow[800], fontSize: responsive.ip(5), fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),

      /* Stack(
        children: <Widget>[
          Image.asset(
            'assets/quispe_splash.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          /* Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: responsive.ip(20),
                ),
                SizedBox(
                  height: responsive.hp(2.5),
                ),
                SizedBox(
                  height: responsive.hp(1.5),
                ),
                Text(
                  'Cargando',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: responsive.ip(1.8), color: Colors.white),
                ),
                /* StreamBuilder(
                    stream: porcentajeBloc.procentajeStream,
                    builder: (context, snapshot) {
                      double porcentaje2 = porcentajeBloc.procentaje;
                      int porcentaje = 0;
                      if (porcentaje2 != null) {
                        porcentaje = porcentaje2.toInt();
                      }

                      return Text(
                        '$porcentaje%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: responsive.ip(1.8), color: Colors.white),
                      );
                    })*/
              ],
            ),
          ),
         */],
      ), */
    );
  }
}
