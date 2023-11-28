import 'package:flutter/widgets.dart';

class ValidatorController {
  bool inputValidator(String? value) {
    if (value == null ||
        value.trim().isEmpty ||
        value.characters.endsWith(Characters(' '))) {
      return false;
    } else {
      return true;
    }
  }

  bool userValidator(
      TextEditingController user, TextEditingController password) {
    return false;
  }
}
