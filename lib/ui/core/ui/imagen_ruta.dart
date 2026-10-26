import 'package:flutter/material.dart';

class ImagenRuta extends StatelessWidget {
  final String rutaAsset;
  final bool panoramica;
  final String descripcion;

  const ImagenRuta({
    super.key,
    required this.rutaAsset,
    this.panoramica = false,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: Image.asset(
        width: panoramica ? 300.0 : 240.0,
        height: panoramica ? 120.0 : 180.0,
        rutaAsset,
        fit: BoxFit.cover,
        semanticLabel: descripcion,
        alignment: Alignment.center,
      ),
    );
  }
}
