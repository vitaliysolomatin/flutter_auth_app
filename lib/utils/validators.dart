// import 'dart:ffi';
// import 'package:basic_utils/basic_utils.dart';
// import 'package:flutter/widgets.dart';

abstract class ValidateRule {
  static const name = 'string';
  String validate(value);
}

class RequiredText extends ValidateRule {
  final String errorMessage;

  RequiredText({this.errorMessage = 'Required'});

  String validate(value) {
    if (value == null || value.trim().isEmpty) {
      return errorMessage;
    }
    return null;
  }
}

class Validator {
  final List<ValidateRule> rules;

  final List<String> _errors = [];

  Validator({
    this.rules,
  });

  List<String> validate(value) {
    clearErrors();
    // iterate over rules
    rules.forEach((rule) {
      final error = rule.validate(value);
      if (error != null) {
        _errors.add(error);
      }
    });
    // if there were error return copy of all errors
    if (_errors.length > 0) {
      return [..._errors];
    }

    return null;
  }

  clearErrors() {
    _errors.clear();
  }

  getLastError() {
    return _errors.last;
  }
}
