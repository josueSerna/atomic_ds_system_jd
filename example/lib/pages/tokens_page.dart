import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:flutter/material.dart';

class TokensPage extends StatelessWidget {
  const TokensPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tokens')),
      body: ListView(
        padding: const EdgeInsets.all(DsSpacing.md),
        children: [
          // ── Colores Principales ──
          _SectionTitle('Colores Principales'),
          const SizedBox(height: DsSpacing.xs),
          Wrap(
            spacing: DsSpacing.xs,
            runSpacing: DsSpacing.xs,
            children: const [
              _ColorChip('Blue', DsColors.blue),
              _ColorChip('Yellow', DsColors.yellow),
              _ColorChip('Red', DsColors.red),
              _ColorChip('White', DsColors.white, textDark: true),
              _ColorChip('Black', DsColors.black),
              _ColorChip('Grey Light', DsColors.greyLight, textDark: true),
              _ColorChip('Grey Medium', DsColors.greyMedium, textDark: true),
              _ColorChip('Grey Dark', DsColors.greyDark),
            ],
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── Colores de Tipos Pokémon ──
          _SectionTitle('Colores de Tipos Pokémon'),
          const SizedBox(height: DsSpacing.xs),
          Wrap(
            spacing: DsSpacing.xs,
            runSpacing: DsSpacing.xs,
            children: const [
              _ColorChip('Grass', DsColors.grass),
              _ColorChip('Fire', DsColors.fire),
              _ColorChip('Water', DsColors.water),
              _ColorChip('Electric', DsColors.electric, textDark: true),
              _ColorChip('Psychic', DsColors.psychic),
              _ColorChip('Normal', DsColors.normal),
              _ColorChip('Fighting', DsColors.fighting),
              _ColorChip('Poison', DsColors.poison),
              _ColorChip('Ground', DsColors.ground, textDark: true),
              _ColorChip('Flying', DsColors.flying),
              _ColorChip('Bug', DsColors.bug),
              _ColorChip('Rock', DsColors.rock),
              _ColorChip('Ghost', DsColors.ghost),
              _ColorChip('Dragon', DsColors.dragon),
              _ColorChip('Dark', DsColors.dark),
              _ColorChip('Steel', DsColors.steel, textDark: true),
              _ColorChip('Fairy', DsColors.fairy),
              _ColorChip('Ice', DsColors.ice, textDark: true),
            ],
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── Dark Theme Colors ──
          _SectionTitle('Colores Dark Theme'),
          const SizedBox(height: DsSpacing.xs),
          Wrap(
            spacing: DsSpacing.xs,
            runSpacing: DsSpacing.xs,
            children: const [
              _ColorChip('Background', DsColors.darkBackground),
              _ColorChip('Surface', DsColors.darkSurface),
              _ColorChip('Card', DsColors.darkCard),
              _ColorChip(
                'Text Primary',
                DsColors.darkTextPrimary,
                textDark: true,
              ),
              _ColorChip(
                'Text Secondary',
                DsColors.darkTextSecondary,
                textDark: true,
              ),
              _ColorChip('Divider', DsColors.darkDivider),
            ],
          ),

          const SizedBox(height: DsSpacing.lg),

          // ── Spacing ──
          _SectionTitle('Espaciado (DsSpacing)'),
          const SizedBox(height: DsSpacing.xs),
          const _SpacingRow('xxs', DsSpacing.xxs),
          const _SpacingRow('xs', DsSpacing.xs),
          const _SpacingRow('sm', DsSpacing.sm),
          const _SpacingRow('md', DsSpacing.md),
          const _SpacingRow('lg', DsSpacing.lg),
          const _SpacingRow('xl', DsSpacing.xl),
          const _SpacingRow('xxl', DsSpacing.xxl),

          const SizedBox(height: DsSpacing.lg),

          // ── Tipografía ──
          _SectionTitle('Tipografía (TextTheme)'),
          const SizedBox(height: DsSpacing.xs),
          _TypographyPreview(context),

          const SizedBox(height: DsSpacing.xxl),
        ],
      ),
    );
  }
}

// ── Helpers ──

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

class _ColorChip extends StatelessWidget {
  final String label;
  final Color color;
  final bool textDark;

  const _ColorChip(this.label, this.color, {this.textDark = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 72,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(DsSpacing.xs),
        border: Border.all(color: DsColors.greyMedium, width: 0.5),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: textDark ? DsColors.black : DsColors.white,
        ),
      ),
    );
  }
}

class _SpacingRow extends StatelessWidget {
  final String label;
  final double value;

  const _SpacingRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(
              '$label',
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '${value.toInt()}px',
              style: const TextStyle(fontSize: 12, color: DsColors.greyDark),
            ),
          ),
          Container(
            width: value * 4,
            height: 20,
            decoration: BoxDecoration(
              color: DsColors.blue.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}

class _TypographyPreview extends StatelessWidget {
  final BuildContext parentContext;
  const _TypographyPreview(this.parentContext);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(parentContext).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Display Large',
          style: theme.displayLarge?.copyWith(fontSize: 32),
        ),
        const SizedBox(height: 4),
        Text(
          'Display Medium',
          style: theme.displayMedium?.copyWith(fontSize: 28),
        ),
        const SizedBox(height: 4),
        Text('Display Small', style: theme.displaySmall),
        const SizedBox(height: 4),
        Container(
          color: DsColors.greyDark,
          padding: const EdgeInsets.all(8),
          child: Text('Headline Large', style: theme.headlineLarge),
        ),
        const SizedBox(height: 4),
        Container(
          color: DsColors.greyDark,
          padding: const EdgeInsets.all(8),
          child: Text('Headline Medium', style: theme.headlineMedium),
        ),
        const SizedBox(height: 4),
        Container(
          color: DsColors.greyDark,
          padding: const EdgeInsets.all(8),
          child: Text('Headline Small', style: theme.headlineSmall),
        ),
        const SizedBox(height: 4),
        Text('Title Large', style: theme.titleLarge),
        const SizedBox(height: 4),
        Text('Title Medium', style: theme.titleMedium),
        const SizedBox(height: 4),
        Text('Title Small', style: theme.titleSmall),
        const SizedBox(height: 4),
        Text('Body Large', style: theme.bodyLarge),
        const SizedBox(height: 4),
        Text('Body Medium (Rubik)', style: theme.bodyMedium),
        const SizedBox(height: 4),
        Text('Body Small', style: theme.bodySmall),
        const SizedBox(height: 4),
        Text('Label Large', style: theme.labelLarge),
        const SizedBox(height: 4),
        Text('Label Medium', style: theme.labelMedium),
        const SizedBox(height: 4),
        Text('Label Small (Rubik)', style: theme.labelSmall),
      ],
    );
  }
}
