import 'package:flutter/material.dart';

class DsGetTypeColor {
  /// Obtiene el color según el tipo Pokémon.
  static Color getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'grass':
      case 'planta':
        return const Color(0xFF78C850);
      case 'fire':
      case 'fuego':
        return const Color(0xFFF08030);
      case 'water':
      case 'agua':
        return const Color(0xFF6890F0);
      case 'electric':
      case 'eléctrico':
        return const Color(0xFFF8D030);
      case 'psychic':
      case 'psíquico':
        return const Color(0xFFF85888);
      case 'normal':
        return const Color(0xFFA8A878);
      case 'fighting':
      case 'lucha':
        return const Color(0xFFC03028);
      case 'poison':
      case 'veneno':
        return const Color(0xFFA040A0);
      case 'ground':
      case 'tierra':
        return const Color(0xFFE0C068);
      case 'flying':
      case 'volador':
        return const Color(0xFFA890F0);
      case 'bug':
      case 'bicho':
        return const Color(0xFFA8B820);
      case 'rock':
      case 'roca':
        return const Color(0xFFB8A038);
      case 'ghost':
      case 'fantasma':
        return const Color(0xFF705898);
      case 'dragon':
      case 'dragón':
        return const Color(0xFF7038F8);
      case 'dark':
      case 'siniestro':
        return const Color(0xFF705848);
      case 'steel':
      case 'acero':
        return const Color(0xFFB8B8D0);
      case 'fairy':
      case 'hada':
        return const Color(0xFFEE99AC);
      case 'ice':
      case 'hielo':
        return const Color(0xFF98D8D8);
      default:
        return const Color(0xFF68A090);
    }
  }
}
