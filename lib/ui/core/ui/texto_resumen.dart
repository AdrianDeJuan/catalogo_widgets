import 'package:flutter/material.dart';

class TextoResumen extends StatelessWidget {
  final String texto;
  final int maxNumLines;
  final TextAlign alineacion;

  const TextoResumen({
    super.key,
    required this.texto,
    required this.maxNumLines,
    this.alineacion = TextAlign.center,
  }) : assert(maxNumLines > 0, "Como minimo tiene que haber 1 linea");

  @override
  Widget build(BuildContext context) {
    final int lineas;
    if (maxNumLines < 1) {
      lineas = 1;
    } else {
      lineas = maxNumLines;
    }
    return Text(
      texto,
      textAlign: alineacion,
      overflow: TextOverflow.ellipsis,
      maxLines: lineas,
    );
  }
}
