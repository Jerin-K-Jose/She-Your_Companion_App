import 'package:flutter/material.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFE1F5),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/meditation.png',
                    scale: 2.3,
                  ),
                ),
              ],
            ),
            const Text(
              'Meditation',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    '1. Breathing',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/breathing.gif',
              scale: 2.3,
            ),
            SizedBox(height: 50),
            TimerButton(),
          ],
        ),
      ),
    );
  }

  Widget TimerButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(223, 185, 252, 1),
                border: Border.all(
                    color: Color.fromRGBO(191, 109, 255, 1), width: 5)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow),
              iconSize: 50,
              color: Color.fromRGBO(191, 109, 255, 1),
            ),
          ),
        ),
      ],
    );
  }
}
