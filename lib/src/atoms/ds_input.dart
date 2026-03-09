import 'package:flutter/material.dart';
import '../tokens/ds_colors.dart';
import '../tokens/ds_spacing.dart';

/// Átomo: Campo de texto estilizado con tokens del DS.
/// Widget puramente presentacional — sin lógica ni estado.
class DsInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool autofocus;
  final bool enabled;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final ValueChanged<String>? onSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final InputDecoration? decoration;
  final TextStyle? style;
  final int? maxLines;

  const DsInput({
    super.key,
    this.controller,
    this.hintText,
    this.autofocus = false,
    this.enabled = true,
    this.readOnly = false,
    this.onChanged,
    this.onTap,
    this.onSubmitted,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
    this.decoration,
    this.style,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      controller: controller,
      autofocus: autofocus,
      enabled: enabled,
      readOnly: readOnly,
      onChanged: onChanged,
      onTap: onTap,
      onSubmitted: onSubmitted,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      maxLines: maxLines,
      style: style ?? theme.textTheme.bodyMedium,
      decoration:
          decoration ??
          InputDecoration(
            hintText: hintText,
            hintStyle: theme.textTheme.bodyMedium?.copyWith(
              color: DsColors.greyDark,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: DsColors.greyLight,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: DsSpacing.md,
              vertical: DsSpacing.sm,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DsSpacing.xs),
              borderSide: const BorderSide(color: DsColors.greyMedium),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DsSpacing.xs),
              borderSide: const BorderSide(color: DsColors.greyMedium),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DsSpacing.xs),
              borderSide: const BorderSide(color: DsColors.blue, width: 2),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DsSpacing.xs),
              borderSide: BorderSide(
                color: DsColors.greyMedium.withValues(alpha: 0.5),
              ),
            ),
          ),
    );
  }
}
