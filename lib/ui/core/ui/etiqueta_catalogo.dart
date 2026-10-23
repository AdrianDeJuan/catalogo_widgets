import 'package:flutter/material.dart';

class EtiquetaCatalogo extends StatelessWidget {
  final String texto;
  final bool destacada;

  const EtiquetaCatalogo({
    super.key,
    required this.texto,
    this.destacada = false,
  });

  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(
      fontSize: destacada ? 22 : 16,
      fontWeight: destacada ? FontWeight.bold : FontWeight.normal,
      color: destacada ? Colors.indigo : Colors.black87,
    );

    return Text(texto, style: estilo);
  }
}
