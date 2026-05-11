import 'package:flutter/material.dart';
import 'detalle_espacio_screen.dart';

class EspaciosScreen extends StatelessWidget {
  const EspaciosScreen({super.key});

  static const Color azulOscuro = Color(0xFF0B234A);
  static const Color rojoPrincipal = Color(0xFFE60000);
  static const Color fondoClaro = Color(0xFFF7F4FB);

  final List<Map<String, String>> espacios = const [
    {
      'nombre': 'Auditorio Principal',
      'tipo': 'Auditorio',
      'capacidad': '500 personas',
      'precio': '\$250 por día',
      'icono': 'auditorio',
    },
    {
      'nombre': 'Salón Empresarial',
      'tipo': 'Salón',
      'capacidad': '120 personas',
      'precio': '\$150 por día',
      'icono': 'salon',
    },
    {
      'nombre': 'Stand Comercial',
      'tipo': 'Stand',
      'capacidad': '10 personas',
      'precio': '\$50 por día',
      'icono': 'stand',
    },
    {
      'nombre': 'Área de Exposición',
      'tipo': 'Exposición',
      'capacidad': '300 personas',
      'precio': '\$200 por día',
      'icono': 'area',
    },
  ];

  IconData obtenerIcono(String icono) {
    switch (icono) {
      case 'auditorio':
        return Icons.groups;
      case 'salon':
        return Icons.meeting_room;
      case 'stand':
        return Icons.storefront;
      case 'area':
        return Icons.apartment;
      default:
        return Icons.place;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoClaro,
      appBar: AppBar(
        backgroundColor: azulOscuro,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Espacios Disponibles',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: espacios.length,
        itemBuilder: (context, index) {
          final espacio = espacios[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 18),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: azulOscuro.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(
                    obtenerIcono(espacio['icono']!),
                    color: rojoPrincipal,
                    size: 38,
                  ),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        espacio['nombre']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: azulOscuro,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        'Tipo: ${espacio['tipo']}',
                        style: const TextStyle(color: Colors.black54),
                      ),

                      Text(
                        'Capacidad: ${espacio['capacidad']}',
                        style: const TextStyle(color: Colors.black54),
                      ),

                      Text(
                        'Precio: ${espacio['precio']}',
                        style: const TextStyle(color: Colors.black54),
                      ),

                      const SizedBox(height: 12),

                      SizedBox(
                        height: 38,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: rojoPrincipal,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetalleEspacioScreen(
                                  nombre: espacio['nombre']!,
                                  tipo: espacio['tipo']!,
                                  capacidad: espacio['capacidad']!,
                                  precio: espacio['precio']!,
                                ),
                              ),
                            );
                          },
                          child: const Text('Reservar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}