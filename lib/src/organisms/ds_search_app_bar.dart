import 'package:flutter/material.dart';

class DsSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget searchInput;

  const DsSearchAppBar({
    super.key,
    required this.searchInput
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: searchInput,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
