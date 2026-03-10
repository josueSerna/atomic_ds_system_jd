import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:flutter/material.dart';

class MoleculesPage extends StatefulWidget {
  const MoleculesPage({super.key});

  @override
  State<MoleculesPage> createState() => _MoleculesPageState();
}

class _MoleculesPageState extends State<MoleculesPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Molecules')),
      body: ListView(
        padding: const EdgeInsets.all(DsSpacing.md),
        children: [
          // ── DsSearchInput ──
          _SectionTitle('DsSearchInput'),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall('Campo de búsqueda con estilo pill'),
          const SizedBox(height: DsSpacing.xs),
          Container(
            padding: const EdgeInsets.all(DsSpacing.sm),
            decoration: BoxDecoration(
              color: DsColors.greyLight,
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            child: DsSearchInput(
              controller: _searchController,
              hintText: 'Buscar Pokémon...',
              onChanged: (value) {},
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          Container(
            padding: const EdgeInsets.all(DsSpacing.sm),
            decoration: BoxDecoration(
              color: DsColors.greyLight,
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            child: const DsSearchInput(
              enabled: false,
              hintText: 'Búsqueda deshabilitada',
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          Container(
            padding: const EdgeInsets.all(DsSpacing.sm),
            decoration: BoxDecoration(
              color: DsColors.red,
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            child: DsSearchInput(
              hintText: 'Buscar en Pokédex...',
              suffixIcon: IconButton(
                icon: const Icon(Icons.tune, color: DsColors.greyDark),
                onPressed: () {},
              ),
            ),
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── DsCardMenu ──
          _SectionTitle('DsCardMenu'),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall('Tarjetas de menú con gradient y Pokébola'),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 90,
            child: DsCardMenu(
              name: 'Pokédex',
              color: DsColors.fire,
              onTap: () {},
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 90,
            child: DsCardMenu(
              name: 'Movimientos',
              color: DsColors.water,
              onTap: () {},
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 90,
            child: DsCardMenu(
              name: 'Habilidades',
              color: DsColors.grass,
              onTap: () {},
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 90,
            child: DsCardMenu(
              name: 'Objetos',
              color: DsColors.electric,
              onTap: () {},
            ),
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── DsCardItem ──
          _SectionTitle('DsCardItem'),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall(
            'Tarjeta Pokémon con imagen, tipo, número y gradiente',
          ),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 140,
            child: DsCardItem(
              name: 'Bulbasaur',
              number: '001',
              imageUrl:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
              types: ['grass', 'poison'],
              onTap: () {},
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 140,
            child: DsCardItem(
              name: 'Charizard',
              number: '006',
              imageUrl:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
              types: ['fire', 'flying'],
              onTap: () {},
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 140,
            child: DsCardItem(
              name: 'Blastoise',
              number: '009',
              imageUrl:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png',
              types: ['water'],
              onTap: () {},
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          SizedBox(
            height: 140,
            child: DsCardItem(
              name: 'Gengar',
              number: '094',
              imageUrl:
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png',
              types: ['ghost', 'poison'],
              onTap: () {},
            ),
          ),

          const SizedBox(height: DsSpacing.xxl),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(color: DsColors.red),
    );
  }
}
