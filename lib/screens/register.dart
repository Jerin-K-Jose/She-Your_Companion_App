import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(191, 109, 255, 1),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/vectorgirl.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              child: Text(
                "Lets Embrace Womenhood Together",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/forms');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 60),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(48, 25, 52, 0.85)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )))),
          ],
        ),
      )),
    );
  }
}
