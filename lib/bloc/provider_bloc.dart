import 'package:flutter/material.dart';
import 'package:quispe_ui/bloc/comercial/home_comercial_bloc.dart';

class ProviderBloc extends InheritedWidget {
  final homeComercialBloc = HomeComercialBloc();

  ProviderBloc({Key? key, required Widget child}) : super(key: key, child: child);
  @override
  bool updateShouldNotify(ProviderBloc oldWidget) => true;

  //tab
  static HomeComercialBloc homeComercial(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ProviderBloc>())!.homeComercialBloc;
  }
}
