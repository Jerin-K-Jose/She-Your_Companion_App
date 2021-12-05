import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getdata(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(223, 185, 252, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "She",
              style: TextStyle(
                  color: Color.fromRGBO(113, 1, 255, 1),
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Your companion App',
              style: TextStyle(color: Color.fromRGBO(113, 1, 255, 1)),
            )
          ],
        ),
      ),
    );
  }

  Future<void> getdata(BuildContext context) async {
    final sharedpref = await SharedPreferences.getInstance();
    final loginstatus = sharedpref.getString('Islogin');
    print(loginstatus);
    if (loginstatus == 'true') {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushNamed('/home');
      });
    } else {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushNamed('/register');
      });
    }
  }
}
