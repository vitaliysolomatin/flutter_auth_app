import 'package:flutter/widgets.dart';

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

class MinLengthText extends ValidateRule {
  final String errorMessage;
  final int minLength;

  MinLengthText({this.minLength = 6, this.errorMessage = 'Field is to short'});

  String validate(value) {
    if (value.length < minLength) {
      return errorMessage;
    }
    return null;
  }
}

class MaxLengthText extends ValidateRule {
  final String errorMessage;
  final int maxLength;

  MaxLengthText({this.maxLength = 64, this.errorMessage = 'Field is to long'});

  String validate(value) {
    if (value.length > maxLength) {
      return errorMessage;
    }
    return null;
  }
}

class SameAsText extends ValidateRule {
  final String errorMessage;
  final TextEditingController textController;

  SameAsText({
    this.errorMessage,
    @required this.textController,
  });

  String validate(value) {
    if (value != textController.text) return errorMessage;
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

    rules.forEach((rule) {
      final error = rule.validate(value);
      if (error != null) {
        _errors.add(error);
      }
    });

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
