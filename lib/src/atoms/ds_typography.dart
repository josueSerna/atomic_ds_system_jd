import 'package:flutter/material.dart';

class DsHeadlineLarge extends StatelessWidget {
  final String text;
  final Color? color;

  const DsHeadlineLarge(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: color),
    );
  }
}

class DsHeadlineMedium extends StatelessWidget {
  final String text;
  final Color? color;

  const DsHeadlineMedium(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: color),
    );
  }
}

class DsHeadlineSmall extends StatelessWidget {
  final String text;
  final Color? color;

  const DsHeadlineSmall(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: color),
    );
  }
}

class DsLabelSmall extends StatelessWidget {
  final String text;
  final Color? color;

  const DsLabelSmall(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(color: color),
    );
  }
}

class DsBodyMedium extends StatelessWidget {
  final String text;
  final Color? color;

  const DsBodyMedium(this.text, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: color),
    );
  }
}
