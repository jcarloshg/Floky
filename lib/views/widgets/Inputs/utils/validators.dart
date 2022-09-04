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

  static bool email(String email) {
    RegExp regExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    final isValidEmail = regExp.hasMatch(email);
    return isValidEmail;
  }
}
