import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:quispe_ui/pages/comercial/tabs/bloc_categoriass.dart';

class Categorias2 extends StatefulWidget {
  const Categorias2({Key key}) : super(key: key);

  @override
  _Categorias2State createState() => _Categorias2State();
}

class _Categorias2State extends State<Categorias2> {
  @override
  Widget build(BuildContext context) {


    final provider = Provider.of<CategoriasBlocListener>(context, listen: false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: ValueListenableBuilder(
          valueListenable: provider.page,
            builder: (BuildContext context, CategoriasEnum data, Widget child) {
            return Column(
              children: [
                Container(
                  height: ScreenUtil().setHeight(70),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(16),
                  ),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'Buscar',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(18),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: ScreenUtil().setHeight(28),
                        width: ScreenUtil().setWidth(28),
                        child: SvgPicture.asset(
                          'assets/svg/user_b.svg',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(16),
                  ),
                  height: ScreenUtil().setHeight(50),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[400],
                      ),
                      Text(
                        'Buscar productos',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(16),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            provider.changeToLugar();
                             
                          });
                        },
                        child: Container(
                          width: ScreenUtil().setWidth(160),
                          height: ScreenUtil().setHeight(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            color: data == CategoriasEnum.categorias ? Colors.green : Color(0xfff7f7f7),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Por Lugar',
                              style: TextStyle(
                                color: data == CategoriasEnum.categorias ? Color(0xfff7f7f7) : Colors.green,
                                fontSize: ScreenUtil().setSp(16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() { 
                            provider.changeToHora();
                          });
                        },
                        child: Container(
                          width: ScreenUtil().setWidth(160),
                          height: ScreenUtil().setHeight(30),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            color: data == CategoriasEnum.marcas ? Colors.green : Color(0xfff7f7f7),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Por Hora',
                              style: TextStyle(
                                color: data == CategoriasEnum.marcas ? Color(0xfff7f7f7) : Colors.green,
                                fontSize: ScreenUtil().setSp(16),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
