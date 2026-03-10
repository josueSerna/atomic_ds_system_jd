import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:example/pages/atoms_page.dart';
import 'package:example/pages/molecules_page.dart';
import 'package:example/pages/organisms_page.dart';
import 'package:example/pages/tokens_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atomic DS Showcase',
      theme: DsTheme.theme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DsCustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(DsSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DsBodyMedium('Explora todos los componentes del paquete'),
              const SizedBox(height: DsSpacing.md),
              Expanded(
                child: DsGridCard(
                  aspectRatio: 2.0,
                  children: [
                    DsCardMenu(
                      name: 'Tokens',
                      color: DsColors.blue,
                      onTap: () => _navigateTo(context, const TokensPage()),
                    ),
                    DsCardMenu(
                      name: 'Atoms',
                      color: DsColors.grass,
                      onTap: () => _navigateTo(context, const AtomsPage()),
                    ),
                    DsCardMenu(
                      name: 'Molecules',
                      color: DsColors.fire,
                      onTap: () => _navigateTo(context, const MoleculesPage()),
                    ),
                    DsCardMenu(
                      name: 'Organisms',
                      color: DsColors.dragon,
                      onTap: () => _navigateTo(context, const OrganismsPage()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }
}
