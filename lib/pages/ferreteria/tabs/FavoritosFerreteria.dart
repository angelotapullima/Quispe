import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quispe_ui/utils/customCacheManager.dart';
import 'package:quispe_ui/utils/responsive.dart';

class FavoritosFerroPage extends StatelessWidget {
  const FavoritosFerroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(2),
            ),
            child: Text(
              'Productos Favoritos',
              style: TextStyle(
                  fontSize: responsive.ip(2.5), fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: responsive.hp(2),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.only(
                    bottom: responsive.hp(2),
                    left: responsive.wp(3),
                    right: responsive.wp(3),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: responsive.hp(15),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        width: responsive.wp(35),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            cacheManager: CustomCacheManager(),
                            imageUrl:
                                'https://practika.com.mx/wp-content/uploads/2017/07/banner-promociones-practika-publicidad.jpg',
                            errorWidget: (context, url, error) => Image(
                                image: AssetImage('assets/carga_fallida.jpg'),
                                fit: BoxFit.cover),
                            imageBuilder: (context, imageProvider) => Container(
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
                        width: responsive.wp(2),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Nombre del producto',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: responsive.ip(1.6),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: responsive.wp(5),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    'S/ 20.00',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: responsive.ip(1.8),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
