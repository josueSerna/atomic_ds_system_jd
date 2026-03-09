import 'package:flutter/material.dart';

class DsInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool autofocus;
  final ValueChanged<String>? onChanged;
  final Widget? suffix;

  const DsInput({
    super.key,
    this.controller,
    this.hintText,
    this.autofocus = false,
    this.onChanged,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        suffixIcon: suffix,
      ),
    );
  }
}