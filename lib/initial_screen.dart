import 'package:flutter/material.dart';
import 'package:quizz/quizz_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('lib/assets/icon.png'),
                ),
                Text(
                  'Quizz\nQuímica',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff374952),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizzScreen()));
            },
            child: Text(
              'Começar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffF7F7F7),
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xffDA0175)),
              padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(60, 11, 60, 11)),
              ),
            ),
        ],
      ),
    );
  }
}
