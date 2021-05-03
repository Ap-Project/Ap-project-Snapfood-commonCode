class IdentityInformation {
  String _phoneNumber;
  String _password;


  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  set password(String value) {
    _password = value;
  }


  String get password => _password;

  String get phoneNumber => _phoneNumber;


  bool validPhoneNumber(String phoneNumber) {
    if (phoneNumber.length < 11 || phoneNumber.length > 11) return false;
    return true;
  }

  bool validPassword(String password) {
    RegExp passwordRegex = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$");
    return passwordRegex.hasMatch(password);
  }

}

