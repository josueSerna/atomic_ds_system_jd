import 'package:flutter/material.dart';
import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DS Atomic Example')),
        body: Center(
          child: Text(
            'Contenido principal',
            style: DsTypography.textBody.copyWith(color: DsColors.textPrimary),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: DsColors.primary,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}