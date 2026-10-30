import 'package:flutter/material.dart';

class BotonAviso extends StatelessWidget {
  final String etiqueta;
  final String mensaje;
  final bool flotante;
  final int segundos;

  const BotonAviso({
    super.key,
    required this.etiqueta,
    required this.mensaje,
    this.flotante = false,
    this.segundos = 3,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(etiqueta),
            behavior: flotante ? SnackBarBehavior.floating : null,
            duration: Duration(seconds: segundos),
          ),
        );
      },
      child: Icon(Icons.warning_outlined, size: 20, color: Colors.red),
    );
  }
}
