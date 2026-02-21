import 'package:atomic_ds_system_jd/src/atoms/ds_image_network.dart';
import 'package:atomic_ds_system_jd/src/atoms/ds_pokeball_image.dart';
import 'package:atomic_ds_system_jd/src/atoms/ds_type_wrap.dart';
import 'package:atomic_ds_system_jd/src/tokens/ds_get_type_color.dart';
import 'package:flutter/material.dart';

import '../../atomic_ds_system_jd.dart';

class DsCardItem extends StatelessWidget {
  final String name;

  /// Número de Pokédex (ej: "#001").
  final String number;

  /// URL de la imagen del Pokémon.
  final String imageUrl;

  /// Lista de tipos del Pokémon.
  final List<String> types;

  /// Callback ejecutado al tocar la tarjeta.
  final VoidCallback? onTap;
  const DsCardItem({
    super.key,
    required this.name,
    required this.number,
    required this.imageUrl,
    required this.types,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: screenWidth * 0.45,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                DsGetTypeColor.getTypeColor(types.first).withValues(alpha: 0.8),
                DsGetTypeColor.getTypeColor(types.first),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 14,
            children: [
              DsHeadlineSmall(name),
              DsTypeWrap(types: types),
            ],
          ),
        ),
        Positioned(right: -65, bottom: -20, child: DsPokeballImage()),
        Positioned(
          right: 0,
          bottom: 10,
          child: DsImageNetwork(imageUrl: imageUrl, imageSize: 95),
        ),
      ],
    );
  }
}
