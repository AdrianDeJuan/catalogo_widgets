import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  final String texto;
  final VoidCallback? onPressed;
  final bool destacado;

  const BotonAccion({
    super.key,
    required this.texto,
    required this.onPressed,
    this.destacado = false,
  });

  @override
  Widget build(BuildContext context) {
    ButtonStyle style = getStyle();

    return FilledButton(onPressed: onPressed, style: style, child: Text(texto));
  }

  ButtonStyle getStyle() {
    if (destacado) {
      return FilledButton.styleFrom(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
      );
    } else {
      return FilledButton.styleFrom(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black87,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      );
    }
  }
}
