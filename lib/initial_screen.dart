import 'package:flutter/material.dart';
import 'package:quizz/main.dart';


class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('lib/assets/icon.png'),
          ),
          Text('Quizz\nQuímica',
          textAlign: TextAlign.center, 
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w800,
            color: Colors.amber[700],
          ),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => Quizz())
            );
          }, 
          child: Text('Começar', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),
          color: Colors.amber[700],
          textColor: Color(0xffF7F7F7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
          ),
        ],
      ),
    );
  }
}
