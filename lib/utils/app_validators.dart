class AppValidators{

  static String? emailValidator(value) {
    if (value!.isEmpty) {
      return 'Please enter your email address.';
    }
    if (!RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? passwordValidator(value) {
    if (value!.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  static String? dropdownValidator(value) {
    if (value == null) {
      return 'Choose any one';
    }
    return null;
  }

  static String? dobValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Pick a date';
    }
    return null;
  }
}