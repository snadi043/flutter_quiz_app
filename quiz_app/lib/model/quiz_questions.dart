class QuizQuestions {
  const QuizQuestions(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final answersCopy = List.of(answers);
    answersCopy.shuffle();
    return answersCopy;
  }
}
