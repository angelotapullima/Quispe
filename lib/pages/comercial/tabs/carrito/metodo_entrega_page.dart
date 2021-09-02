import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MetodoEntregaPage extends StatelessWidget {
  const MetodoEntregaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [BackButton()],
              ),
              Container(
                child: Image.asset('assets/quispe_logo.png', fit: BoxFit.cover, height: ScreenUtil().setHeight(60), width: ScreenUtil().setWidth(60)),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(24),
              ),
              Container(
                child: SvgPicture.asset(
                  'assets/carrito/entregaStep.svg',
                  fit: BoxFit.cover,
                  height: ScreenUtil().setHeight(30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
