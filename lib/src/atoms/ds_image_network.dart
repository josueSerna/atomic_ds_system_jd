import 'package:flutter/material.dart';

class DsImageNetwork extends StatelessWidget {
  final String imageUrl;
  final double imageSize;
  const DsImageNetwork({
    super.key,
    required this.imageUrl,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: imageSize,
      fit: BoxFit.contain,
      errorBuilder: (_, __, ___) =>
          Icon(Icons.catching_pokemon, size: imageSize, color: Colors.white30),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return SizedBox(
          height: imageSize,
          child: Center(
            child: CircularProgressIndicator(color: Colors.white30),
          ),
        );
      },
    );
  }
}
