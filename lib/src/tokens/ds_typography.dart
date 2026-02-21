import 'package:flutter/material.dart';

/// Widget de texto con estilo headlineLarge del tema
class DsHeadlineLarge extends StatelessWidget {
  final String text;

  const DsHeadlineLarge(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}

/// Widget de texto con estilo headlineSmall del tema
class DsHeadlineSmall extends StatelessWidget {
  final String text;

  const DsHeadlineSmall(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineSmall);
  }
}
