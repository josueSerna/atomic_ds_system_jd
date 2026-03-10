import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:example/pokemon.dart';
import 'package:flutter/material.dart';

class OrganismsPage extends StatefulWidget {
  const OrganismsPage({super.key});

  @override
  State<OrganismsPage> createState() => _OrganismsPageState();
}

class _OrganismsPageState extends State<OrganismsPage> {
  final _searchController = TextEditingController();
  late List<Pokemon> _allPokemon;
  late List<Pokemon> _filteredPokemon;

  @override
  void initState() {
    super.initState();
    _allPokemon = [
      Pokemon(
        name: 'Bulbasaur',
        number: '001',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
        types: ['grass', 'poison'],
      ),
      Pokemon(
        name: 'Charmander',
        number: '004',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
        types: ['fire'],
      ),
      Pokemon(
        name: 'Squirtle',
        number: '007',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png',
        types: ['water'],
      ),
      Pokemon(
        name: 'Pikachu',
        number: '025',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
        types: ['electric'],
      ),
      Pokemon(
        name: 'Gengar',
        number: '094',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png',
        types: ['ghost', 'poison'],
      ),
      Pokemon(
        name: 'Dragonite',
        number: '149',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png',
        types: ['dragon', 'flying'],
      ),
      Pokemon(
        name: 'Mewtwo',
        number: '150',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.png',
        types: ['psychic'],
      ),
      Pokemon(
        name: 'Eevee',
        number: '133',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png',
        types: ['normal'],
      ),
    ];
    _filteredPokemon = List.of(_allPokemon);
  }

  void _onSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredPokemon = List.of(_allPokemon);
      } else {
        _filteredPokemon = _allPokemon
            .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ── DsSearchAppBar ──
      appBar: DsSearchAppBar(
        leading: IconButton(
          icon: const Icon(Icons.catching_pokemon),
          onPressed: () {},
        ),
        searchInput: DsSearchInput(
          controller: _searchController,
          hintText: 'Buscar Pokémon...',
          onChanged: _onSearch,
          suffixIcon: _searchController.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, color: DsColors.greyDark),
                  onPressed: () {
                    _searchController.clear();
                    _onSearch('');
                  },
                )
              : null,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: DsColors.greyDark),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header ──
          Padding(
            padding: const EdgeInsets.fromLTRB(
              DsSpacing.md,
              DsSpacing.md,
              DsSpacing.md,
              DsSpacing.xs,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pokédex',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge,
                ),
                DsLabelSmall('${_filteredPokemon.length} Pokémon'),
              ],
            ),
          ),

          // ── DsGridCard con DsCardItems ──
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: DsSpacing.sm),
              child: DsGridCard(
                aspectRatio: 1.4,
                children: _filteredPokemon
                    .map(
                      (pokemon) => DsCardItem(
                        name: pokemon.name,
                        number: pokemon.number,
                        imageUrl: pokemon.imageUrl,
                        types: pokemon.types,
                        onTap: () => _showPokemonDetail(context, pokemon),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showPokemonDetail(BuildContext context, Pokemon pokemon) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        padding: const EdgeInsets.all(DsSpacing.lg),
        decoration: BoxDecoration(
          color: DsColors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(DsSpacing.lg),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: DsColors.greyMedium,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: DsSpacing.md),
            DsImageNetwork(imageUrl: pokemon.imageUrl, imageSize: 160),
            const SizedBox(height: DsSpacing.md),
            Text(pokemon.name, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: DsSpacing.xxs),
            DsLabelSmall('#${pokemon.number}'),
            const SizedBox(height: DsSpacing.sm),
            Wrap(
              spacing: DsSpacing.xs,
              children: pokemon.types
                  .map(
                    (type) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: DsGetTypeColor.getTypeColor(type),
                        borderRadius: BorderRadius.circular(DsSpacing.rounded),
                      ),
                      child: Text(
                        type.toUpperCase(),
                        style: const TextStyle(
                          color: DsColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: DsSpacing.lg),
          ],
        ),
      ),
    );
  }
}
