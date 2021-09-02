import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailCategory extends StatelessWidget {
  const DetailCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Text(
              'Zapatillas',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(24),
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(90),
                      ),
                      Expanded(
                        child: Text('Fútbol'),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),Divider()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
