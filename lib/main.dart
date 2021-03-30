import 'package:flutter/material.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/pages/clipper.dart';
import 'package:quispe_ui/pages/comercial/homeComercial.dart';
import 'package:quispe_ui/pages/ferreteria/homeFerreteria.dart';
import 'package:quispe_ui/pages/fundo/homeFundo.dart';
import 'package:quispe_ui/pages/seleccion_inicial.dart';
import 'package:quispe_ui/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderBloc(
          child: MaterialApp(
          title: 'Quispe',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Splash(),
          routes: {
            //"login": (BuildContext context) => LoginPage(),
             "homeComercial": (BuildContext context) => HomeComercialPage(),
             "inicio2": (BuildContext context) => SeleccionInicial(),
             "inicio": (BuildContext context) => InicioQuispe(),
            /*  "pruebas": (BuildContext context) => PuebasPage(),
              //"splash": (BuildContext context) => Splash(),*/

              //FerroCentro
              "homeFerreteria": (BuildContext context) => HomeFerreteriaPage(),
             //"inicioFerro": (BuildContext context) => InicioFerro(),

              //Fundo
              "homeFundo": (BuildContext context) => HomeFundoPage(),
            // "inicioFundo": (BuildContext context) => InicioFundoPage(),

          }),
    );
  }
}
