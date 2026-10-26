import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  final String texto;
  final IconData icono;
  final VoidCallback? onPressed;
  final bool secundario;

  const BotonConIcono({
    super.key,
    required this.texto,
    required this.icono,
    required this.onPressed,
    this.secundario = false,
  });

  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle();

    return Text("Hola", style: estilo);
  }
}
