import 'package:flutter/material.dart';
import 'package:riverpod_todo/util/theme_extension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: context.blackBodyStyle,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: context.blackBodyStyle,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(11),
          ),
          borderSide: BorderSide.none,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(11),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
