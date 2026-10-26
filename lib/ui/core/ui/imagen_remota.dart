import 'package:flutter/material.dart';

class ImagenRemota extends StatelessWidget {
  final String url;
  final BoxFit ajuste;
  final bool decorativa;
  final String? descripcion;

  const ImagenRemota({
    super.key,
    required this.url,
    this.ajuste = BoxFit.cover,
    this.decorativa = false,
    this.descripcion,
  }) : assert(
         !decorativa || descripcion != null,
         "Si es imagen decorativa tienes que poner si o si una decripcion",
       );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: Image.network(
        url,
        fit: ajuste,
        semanticLabel: descripcion ?? "",
        alignment: Alignment.center,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return const SizedBox(
            height: 160,
            child: Center(child: CircularProgressIndicator()),
          );
        },
        errorBuilder: (context, error, stackTrace) => const SizedBox(
          height: 160,
          child: Center(child: Text('Imagen no disponible')),
        ),
      ),
    );
  }
}
