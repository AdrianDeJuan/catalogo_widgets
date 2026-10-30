import 'package:flutter/material.dart';
import 'package:catalogo_widgets/ui/core/ui/pantalla_demostracion.dart';
import 'package:catalogo_widgets/ui/core/ui/boton_aviso.dart';

class ScaffoldEjemplosPantalla extends StatelessWidget {
  const ScaffoldEjemplosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplos de Scaffold y AppBar'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Center(
                      child: Text(
                        'PantallaDemostracion',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Clase propia que simplifica la creación de una pantalla usando Scaffold y AppBar.',
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Propiedades',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'titulo',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(
                            text: ': obligatorio. Texto que aparece en el AppBar.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'contenido',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(
                            text: ': obligatorio. Widget que se coloca en el body del Scaffold.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'destacada',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(
                            text: ': opcional. Por defecto false. Si es true, el fondo de la pantalla pasa a azul.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'centrarTitulo',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(
                            text: ': opcional. Por defecto false. Centra el título del AppBar.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Ejemplo de uso',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F4F6),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.fromBorderSide(
                            BorderSide(color: Color(0xFFD1D5DB)),
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(16),
                          child: SelectableText(
                            "PantallaDemostracion(\n"
                            " titulo: 'Detalle de ruta',\n"
                            " contenido: const Center(\n"
                            "   child: Text('Contenido de la pantalla'),\n"
                            " ),\n"
                            " destacada: true,\n"
                            " centrarTitulo: true,\n"
                            "),",
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Demostraciones',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Por defecto (destacada: false, centrarTitulo: false)',
                    ),
                    SizedBox(
                      width: 360,
                      height: 210,
                      child: PantallaDemostracion(
                        titulo: 'Detalle de ruta',
                        contenido: const Center(
                          child: Text('Contenido de ejemplo'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text('Destacada y título centrado'),
                    SizedBox(
                      width: 360,
                      height: 210,
                      child: PantallaDemostracion(
                        titulo: 'Ruta favorita',
                        contenido: const Center(
                          child: Text(
                            'Pantalla destacada',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        destacada: true,
                        centrarTitulo: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Center(
                      child: Text(
                        'BotonAviso',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Botón con icono que utiliza ScaffoldMessenger para mostrar un SnackBar.',
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Propiedades',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'etiqueta',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(
                            text: ': obligatorio. Es el texto que aparece en el SnackBar.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'mensaje',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(text: ': obligatorio en el constructor, .'),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'flotante',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(
                            text: ': opcional. Por defecto false. Si es true, el SnackBar aparece flotando.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 6),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'segundos',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'monospace',
                            ),
                          ),
                          TextSpan(
                            text: ': opcional. Por defecto 3. Duración del aviso en segundos.',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Ejemplo de uso',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFF3F4F6),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.fromBorderSide(
                            BorderSide(color: Color(0xFFD1D5DB)),
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(16),
                          child: SelectableText(
                            "BotonAviso(\n"
                            " etiqueta: 'Aviso mostrado',\n"
                            " mensaje: 'Este campo no se muestra aún'\n,"
                            " flotante: true,\n"
                            " segundos: 5,\n"
                            "),",
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Demostraciones',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('Aviso normal (flotante: false)'),
                    BotonAviso(etiqueta: 'Aviso normal', mensaje: 'Aviso.'),
                    const SizedBox(height: 16),
                    const Text('Aviso flotante durante 5 segundos'),
                    BotonAviso(
                      etiqueta: 'Aviso flotante',
                      mensaje: 'Aviso.',
                      flotante: true,
                      segundos: 5,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
