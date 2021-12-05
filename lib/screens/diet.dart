import 'package:flutter/material.dart';
import 'package:pcos_companion/dietplans.dart';

class DietScreen extends StatelessWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFE1F5),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/diet.png',
                      scale: 2.3,
                      colorBlendMode: BlendMode.darken,
                    )
                  ],
                ),
                DietSunday(),
              ],
            ),
          ),
        ));
  }
}
