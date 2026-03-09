import 'package:atomic_ds_system_jd/src/atoms/ds_input.dart';
import 'package:flutter/material.dart';

class DsSearchInput extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final String? hintText;

  const DsSearchInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.onClear,
    this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return DsInput(
      controller: controller,
      hintText: hintText,
      onChanged: onChanged,
      suffix: controller.text.isNotEmpty 
        ? IconButton(
          icon: const Icon(Icons.clear),
          onPressed: onClear, 
        )
        : null
    );
  }
}
