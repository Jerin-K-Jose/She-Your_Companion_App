import 'package:flutter/material.dart';
import 'package:pcos_companion/functions.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(223, 185, 252, 1),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
            child: Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(239, 225, 245, 1),
                    borderRadius: BorderRadius.circular(40),
                    shape: BoxShape.rectangle),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    formNameRow(),
                    formAgeRow(),
                    formWeightRow(),
                    formHeightrow(),
                    ElevatedButton(
                        onPressed: () {
                          saveData();
                          Navigator.of(context).pushReplacementNamed('/home');
                        },
                        child: Text('Submit'))
                  ],
                )),
          ),
        ));
  }
}
