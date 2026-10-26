import 'package:flutter/material.dart';

enum EstadoRuta { pendiente, completada, error }

class IconoEstado extends StatelessWidget {
  final EstadoRuta estado;
  final double tamano;

  const IconoEstado({super.key, required this.estado, this.tamano = 32});

  @override
  Widget build(BuildContext context) {
    Color color = getColor();
    IconData icon = getIcon();
    String label = getLabel();
    return Icon(icon, size: tamano, color: color, semanticLabel: label);
  }

  Color getColor() {
    Color colorIcono = switch (estado) {
      EstadoRuta.completada => Colors.green,
      EstadoRuta.error => Colors.red,
      EstadoRuta.pendiente => Colors.yellow,
    };
    return colorIcono;
  }

  IconData getIcon() {
    IconData icon = switch (estado) {
      EstadoRuta.completada => Icons.check,
      EstadoRuta.error => Icons.close,
      EstadoRuta.pendiente => Icons.question_mark_outlined,
    };
    return icon;
  }

  String getLabel() {
    String label = switch (estado) {
      EstadoRuta.completada => "Completado",
      EstadoRuta.error => "Error",
      EstadoRuta.pendiente => "Pendiente",
    };
    return label;
  }
}
