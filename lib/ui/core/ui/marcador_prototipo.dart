import 'package:flutter/material.dart';

enum TipoMarcador { imagen, mapa, grafico }

class MarcadorPrototipo extends StatelessWidget {
  final TipoMarcador tipo;
  final double alto;

  const MarcadorPrototipo({super.key, required this.tipo, this.alto = 120});

  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle();

    return Text("Hola", style: estilo);
  }
}
