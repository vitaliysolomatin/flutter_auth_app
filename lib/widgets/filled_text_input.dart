import 'package:auth_app/assets/colors.dart';
import 'package:auth_app/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FilledTextInputArguments {
  final String hint;
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final Validator validator;
  final int maxLines;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;

  FilledTextInputArguments({
    this.labelText,
    this.hint,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.maxLines,
    this.inputFormatters,
    this.keyboardType,
  });

  FilledTextInputArguments copyWith({
    final String hint,
    final String labelText,
    final bool obscureText,
    final TextEditingController controller,
    final Validator validator,
    final int maxLines,
    final List<TextInputFormatter> inputFormatters,
    final TextInputType keyboardType,
  }) {
    return FilledTextInputArguments(
      hint: hint ?? this.hint,
      labelText: labelText ?? this.labelText,
      obscureText: obscureText ?? this.obscureText,
      controller: controller ?? this.controller,
      maxLines: maxLines ?? this.maxLines,
      validator: validator ?? this.validator,
      inputFormatters: inputFormatters ?? this.inputFormatters,
      keyboardType: keyboardType ?? this.keyboardType,
    );
  }
}

class FilledTextInput extends StatefulWidget {
  final String hint;
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final Validator validator;
  final int maxLines;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;

  FilledTextInput({
    this.labelText,
    this.hint,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.maxLines,
    this.inputFormatters,
    this.keyboardType,
  });

  @override
  _FilledTextInputState createState() => _FilledTextInputState();
}

class _FilledTextInputState extends State<FilledTextInput> {
  bool showValue;

  @override
  void initState() {
    showValue = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        validator: (value) {
          if (widget.validator == null) {
            return null;
          }
          final errors = widget.validator.validate(value);
          return errors == null ? null : errors.last;
        },
        controller: widget.controller,
        obscureText: showValue,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          labelStyle: TextStyle(
            fontSize: 16,
            color: AuthAppColors.mediumGrey,
          ),
          hintText: widget.hint,
          labelText: widget.labelText,
        ),
      ),
    );
  }
}
