import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:atomic_ds_system_jd/src/atoms/ds_pokeball_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DsCardMenu extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback? onTap;

  const DsCardMenu({
    super.key,
    required this.name,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap?.call(),
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color.withValues(alpha: 0.8), color],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [DsHeadlineSmall(name)],
            ),
          ),
          Positioned(right: -65, bottom: -25, child: DsPokeballImage()),
        ],
      ),
    );
  }
}
