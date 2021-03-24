import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/utils/customCacheManager.dart';

import '../../../utils/responsive.dart';

class UsuarioFerroPage extends StatelessWidget {
  const UsuarioFerroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: responsive.hp(3.5)),
          Stack(
            children: [
              Container(
                height: responsive.hp(30),

                width: double.infinity,

                // margin: EdgeInsets.symmetric(

                //   horizontal: responsive.ip(1.5),

                // ),

                padding: EdgeInsets.symmetric(
                  vertical: responsive.hp(2),
                  horizontal: responsive.wp(2),
                ),

                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),

                    //color: Colors.white

                    image: DecorationImage(
                        image: NetworkImage(
                            "https://image.freepik.com/foto-gratis/cuatro-colores-amarillo-verde-rojo-azul-abstracto-fondo-carton-hojas-carton-apilan-encima-otras-copia-espacio_107288-1660.jpg"),
                        fit: BoxFit.cover)),
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: responsive.hp(3),
                left: responsive.wp(25),
                child: Column(
                  children: [
                    Container(
                      width: responsive.ip(15),
                      height: responsive.ip(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CachedNetworkImage(
                          // cacheManager: CustomCacheManager(),

                          placeholder: (context, url) => Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Image(
                                image: AssetImage('assets/no-image.png'),
                                fit: BoxFit.cover),
                          ),

                          errorWidget: (context, url, error) => Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Center(child: Icon(Icons.error))),

                          imageUrl:
                              'https://grandimageinc.com/wp-content/uploads/2015/09/icon-user-default.png',

                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: responsive.hp(2)),
                    Container(
                      child: Text(
                        "Angelo Melendez",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          // color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: responsive.hp(1)),
          Card(
            //elevation: 4,
                      child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: responsive.ip(1.5), vertical: responsive.ip(0.5)),
              width: double.infinity,
              height: responsive.ip(15),
              color: Colors.white,
              child:

                  // SizedBox(height: responsive.hp(3)),
                  Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: responsive.wp(28),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue[500],
                            radius: responsive.wp(8),
                            child: Icon(Icons.ad_units, color: Colors.white,size: 30,),
                          ),
                          Text(
                            "Mis Pedidos",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: responsive.wp(28),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green[500],
                            radius: responsive.wp(8),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 30,
                            ),
                          ),
                          Text(
                            "Favoritos",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: responsive.wp(28),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.yellow,
                            radius: responsive.wp(8),
                            child: Icon(Icons.lightbulb, color: Colors.red,size: 30,),
                          ),
                          Text(
                            "Recomendados",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // SizedBox(
          //   height: responsive.hp(2),
          // ),

          _item(responsive, "Mi perfil", "perfil", FontAwesomeIcons.user, Colors.green),

          //Direccion
          _item(responsive, "Direcciones de entrega", "direccion",
              Icons.gps_fixed, Colors.red),
          

          _item(responsive, "Políticas de Privacidad", "direccion",
              Icons.privacy_tip_outlined, Colors.blue),

          _item(responsive, "Términos y Condiciones", "intro", Icons.save_alt, Colors.red),

          _item(responsive, "Configuración", "direccion", Icons.settings, Colors.blueGrey),

          //SizedBox(height: responsive.hp(2)),

          Container(
              margin: EdgeInsets.symmetric(
                  horizontal: responsive.ip(1.5), vertical: responsive.ip(0.5)),
              width: double.infinity,
              height: responsive.ip(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: ListTile(
                title: Text("Versión de la app",
                    style: TextStyle(
                        //color: Colors.red,
                        fontSize: responsive.ip(2),
                        fontWeight: FontWeight.bold)),
                subtitle: Text("Versión 1.0",
                    style: TextStyle(
                        //color: Colors.red,
                        fontSize: responsive.ip(2),
                        fontWeight: FontWeight.bold)),
              )),

          Padding(
            padding: EdgeInsets.all(responsive.ip(1.5)),
            child: InkWell(
              onTap: () async {},
              child: new Container(
                //width: 100.0,
                height: responsive.hp(6),
                decoration: new BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
                  color: Colors.white,
                  border: new Border.all(color: Colors.grey[300], width: 1.0),
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                child: new Center(
                  child: new Text(
                    'Cerrar sesión',
                    style: new TextStyle(
                        fontSize: responsive.ip(2),
                        fontWeight: FontWeight.w800,
                        color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _item(Responsive responsive, nombre, ruta, IconData icon, Color color) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsive.ip(1.5), vertical: responsive.ip(0.5)),
        width: double.infinity,
        height: responsive.ip(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: ListTile(
          title: Text(nombre,
              style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: responsive.ip(2),
                  fontWeight: FontWeight.bold)),
          leading: Icon(icon, color: color),
          trailing: Icon(Icons.arrow_right_outlined, color: Colors.green),
          onTap: () {
            //Navigator.pushNamed(context, ruta);
          },
        ));
  }

  Widget _item2(Responsive responsive, nombre, ruta, IconData icon, Color color) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: responsive.ip(1.5), vertical: responsive.ip(0.5)),
        width: double.infinity,
        height: responsive.ip(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: ListTile(
          title: Text(nombre,
              style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontSize: responsive.ip(2),
                  fontWeight: FontWeight.bold)),
          leading: Icon(icon, color: color),
          trailing: Icon(Icons.arrow_right_outlined, color: Colors.green),
          onTap: () {
            //Navigator.pushNamed(context, ruta);
          },
        ));
  }
}
