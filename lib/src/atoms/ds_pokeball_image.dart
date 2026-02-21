import 'package:flutter/material.dart';

import '../../atomic_ds_system_jd.dart';

class DsPokeballImage extends StatelessWidget {
  const DsPokeballImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Image.asset(
        height: 130,
        'assets/images/pokeball.png',
        package: 'atomic_ds_system_jd',
        color: DsColors.white,
      ),
    );
  }
}
