import 'package:flutter/material.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
import 'package:quispe_ui/pages/comercial/homeComercial.dart';
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
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Splash(),
          routes: {
            //"login": (BuildContext context) => LoginPage(),
             "homeComercial": (BuildContext context) => HomeComercialPage(),
             "inicio": (BuildContext context) => SeleccionInicial(),
            /*  "pruebas": (BuildContext context) => PuebasPage(),
              //"splash": (BuildContext context) => Splash(),

              //Mi Perfil
              'perfil': (BuildContext context) => PerfilPage(), */
          }),
    );
  }
}
