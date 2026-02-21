import 'package:flutter/material.dart';

class DsHeadlineLarge extends StatelessWidget {
  final String text;

  const DsHeadlineLarge(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}

class DsHeadlineMedium extends StatelessWidget {
  final String text;

  const DsHeadlineMedium(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}

class DsHeadlineSmall extends StatelessWidget {
  final String text;

  const DsHeadlineSmall(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineSmall);
  }
}

class DsLabelSmall extends StatelessWidget {
  final String text;

  const DsLabelSmall(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.labelSmall);
  }
}

class DsBodyMedium extends StatelessWidget {
  final String text;

  const DsBodyMedium(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}
