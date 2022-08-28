class Validators {
  static bool validName(String name) {
    // /^[a-zA-ZÀ-ÿ\u00f1\u00d1, .'-]+$/i;
    RegExp regExp = RegExp(r'^[a-zA-ZÀ-ÿ ]+$');
    return regExp.hasMatch(name);
  }

  static bool numberWords(int num, String words) {
    final List<String> splitted = words.split(' ');
    final List<String> splitFiltered =
        splitted.where((element) => element.isNotEmpty).toList();
    final numWords = splitFiltered.length;
    return numWords >= num ? true : false;
  }
}
