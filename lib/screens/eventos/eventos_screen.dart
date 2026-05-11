import 'package:flutter/material.dart';

class EventosScreen extends StatelessWidget {
  const EventosScreen({super.key});

  static const Color azulOscuro = Color(0xFF0B234A);
  static const Color rojoPrincipal = Color(0xFFE60000);
  static const Color fondoClaro = Color(0xFFF7F4FB);

  final List<Map<String, String>> eventos = const [
    {
      'titulo': 'Expo Tecnología 2026',
      'fecha': '12 Mayo 2026',
      'hora': '09:00 AM',
      'lugar': 'Auditorio Principal',
    },
    {
      'titulo': 'Feria Empresarial',
      'fecha': '20 Mayo 2026',
      'hora': '02:00 PM',
      'lugar': 'Salón Empresarial',
    },
    {
      'titulo': 'Convención Internacional',
      'fecha': '28 Mayo 2026',
      'hora': '10:00 AM',
      'lugar': 'Área de Exposición',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoClaro,
      appBar: AppBar(
        backgroundColor: azulOscuro,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Eventos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: eventos.length,
        itemBuilder: (context, index) {
          final evento = eventos[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 18),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: const [
                    Icon(
                      Icons.event,
                      color: rojoPrincipal,
                      size: 32,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Evento Disponible',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: azulOscuro,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                Text(
                  evento['titulo']!,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: azulOscuro,
                  ),
                ),

                const SizedBox(height: 14),

                Row(
                  children: [
                    const Icon(Icons.calendar_month,
                        color: rojoPrincipal),
                    const SizedBox(width: 8),
                    Text(evento['fecha']!),
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    const Icon(Icons.access_time,
                        color: rojoPrincipal),
                    const SizedBox(width: 8),
                    Text(evento['hora']!),
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    const Icon(Icons.location_on,
                        color: rojoPrincipal),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(evento['lugar']!),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: rojoPrincipal,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Ver detalles',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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