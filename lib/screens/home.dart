import 'package:flutter/material.dart';
import 'package:pcos_companion/functions.dart';
import 'package:pcos_companion/screens/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(223, 185, 252, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(223, 185, 252, 1),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Text('Welcome',
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/diet');
                          },
                          child: DietCard())
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/workout');
                          },
                          child: WorkoutCard())
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/blog');
                      },
                      child: BlogCard())
                ],
              )
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/meditation');
                  },
                  child: MeditationCard())
            ],
          )
        ],
      )),
    );
  }

  void signout(BuildContext ctx) async {
    final _sharedpref = await SharedPreferences.getInstance();
    _sharedpref.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => RegisterScreen()),
        (route) => false);
  }
}
