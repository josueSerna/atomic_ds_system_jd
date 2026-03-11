import 'package:flutter/material.dart';
import '../atoms/ds_pokeball_image.dart';
import '../tokens/ds_colors.dart';
import '../tokens/ds_spacing.dart';

/// Organismo: AppBar personalizado con flecha de retroceso y Pokeball decorativa.
/// Tiene una altura amplia para separar visualmente del contenido.
/// Se adapta automáticamente al tema Light/Dark.
/// Widget puramente presentacional — sin lógica ni estado.
class DsCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Si `true`, muestra el botón de retroceso.
  final bool showBackButton;

  /// Callback al pulsar la flecha de retroceso.
  final VoidCallback? onBack;

  /// Título opcional centrado entre la flecha y la pokeball.
  final String? title;

  /// Color del título (por defecto se adapta al tema).
  final Color? titleColor;

  /// Color de fondo (por defecto se adapta al tema).
  final Color? backgroundColor;

  /// Altura total del AppBar.
  final double heightAppbar;

  final double heightPokeball;

  final Icon? icon;

  const DsCustomAppBar({
    super.key,
    this.showBackButton = true,
    this.onBack,
    this.title,
    this.titleColor,
    this.backgroundColor,
    this.icon,
    this.heightAppbar = 120,
    this.heightPokeball = 250,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor =
        backgroundColor ??
        (isDark ? DsColors.darkBackground : DsColors.lightBackground);
    final iconColor = isDark
        ? DsColors.darkTextPrimary
        : DsColors.lightTextPrimary;

    return Container(
      height: heightAppbar + MediaQuery.of(context).padding.top,
      clipBehavior: Clip.none,
      decoration: BoxDecoration(color: bgColor),
      child: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // ── Contenido principal (flecha + título) ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DsSpacing.sm),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (showBackButton)
                    IconButton(
                      onPressed: onBack,
                      icon: Icon(Icons.arrow_back, color: iconColor, size: 28),
                    ),
                  if (title != null) ...[
                    const Spacer(),
                    Text(
                      title!,
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(color: titleColor ?? iconColor),
                    ),
                    const Spacer(),
                    // Invisible balance para centrar el título
                    const SizedBox(width: 48),
                  ] else
                    const Spacer(),
                ],
              ),
            ),
            // ── Pokeball decorativa (derecha, no afecta el tamaño del AppBar) ──
            Positioned(
              right: -150,
              top: -110,
              child: IgnorePointer(
                child: DsPokeballImage(
                  size: heightPokeball,
                  color: isDark ? DsColors.white : DsColors.greyDark,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(heightAppbar);
}
