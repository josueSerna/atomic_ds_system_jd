import 'package:atomic_ds_system_jd/atomic_ds_system_jd.dart';
import 'package:example/pokemon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: DsTheme.theme, home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Pokemon> pokeList = [
      Pokemon(
        name: 'Pikachu',
        number: '025',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
        types: ['eléctrico', 'siniestro'],
      ),
      Pokemon(
        name: 'Venasaur',
        number: '003',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png',
        types: ['grass', 'water'],
      ),
      Pokemon(
        name: 'Charmander',
        number: '004',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
        types: ['fire', 'fantasma'],
      ),
      Pokemon(
        name: 'Venasaur',
        number: '003',
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png',
        types: ['grass', 'water'],
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              DsBodyMedium('Contenido principal'),
              Expanded(
                child: DsGridCard()
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
