import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MobileView extends StatelessWidget {
  List<String> listCarUrl = [
    'assets/25.png',
    'assets/28.png',
    'assets/1.png',
    'assets/4.png',
    'assets/13.png',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget buildMobileButton() {
      return Row(
        children: [
          'Learn more'
              .text
              .white
              .makeCentered()
              .box
              .p12
              .width(size.width / 2)
              .red500
              .make(),
          'Book'
              .text
              .white
              .makeCentered()
              .box
              .p12
              .blue500
              .width(size.width / 2)
              .make(),
        ],
      );
    }

    Widget buildmobilesideView() {
      return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCarUrl.length,
          itemBuilder: (ctx, i) {
            return Image.asset(
              listCarUrl[i],
            ).box.square(200).make();
          },
        ),
      );
    }

    Widget buildmobileCarColor() {
      return Container(
        width: double.infinity,
        height: 100,
        child: Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[900],
              radius: 16,
            ).positioned(left: 12),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 16,
            ).positioned(left: 30),
            CircleAvatar(
              backgroundColor: Colors.green[700],
              radius: 16,
            ).positioned(left: 52),
          ],
        ),
      );
    }

    Widget buildMobileCarView() {
      return Stack(
        children: [
          Image.asset('assets/1.png'),
          'Lamborghini Huracan'
              .text
              .white
              .bold
              .size(20)
              .make()
              .positioned(bottom: 25, left: 12),
          '2016'
              .text
              .gray400
              .bold
              .size(18)
              .make()
              .positioned(bottom: 5, left: 12)
        ],
      );
    }

    Widget buildTest({String title, String value}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title.text.size(18).white.make(), value.text.white.make()],
      );
    }

    Widget buildMobileCarDetails() {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildTest(title: 'ENGINE', value: '5.2 L 580 HP V 10'),
            15.widthBox,
            buildTest(title: 'HORSEPOWER', value: '580 @ 8,000 RPM'),
            15.widthBox,
            buildTest(title: 'FUEL ECONOMY', value: '14 / 21 mpg')
          ],
        ),
      );
    }

    Widget buildMobileBar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Vx.white,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/user.jpg'),
            backgroundColor: Colors.transparent,
          ),
        ],
      ).p12();
    }

    return Scaffold(
      body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [
                Vx.red500,
                Vx.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
            ),
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildMobileBar(),
              buildMobileCarView(),
              buildmobileCarColor(),
              buildMobileCarDetails(),
              buildmobilesideView(),
              buildMobileButton()
            ],
          )),
    );
  }
}
