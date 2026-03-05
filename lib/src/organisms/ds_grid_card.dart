import 'package:flutter/material.dart';

class DsGridCard extends StatelessWidget {
  final List<Widget> children;
  final double aspectRatio;
  const DsGridCard({super.key, required this.children, required this.aspectRatio});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: children.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) {
        return children[index];
      },
    );
  }
}
