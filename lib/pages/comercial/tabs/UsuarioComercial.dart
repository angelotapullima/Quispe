

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quispe_ui/utils/responsive.dart';


class UsuarioComercial extends StatelessWidget {
  const UsuarioComercial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final responsive = Responsive.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: responsive.hp(3.5)),
          Container(
              height: responsive.hp(45),
              margin: EdgeInsets.symmetric(
                horizontal: responsive.ip(1.5),
              ),
              padding: EdgeInsets.symmetric(
                vertical: responsive.hp(2),
                horizontal: responsive.wp(2),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.white
                  //image: DecorationImage(image: NetworkImage("https://image.freepik.com/foto-gratis/cuatro-colores-amarillo-verde-rojo-azul-abstracto-fondo-carton-hojas-carton-apilan-encima-otras-copia-espacio_107288-1660.jpg"))
                  ),
              child: Column(
                children: [
                  Container(
                    width: responsive.ip(15),
                    height: responsive.ip(15),
                    
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: CachedNetworkImage(
                       placeholder: (context, url) => Image(
                image: const AssetImage('assets/jar-loading.gif'),
                fit: BoxFit.cover),
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
                  SizedBox(height: responsive.hp(3)),

                  Container(child: Text("Angelo Melendez", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),
                  SizedBox(height: responsive.hp(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: responsive.wp(25),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              radius: responsive.wp(8),
                              child: Icon(Icons.ad_units,color: Colors.red),
                            ),
                            Text(
                              "Mis Pedidos",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: responsive.wp(25),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[100],
                              radius: responsive.wp(8),
                              child: Icon(Icons.star ,color: Colors.red,),
                            ),
                            Text(
                              "Favoritos",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: responsive.wp(25),
                        
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: responsive.wp(8),
                              child: Icon(Icons.lightbulb,color: Colors.red),
                            ),
                            Text(
                              "Recomendados",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
         
          // SizedBox(
          //   height: responsive.hp(2),
          // ),

          _item(responsive, "Mi perfil", "perfil", FontAwesomeIcons.user),

          //Direccion
          _item(responsive, "Direcciones de entrega", "direccion",
              Icons.gps_fixed),

          _item(responsive, "Políticas de Privacidad", "direccion",
              Icons.privacy_tip_outlined),

          _item(responsive, "Términos y Condiciones", "intro", Icons.save_alt),

          _item(responsive, "Configuración", "direccion", Icons.settings),

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

  Widget _item(Responsive responsive, nombre, ruta, IconData icon) {
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
          leading: Icon(icon, color: Colors.blueGrey[500]),
          trailing: Icon(Icons.arrow_right_outlined, color: Colors.green),
          onTap: () {
            //Navigator.pushNamed(context, ruta);
          },
        ));
  }
}