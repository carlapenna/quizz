import 'package:flutter/material.dart';
import 'package:quizz/question.dart';
import 'package:quizz/score_screen.dart';

class QuizzScreen extends StatefulWidget {
  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  List<Question> questionsList = Question.getQuestionsList();

  void verifyResponse() {
    if (answer == questionsList[index].answer) {
      score = score + 1;
    }
  }

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
          Container(
            margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PERGUNTA 1:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff24292E),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  questionsList[index].questionText,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 1,
                    groupValue: answer,
                    title: Text(questionsList[index].option1),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 2,
                    groupValue: answer,
                    title: Text(questionsList[index].option2),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 3,
                    groupValue: answer,
                    title: Text(questionsList[index].option3),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                  child: RadioListTile(
                    value: 4,
                    groupValue: answer,
                    title: Text(questionsList[index].option4),
                    onChanged: (int value) {
                      setState(() {
                        answer = value;
                      });
                    },
                  ),
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
                  verifyResponse();
                  if (index < questionsList.length - 1) {
                    setState(
                      () {
                        index = index + 1;
                        answer = 0;
                      },
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScoreScreen(maximum: questionsList.length, result: score,)),
                    );
                  }
                },
                child: Text(
                  'Responder',
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
