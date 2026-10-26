import 'package:flutter/material.dart';

class EspacioPendiente extends StatelessWidget {
  final String etiqueta;
  final bool compacto;

  const EspacioPendiente({
    super.key,
    required this.etiqueta,
    this.compacto = false,
  });

  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle();

    return Text("Hola", style: estilo);
  }
}
