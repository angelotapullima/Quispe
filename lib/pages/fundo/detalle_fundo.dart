import 'package:flutter/material.dart';
import 'package:quispe_ui/utils/responsive.dart';

class DetalleFundo extends StatelessWidget {
  const DetalleFundo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: responsive.hp(40),
                child: Image.asset(
                  'assets/home2.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: responsive.wp(5)),
                transform: Matrix4.translationValues(0, -responsive.hp(6), 0),
                height: responsive.hp(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: responsive.ip(2),
                          backgroundColor: Colors.pink,
                        ),
                        CircleAvatar(
                          radius: responsive.ip(2),
                          backgroundColor: Colors.pink,
                        ),
                        CircleAvatar(
                          radius: responsive.ip(2),
                          backgroundColor: Colors.pink,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: responsive.hp(2),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Reservas : 965656799'),
                        Text('Atencion : de 9am a 8pm'),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: responsive.wp(4),
                          ),
                          child: Text(
                            'Fotos del Lugar',
                            style: TextStyle(
                                fontSize: responsive.ip(1.8),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: responsive.hp(2),
                        ),
                        Container(
                          height: responsive.hp(10),
                          child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 8,
                              itemBuilder: (_, index) {
                                if (index.isOdd) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: responsive.wp(3),
                                    ),
                                    height: responsive.hp(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset('assets/social1.jpg'),
                                    ),
                                  );
                                } else {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: responsive.wp(3)),
                                    height: responsive.hp(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset('assets/social4.jpg'),
                                    ),
                                  );
                                }
                              }),
                        )
                      ],
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (_, index) {
                          return Transform.translate(
                            offset: Offset(0.0, index.isOdd ? 100.0 : 0.0),
                            child: Container(
                              height: responsive.hp(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(),
                                      Column(
                                        children: [
                                          Text('Angelo Tapullima'),
                                          Text('14 de febrero del 2021'),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: responsive.hp(17),
            color: Colors.transparent,
            child: SafeArea(
              child: Stack(
                children: [
                  BackButton(
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/fundo_logo.png',
                        width: responsive.wp(20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
