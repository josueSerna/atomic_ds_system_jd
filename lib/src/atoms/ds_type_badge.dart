import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:flutter/material.dart';

class DsTypeBadge extends StatelessWidget {
  /// Nombre del tipo (Fire, Water, Grass, etc.).
  final String type;

  /// Tamaño del badge.
  final DsTypeBadgeSize size;

  const DsTypeBadge({
    super.key,
    required this.type,
    this.size = DsTypeBadgeSize.medium,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _getPadding(),
      decoration: BoxDecoration(
        color: DsColors.cardBackground.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        type,
        style: TextStyle(
          color: Colors.white,
          fontSize: _getFontSize(),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  /// Obtiene el padding según el tamaño.
  EdgeInsets _getPadding() {
    switch (size) {
      case DsTypeBadgeSize.small:
        return const EdgeInsets.symmetric(horizontal: 8, vertical: 4);
      case DsTypeBadgeSize.medium:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 6);
      case DsTypeBadgeSize.large:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    }
  }

  /// Obtiene el tamaño de fuente según el tamaño.
  double _getFontSize() {
    switch (size) {
      case DsTypeBadgeSize.small:
        return 10;
      case DsTypeBadgeSize.medium:
        return 12;
      case DsTypeBadgeSize.large:
        return 14;
    }
  }
}

/// Tamaños disponibles para [PkTypeBadge].
enum DsTypeBadgeSize {
  /// Badge pequeño (10px).
  small,

  /// Badge mediano (12px).
  medium,

  /// Badge grande (14px).
  large,
}
