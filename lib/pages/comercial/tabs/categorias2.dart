import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:quispe_ui/Models/Comercial/categorias.dart';
import 'package:quispe_ui/bloc/provider_bloc.dart';
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
                        SizedBox(width: ScreenUtil().setWidth(8),),
                        Icon(
                          Icons.search,
                          color: Colors.grey[400],
                          size: ScreenUtil().setSp(22),
                        ),
                        Text(
                          'Buscar productos',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: ScreenUtil().setSp(16),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(16)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: ScreenUtil().setWidth(160),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                provider.changeToLugar();
                              });
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: ScreenUtil().setWidth(160),
                                  height: ScreenUtil().setHeight(30),
                                  decoration: BoxDecoration(
                                    //color: data == CategoriasEnum.categorias ? Colors.green : Color(0xfff7f7f7),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'CATEGORÍAS',
                                      style: TextStyle(
                                        color: Color(0xFF141313),
                                        fontSize: ScreenUtil().setSp(16),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: data == CategoriasEnum.categorias ? Colors.blue : Color(0xfff7f7f7),
                                )
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: ScreenUtil().setWidth(160),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                provider.changeToHora();
                              });
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: ScreenUtil().setWidth(160),
                                  height: ScreenUtil().setHeight(30),
                                  decoration: BoxDecoration(
                                    //border: Border.all(color: Colors.green),
                                    //scolor: data == CategoriasEnum.marcas ? Colors.green : Color(0xfff7f7f7),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'MARCAS',
                                      style: TextStyle(
                                        color: Color(0xFF141313),
                                        fontSize: ScreenUtil().setSp(16),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: data == CategoriasEnum.marcas ? Colors.blue : Color(0xfff7f7f7),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 500),
                        child: data == CategoriasEnum.categorias
                            ? ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      final bottomBloc = ProviderBloc.homeComercial(context);
                                      bottomBloc.changePage(4);
                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: ScreenUtil().setWidth(16),
                                          ),
                                          child: Text('${categoryList[index].nombre}',style: TextStyle(fontSize: ScreenUtil().setSp(16),),),
                                        ),
                                        Divider(),
                                      ],
                                    ),
                                  );
                                },
                                itemCount: categoryList.length,
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                     onTap: () {
                                      final bottomBloc = ProviderBloc.homeComercial(context);
                                      bottomBloc.changePage(4);
                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: ScreenUtil().setWidth(16),
                                          ),
                                          child: Text('${listMarcas[index].nombre}'),
                                        ),
                                        Divider(),
                                      ],
                                    ),
                                  );
                                },
                                itemCount: listMarcas.length,
                              )),
                  )
                ],
              );
            }),
      ),
    );
  }
}
