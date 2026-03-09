import 'package:flutter/material.dart';
import '../atoms/ds_input.dart';

class DsSearchInput extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final bool autofocus;
  final String hintText;

  const DsSearchInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.onClear,
    this.autofocus = false,
    this.hintText = 'Buscar...',
  });

  @override
  Widget build(BuildContext context) {
    return DsInput(
      controller: controller,
      autofocus: autofocus,
      hintText: hintText,
      onChanged: onChanged,
      suffix: controller.text.isNotEmpty
          ? IconButton(
              icon: const Icon(Icons.clear),
              onPressed: onClear,
            )
          : null,
    );
  }
}