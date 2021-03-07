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
        'Qual elemento de número atômico 19?',
        'Cloro',
        'Alumínio',
        'Potássio',
        'Fósforo',
        3,
      ),
    );

    questions.add(
      Question(
        'Alotropia é o fenômeno que envolve diferentes substâncias:',
        'Simples, formada pelo mesmo elemento químico',
        'Compostas, com a mesma fórmula molecular',
        'Compostas, formadas pelos mesmos elementos químicos',
        'Simples, com a mesma atomicidade',
        1,
      ),
    );

    return questions;
  }
}
