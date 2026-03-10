import 'package:flutter/material.dart';

import '../../atomic_ds_system_jd.dart';

class DsPokeballImage extends StatelessWidget {
  final double? size;
  final Color? color;

  const DsPokeballImage({super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Image.asset(
        height: size ?? 130,
        'assets/images/pokeball.png',
        package: 'atomic_ds_system_jd',
        color: color ?? DsColors.white,
      ),
    );
  }
}
