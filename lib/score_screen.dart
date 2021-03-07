import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {

  int result;
  int maximum;

  ScoreScreen({Key key, @required this.result, @required this.maximum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff374952),
        title: Image(
          image: AssetImage('lib/assets/image.png'),
          width: 50,
          height: 50,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 113,
                ),
                Text(
                  'VOCÊ ACERTOU:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff24292E),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$result',
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffDA0175),
                      ),
                    ),
                    Text(
                      '/ $maximum',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff24292E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, -1)),
              ],
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text(
                  'Jogar Novamente',
                  style: TextStyle(
                    color: Color(0xffF7F7F7),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffDA0175)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(60, 12, 60, 12)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
