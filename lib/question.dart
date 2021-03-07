class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question(this.questionText, this.option1, this.option2, this.option3,
      this.option4, this.answer);

  static List<Question> getQuestionsList() {
    List<Question> questions = [];

    questions.add(
      Question(
        'Qual elemento de número atômico 2?',
        'Hidrogênio',
        'Carbono',
        'Hélio',
        'Lítio',
        3,
      ),
    );

    questions.add(
      Question(
        'Qual elemento de número atômico 1?',
        'Cloro',
        'Carbono',
        'Hélio',
        'Hidrogênio',
        4,
      ),
    );

    return questions;
  }
}
