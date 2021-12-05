import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget DietCard() {
  return Padding(
    padding: EdgeInsets.fromLTRB(20, 0, 2, 2),
    child: Container(
      width: 165,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 10, 2, 0),
            child: Image.asset(
              'assets/images/diet.png',
              // width: size.width / 2,
              scale: 0.6,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Text('Diet', style: TextStyle(fontSize: 18)),
          )
        ],
      ),
    ),
  );
}

Widget WorkoutCard() {
  return Padding(
    padding: EdgeInsets.fromLTRB(20, 2, 2, 2),
    child: Container(
      width: 165,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(1, 10, 2, 0),
            child: Image.asset(
              'assets/images/workout.png',
              // width: size.width / 2,
              scale: 0.8,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Workout',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    ),
  );
}

Widget MeditationCard() {
  return Padding(
    padding: EdgeInsets.fromLTRB(20, 2, 10, 10),
    child: Container(
      width: 350,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(40, 10, 30, 5),
            child: Text('Meditation', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(2, 10, 5, 5),
            child: Image.asset(
              'assets/images/meditation.png',
              // width: size.width / 2,
              scale: 0.6,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget BlogCard() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(2, 0, 5, 2),
    child: Container(
      width: 165,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 2, 5),
            child: Image.asset(
              'assets/images/blog1.png',
              // width: size.width / 2,
              scale: 1,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
            child: Text('Blog', style: TextStyle(fontSize: 18)),
          )
        ],
      ),
    ),
  );
}

final TextEditingController _inputname = TextEditingController();
final TextEditingController _inputage = TextEditingController();
final TextEditingController _inputweight = TextEditingController();
final TextEditingController _inputheight = TextEditingController();

Widget formNameRow() {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Name:'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 200, height: 50),
            child: TextField(
              controller: _inputname,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget formAgeRow() {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Age:    '),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 200, height: 50),
            child: TextField(
              controller: _inputage,
              decoration: const InputDecoration(
                hintText: 'Enter your age',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget formWeightRow() {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Weight:'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 200, height: 50),
            child: TextField(
              controller: _inputweight,
              decoration: const InputDecoration(
                hintText: 'Weight in kg',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget formHeightrow() {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Height:'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 200, height: 50),
            child: TextField(
              controller: _inputheight,
              decoration: const InputDecoration(
                hintText: "Height in cm",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Future<void> saveData() async {
  final sharedpref = await SharedPreferences.getInstance();

  await sharedpref.setString('Name', _inputname.text);
  await sharedpref.setString('Age', _inputage.text);
  await sharedpref.setString('Weight', _inputweight.text);
  await sharedpref.setString('Height', _inputheight.text);
  await sharedpref.setString('Islogin', 'true');
}
