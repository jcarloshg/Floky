class Validators {
  static bool validName(String name) {
    String pattern = r'/^[a-zA-ZÀ-ÿ\u00f1\u00d1\U+0027, .-]+$/i';
    RegExp regExp = RegExp(pattern);
    bool isCorrect = regExp.hasMatch(name);
    return isCorrect;
  }
}
