import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(Duration(milliseconds: 200), () {
        Navigator.pushReplacementNamed(context, 'inicio'); //home
      });
      /*  final preferences = Preferences();
    final configuracionApi = ConfiguracionApi(); 

      if (preferences.cargaCategorias == null) {
        await configuracionApi.obtenerConfiguracion();
        preferences.cargaCategorias = 'paso';
      } else {
        configuracionApi.obtenerConfiguracion();
      }

      if (preferences.personName != null) {
        Navigator.pushReplacementNamed(context, 'home'); //home
      } else {
        Navigator.pushReplacementNamed(context, 'login'); //login
      }*/
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

    //final responsive = Responsive.of(context);

    return Scaffold(
      body: Image.asset(
        'assets/quispe_splash.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fitWidth,
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
