import 'package:flutter/material.dart';

class InputForm extends InputDecoration {
  final Color errorColor = Colors.red;

  final width = 3.5;

  InputDecoration decorationInput(
    BuildContext context, {
    Widget? icon,
    String? labelText,
    Widget? iconSuffix,
    Widget? label,
  }) {
    final Color focusColor = Colors.red;

    return InputDecoration(
      suffixIcon: iconSuffix,
      prefixIcon: icon,
      hintText: 'Faites votre recherche',
      labelText: labelText ?? '',
      labelStyle: const TextStyle(
        color: Colors.black38,
        fontStyle: FontStyle.italic,
      ),
      focusColor: focusColor,
      fillColor: focusColor,
      hoverColor: focusColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide.none,
      ),
    );
  }
}

class TextFieldValidation {
  static bool isEmpty(String? text) {
    if (text!.isEmpty) {
      return true;
    }
    return false;
  }

  static bool isDouble(text) {
    try {
      double.parse(text);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool isInt(text) {
    try {
      int.parse(text);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool isValidEmail(String? string) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(string.toString());
  }

  static bool isValidNumberPhone(String? string) {
    return RegExp(
            r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
        .hasMatch(string.toString());
  }

  static String? validateTextMethode(String? str) {
    var value = TextFieldValidation.isEmpty(str);
    if (value) {
      return 'Champs obligatoire';
    } else {
      if (str!.length < 2) {
        return 'Caratère < 2 invalide';
      }
    }
    return null;
  }

  static String? validateEmailMethode(String? str) {
    bool value = TextFieldValidation.isValidEmail(str);
    if (!value) {
      return "L'email est invalide";
    }
    return null;
  }
}

class InputTextMutiline extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final InputDecoration? inputDecoration;
  final String? Function(String?)? validator;

  const InputTextMutiline(
      {Key? key, this.controller, this.inputDecoration, this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 3,
      enableInteractiveSelection: true,
      validator: validator,
      decoration: inputDecoration,
    );
  }
}

class InputTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final InputDecoration? inputDecoration;
  final String? Function(String?)? validator;
  final bool isObscure;
  final TextInputType keyboardType;
  final bool readOnly;

  const InputTextField({
    Key? key,
    this.controller,
    this.inputDecoration,
    this.validator,
    this.isObscure = false,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      controller: controller,
      keyboardType: keyboardType,
      enableInteractiveSelection: true,
      validator: validator,
      decoration: inputDecoration,
      obscureText: isObscure,
    );
  }
}
