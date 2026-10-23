import 'package:flutter/material.dart';

enum TipoTexto { titulo, subtitulo, cuerpo }

class TextoJerarquico extends StatelessWidget {
  final String texto;
  final TipoTexto tipoTexto;
  const TextoJerarquico({
    super.key,
    required this.texto,
    this.tipoTexto = TipoTexto.cuerpo,
  });

  @override
  Widget build(BuildContext context) {
    double tamanyoTexto = getTamanyo();

    FontWeight pesoFuente = getFuente();

    Color colorTexto = getColor();

    final estilo = TextStyle(
      fontSize: tamanyoTexto,
      fontWeight: pesoFuente,
      color: colorTexto,
    );

    return Text(texto, style: estilo);
  }

  Color getColor() {
    Color colorTexto = switch (tipoTexto) {
      TipoTexto.titulo => Colors.indigo,
      TipoTexto.subtitulo => Colors.black87,
      TipoTexto.cuerpo => Colors.black54,
    };
    return colorTexto;
  }

  FontWeight getFuente() {
    FontWeight pesoFuente = switch (tipoTexto) {
      TipoTexto.titulo => FontWeight.bold,
      TipoTexto.subtitulo => FontWeight.w600,
      TipoTexto.cuerpo => FontWeight.normal,
    };
    return pesoFuente;
  }

  double getTamanyo() {
    double tamanyoTexto = switch (tipoTexto) {
      TipoTexto.titulo => 24,
      TipoTexto.subtitulo => 20,
      TipoTexto.cuerpo => 16,
    };
    return tamanyoTexto;
  }
}
