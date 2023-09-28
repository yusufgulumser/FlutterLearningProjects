class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    /// 'of' copies the list
    final shuffledList = List.of(answers);

    /// 'shuffle()' shuffles the copied list
    shuffledList.shuffle();
    return shuffledList;
  }
}
