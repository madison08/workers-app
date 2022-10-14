import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  MyTextField({
    required this.hintText,
    this.controller,
    this.textInputAction,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        fillColor: Colors.grey[100],
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
            style: BorderStyle.none,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
            style: BorderStyle.none,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
