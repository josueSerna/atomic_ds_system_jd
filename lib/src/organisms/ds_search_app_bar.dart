import 'package:flutter/material.dart';
import '../tokens/ds_colors.dart';
import '../tokens/ds_spacing.dart';

/// Organismo: AppBar de búsqueda con diseño diferenciado.
/// Fondo blanco/claro con barra de búsqueda incrustada,
/// visualmente distinto al AppBar rojo principal (DsTheme._appBarTheme).
/// Widget puramente presentacional — sin lógica ni estado.
class DsSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget searchInput;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double elevation;
  final double height;

  const DsSearchAppBar({
    super.key,
    required this.searchInput,
    this.leading,
    this.actions,
    this.backgroundColor,
    this.elevation = 1,
    this.height = kToolbarHeight + 8,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor =
        backgroundColor ??
        (isDark ? DsColors.darkBackground : DsColors.lightBackground);

    return Container(
      height: height + MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(color: bgColor),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DsSpacing.sm,
            vertical: DsSpacing.xs,
          ),
          child: Row(
            children: [
              if (leading != null) leading!,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: DsSpacing.xs),
                  child: searchInput,
                ),
              ),
              if (actions != null) ...actions!,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
