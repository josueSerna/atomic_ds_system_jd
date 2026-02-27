import 'package:flutter/material.dart';

class DsGridCard extends StatelessWidget {
  final List<Widget> children;
  const DsGridCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) {
        return children[index];
      },
    );
  }
}
