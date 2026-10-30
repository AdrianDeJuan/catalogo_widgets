import 'package:flutter/material.dart';

enum TipoMarcador { imagen, mapa, grafico }

class MarcadorPrototipo extends StatelessWidget {
  final TipoMarcador tipo;
  final double alto;

  const MarcadorPrototipo({super.key, required this.tipo, this.alto = 120});

  @override
  Widget build(BuildContext context) {
    String marcador = getMarcador();
    Color color = getColor();

    return SizedBox(
      height: alto,
      width: 50,
      child: Center(
        child: Card(
          shadowColor: color,
          child: Text(marcador),
        ), //Sin terminar el build
      ),
    );
  }

  String getMarcador() {
    return switch (tipo) {
      TipoMarcador.imagen => "Esto es una imagen",
      TipoMarcador.mapa => "Esto es un mapa",
      TipoMarcador.grafico => "Esto es un grafico",
    };
  }

  Color getColor() {
    return switch (tipo) {
      TipoMarcador.imagen => Colors.green,
      TipoMarcador.mapa => Colors.blue,
      TipoMarcador.grafico => Colors.red,
    };
  }
}
