class LogInData {
  bool isValidData;
  String email;
  String pass;
  LogInData({
    required this.isValidData,
    required this.email,
    required this.pass,
  });
  static LogInData getEmptyLogInData() => LogInData(
        isValidData: false,
        email: "",
        pass: "",
      );
}
