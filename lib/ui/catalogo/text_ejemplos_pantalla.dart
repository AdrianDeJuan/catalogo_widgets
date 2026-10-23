import 'package:catalogo_widgets/ui/core/ui/texto_jerarquico.dart';
import 'package:flutter/material.dart';
import 'package:catalogo_widgets/ui/core/ui/texto_resumen.dart';
import 'package:catalogo_widgets/ui/core/ui/etiqueta_catalogo.dart';

class TextEjemplosPantalla extends StatelessWidget {
  const TextEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplos de Text')),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Aquí añadiremos los ejemplos del tutorial.
          const ListTile(
            subtitle: Text(
              'Ejemplos normales de texto',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const Text('Ruta de la cascada'),
          const Text(
            'Ruta de la cascada',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          const Divider(height: 30, thickness: 1),
          const ListTile(
            subtitle: Text(
              'Ejemplos de la clase etiqueta catalogo',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const EtiquetaCatalogo(texto: 'Ruta de la cascada', destacada: true),
          const EtiquetaCatalogo(texto: "Ruta de la cascada", destacada: false),
          const Divider(height: 30, thickness: 1),
          const ListTile(
            subtitle: Text(
              'Ejemplos de SizedBox',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const Text(
            'Ruta de la cascada',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
          const Center(
            child: SizedBox(
              width: 150,
              child: Text('Una ruta fácil', textAlign: TextAlign.right),
            ),
          ),
          const Center(
            child: SizedBox(
              width: 220,
              child: Text(
                "Una ruta fácil, con un paisaje espectacular y una cascada impresionante. Ideal para disfrutar en familia y hacer fotos increíbles.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const Center(
            child: SizedBox(
              width: 180,
              child: Text(
                'Una descripción más larga que el espacio disponible',
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          const Text('12 km', semanticsLabel: 'Doce kilómetros'),
          const Divider(height: 30, thickness: 1),
          const ListTile(
            subtitle: Text(
              'Ejemplos de la clase texto jerarquico',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const TextoJerarquico(
            texto: "Ruta de la cascada",
            tipoTexto: TipoTexto.cuerpo,
          ),
          const TextoJerarquico(
            texto: "Ruta de la cascada",
            tipoTexto: TipoTexto.subtitulo,
          ),
          const TextoJerarquico(
            texto: "Ruta de la cascada",
            tipoTexto: TipoTexto.titulo,
          ),
          const EtiquetaCatalogo(texto: "Ruta de la cascada", destacada: true),
          const Divider(height: 30, thickness: 1),
          const ListTile(
            subtitle: Text(
              'Ejemplos de la clase texto resumen',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const TextoResumen(
            texto: "Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada y Ruta de la cascada",
            maxNumLines: 1,
            alineacion: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
