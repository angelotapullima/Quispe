import 'package:flutter/material.dart';
import 'package:quispe_ui/utils/responsive.dart';
import 'package:quispe_ui/utils/sliver_header_delegate.dart';

class DetalleFundo2 extends StatelessWidget {
  const DetalleFundo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HeaderWidget(responsive: responsive),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: responsive.wp(2),
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  transform: Matrix4.translationValues(0, -responsive.hp(6), 0),
                  child: GridView.builder(
                      itemCount: 20,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (_, index) {
                        return Transform.translate(
                          offset: Offset(0.0, index.isOdd ? 100 : 0.0),
                          child: Container(
                            margin: EdgeInsets.only(
                              left: responsive.wp(1),
                              right: responsive.wp(1),
                              bottom: responsive.wp(2),
                            ),
                            height: responsive.hp(10),
                            child: Card(
                              elevation: 2,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: responsive.wp(1), vertical: responsive.hp(.5)),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(100),
                                            child: Image.asset('assets/social1.jpg', height: double.infinity, fit: BoxFit.cover),
                                          ),
                                        ),
                                        SizedBox(
                                          width: responsive.wp(1),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Angelo Tapullima',
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Text('14 de febrero del 2021'),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: responsive.hp(2),
                                    ),
                                    (index.isOdd)
                                        ? ClipRRect(
                                            borderRadius: BorderRadius.circular(15),
                                            child: Image.asset(
                                              'assets/social4.jpg',
                                              height: responsive.hp(14),
                                              width: responsive.wp(100),
                                            ),
                                          )
                                        : Container(),
                                    Text(
                                      'Lorem ipsum dolor sit amet, cs et ea rebum. Stet clita kasd',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.responsive,
  }) : super(key: key);

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        floating: true,
        delegate: SliverCustomHeaderDelegate(
          maxHeight: responsive.hp(45),
          minHeight: responsive.hp(45),
          child: Container(
            child: Stack(
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
                  height: responsive.hp(40),
                  width: double.infinity,
                  color: Colors.black.withOpacity(.4),
                ),
                Positioned(
                  bottom: responsive.hp(1),
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsive.wp(5),
                    ),
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: responsive.hp(.8),
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
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: responsive.wp(2)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Text('Reservas : 965656799'),
                                  ),
                                  SizedBox(width: responsive.wp(2)),
                                  Expanded(
                                    child: Text('Atencion : de 9am a 8pm'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: responsive.hp(14),
                  color: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BackButton(
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/fundo_logo.png',
                    height: responsive.hp(13),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
