class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getSuffledAnswersQuestions() {
    final suffledanswers=List.of(answers);
    suffledanswers.shuffle();
    return  suffledanswers;
  }
}
