enum Field {
  fullName,
  email,
  pass,
  confirmPass,
  collegeEnrollment,
  collegeName,
}

class PersonalData {
  bool isValidData;
  String fullName;
  PersonalData({
    required this.isValidData,
    required this.fullName,
  });
  static PersonalData emptyPersonalData() {
    return PersonalData(isValidData: false, fullName: '');
  }
}

class SchoolData {
  final bool isValidData;
  final String collegeEnrollment;
  final String collegeName;
  SchoolData({
    required this.isValidData,
    required this.collegeEnrollment,
    required this.collegeName,
  });

  static SchoolData emptySchoolData() {
    return SchoolData(
      isValidData: false,
      collegeEnrollment: '',
      collegeName: '',
    );
  }
}

class AccountData {
  bool isValidData;
  String email;
  String pass;
  String confirmPass;
  AccountData({
    required this.isValidData,
    required this.email,
    required this.pass,
    required this.confirmPass,
  });
  static AccountData emptyAccountData() {
    return AccountData(
      isValidData: false,
      confirmPass: '',
      email: '',
      pass: '',
    );
  }
}

class ConfirmarAccountData {
  bool isValidData;
  String codeVerification;

  ConfirmarAccountData({
    required this.isValidData,
    required this.codeVerification,
  });

  static ConfirmarAccountData emptyConfirmarAccountData() {
    return ConfirmarAccountData(
      isValidData: false,
      codeVerification: '',
    );
  }
}
