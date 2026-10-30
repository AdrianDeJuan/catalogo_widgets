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
    return Row(
      children: [
        FilledButton.icon(
          onPressed: onPressed,
          icon: Icon(icono),
          label: Text(texto),
        ),
        const SizedBox(width: 20),
        OutlinedButton.icon(
          onPressed: onPressed,
          icon: secundario ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          label: secundario ? Text("Favorito") : Text("No favorito"),
        ),
      ],
    );
  }
}
