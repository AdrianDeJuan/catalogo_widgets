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
    return Center(
      child: SizedBox(
        height: compacto ? 80 : 160,
        width: 50,
        child: Placeholder(child: Text(etiqueta)), //Posible error?
      ),
    );
  }
}
