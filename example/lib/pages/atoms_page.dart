import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:flutter/material.dart';

class AtomsPage extends StatefulWidget {
  const AtomsPage({super.key});

  @override
  State<AtomsPage> createState() => _AtomsPageState();
}

class _AtomsPageState extends State<AtomsPage> {
  final _inputController = TextEditingController();

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DsCustomAppBar(title: 'Atomos',),
      body: ListView(
        padding: const EdgeInsets.all(DsSpacing.md),
        children: [
          // ── Typography Widgets ──
          DsHeadlineMedium('DsTypography Widgets'),
          const SizedBox(height: DsSpacing.xs),
          Container(
            padding: const EdgeInsets.all(DsSpacing.md),
            decoration: BoxDecoration(
              color: DsColors.greyDark,
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DsHeadlineLarge('HeadlineLarge'),
                SizedBox(height: DsSpacing.xs),
                DsHeadlineMedium('HeadlineMedium'),
                SizedBox(height: DsSpacing.xs),
                DsHeadlineSmall('HeadlineSmall'),
              ],
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall('LabelSmall — texto pequeño gris'),
          const SizedBox(height: DsSpacing.xxs),
          const DsBodyMedium('BodyMedium — texto de cuerpo Rubik'),
          const SizedBox(height: DsSpacing.xs),
          DsBodyMedium('BodyMedium con color'),
          DsLabelSmall('LabelSmall con color'),

          const SizedBox(height: DsSpacing.lg),

          // ── DsInput ──
          DsHeadlineSmall('DsInput'),
          const SizedBox(height: DsSpacing.xs),
          DsInput(
            controller: _inputController,
            hintText: 'Escribe algo aquí...',
          ),
          const SizedBox(height: DsSpacing.xs),
          const DsInput(hintText: 'Input deshabilitado', enabled: false),
          const SizedBox(height: DsSpacing.xs),
          const DsInput(
            hintText: 'Input con iconos',
            prefixIcon: Icon(Icons.person, color: DsColors.greyDark),
            suffixIcon: Icon(Icons.check_circle, color: DsColors.grass),
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── DsTypeBadge ──
          DsHeadlineSmall('DsTypeBadge'),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall('Tamaños disponibles:'),
          const SizedBox(height: DsSpacing.xs),
          Container(
            padding: const EdgeInsets.all(DsSpacing.sm),
            decoration: BoxDecoration(
              color: DsGetTypeColor.getTypeColor('fire'),
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            child: const Wrap(
              spacing: DsSpacing.xs,
              runSpacing: DsSpacing.xs,
              children: [
                DsTypeBadge(type: 'fire', size: DsTypeBadgeSize.small),
                DsTypeBadge(type: 'fire', size: DsTypeBadgeSize.medium),
                DsTypeBadge(type: 'fire', size: DsTypeBadgeSize.large),
              ],
            ),
          ),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall('Todos los tipos:'),
          const SizedBox(height: DsSpacing.xs),
          Wrap(
            spacing: DsSpacing.xs,
            runSpacing: DsSpacing.xs,
            children: [
              for (final type in [
                'grass',
                'fire',
                'water',
                'electric',
                'psychic',
                'normal',
                'fighting',
                'poison',
                'ground',
                'flying',
                'bug',
                'rock',
                'ghost',
                'dragon',
                'dark',
                'steel',
                'fairy',
                'ice',
              ])
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: DsGetTypeColor.getTypeColor(type),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: DsTypeBadge(type: type),
                ),
            ],
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── DsTypeWrap ──
          DsHeadlineSmall('DsTypeWrap'),
          const SizedBox(height: DsSpacing.xs),
          Container(
            padding: const EdgeInsets.all(DsSpacing.sm),
            decoration: BoxDecoration(
              color: DsGetTypeColor.getTypeColor('grass'),
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            child: const DsTypeWrap(types: ['grass', 'poison']),
          ),
          const SizedBox(height: DsSpacing.xs),
          Container(
            padding: const EdgeInsets.all(DsSpacing.sm),
            decoration: BoxDecoration(
              color: DsGetTypeColor.getTypeColor('dragon'),
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            child: const DsTypeWrap(types: ['dragon', 'flying', 'fire']),
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── DsImageNetwork ──
          DsHeadlineSmall('DsImageNetwork'),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall('Carga imágenes con indicador y manejo de error'),
          const SizedBox(height: DsSpacing.xs),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DsImageNetwork(
                imageUrl:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
                imageSize: 80,
              ),
              DsImageNetwork(
                imageUrl:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
                imageSize: 100,
              ),
              DsImageNetwork(
                imageUrl:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
                imageSize: 120,
              ),
            ],
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── DsPokeballImage ──
          DsHeadlineSmall('DsPokeballImage'),
          const SizedBox(height: DsSpacing.xs),
          const DsLabelSmall('Imagen decorativa de Pokébola con opacidad'),
          const SizedBox(height: DsSpacing.xs),
          Container(
            decoration: BoxDecoration(
              color: DsColors.fire,
              borderRadius: BorderRadius.circular(DsSpacing.xs),
            ),
            clipBehavior: Clip.hardEdge,
            child: const DsPokeballImage(),
          ),

          const SizedBox(height: DsSpacing.xxl),
        ],
      ),
    );
  }
}
