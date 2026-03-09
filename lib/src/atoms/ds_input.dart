import 'package:flutter/material.dart';

class DsInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final Widget? suffix;

  const DsInput({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        suffixIcon: suffix,
      ),
    );
  }
}
