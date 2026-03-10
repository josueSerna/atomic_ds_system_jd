import 'package:flutter/material.dart';
import '../atoms/ds_input.dart';
import '../tokens/ds_colors.dart';
import '../tokens/ds_spacing.dart';

/// Molécula: Campo de búsqueda estilizado.
/// Compone DsInput con estilo pill/rounded y icono de búsqueda.
/// Widget puramente presentacional — sin lógica ni estado.
/// El consumidor controla todo el comportamiento (clear, submit, etc).
class DsSearchInput extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final bool autofocus;
  final bool enabled;
  final String? hintText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;

  const DsSearchInput({
    super.key,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.autofocus = false,
    this.enabled = true,
    this.hintText = 'Buscar...',
    this.suffixIcon,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return DsInput(
      controller: controller,
      autofocus: autofocus,
      enabled: enabled,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onTap: onTap,
      textInputAction: TextInputAction.search,
      prefixIcon: const Icon(Icons.search, color: DsColors.greyDark),
      suffixIcon: suffixIcon,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: DsColors.greyDark),
        prefixIcon: const Icon(Icons.search, color: DsColors.greyDark),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: DsColors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: DsSpacing.md,
          vertical: DsSpacing.sm,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DsSpacing.rounded),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DsSpacing.rounded),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DsSpacing.rounded),
          borderSide: const BorderSide(color: DsColors.blue, width: 2),
        ),
      ),
    );
  }
}
