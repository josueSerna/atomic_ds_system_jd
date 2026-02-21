import 'package:flutter/material.dart';

import 'ds_type_badge.dart';

class DsTypeWrap extends StatelessWidget {
  final List<String> types;
  const DsTypeWrap({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 4,
      runSpacing: 4,
      children: types
          .map((type) => DsTypeBadge(type: type, size: DsTypeBadgeSize.small))
          .toList(),
    );
  }
}
