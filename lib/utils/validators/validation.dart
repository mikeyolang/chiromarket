class AppValidationOperations {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required';
    }
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp emailRegExp = RegExp(emailPattern);
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    }
    // checking for password minimal lenght
    if (value.length < 6) {
      return 'Password Must be at least 6 characters long';
    }

    // Checking for upper case letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one upercase letter';
    }

    // Checking for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password Must contain at least one number';
    }

    // Checking for SPecial Characters
    String passwordPattern = r'^(?=.*[!@#\$&*~]).{1,}$';
    RegExp passwordRegExp = RegExp(passwordPattern);
    if (!value.contains(passwordRegExp)) {
      return 'Password must contain atleast one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    String phoneNumberPattern = r'^\d{12}$';
    RegExp phoneNumberRegExp = RegExp(phoneNumberPattern);
    if (!phoneNumberRegExp.hasMatch(value)) {
      return 'Invalid phone number format: use (254768123456)';
    }
    return null;
  }
}
