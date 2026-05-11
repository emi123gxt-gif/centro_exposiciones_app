import 'package:flutter/material.dart';

class MisReservasScreen extends StatelessWidget {
  const MisReservasScreen({super.key});

  static const Color azulOscuro = Color(0xFF0B234A);
  static const Color rojoPrincipal = Color(0xFFE60000);
  static const Color fondoClaro = Color(0xFFF7F4FB);

  final List<Map<String, String>> reservas = const [
    {
      'espacio': 'Auditorio Principal',
      'fecha': '15/05/2026',
      'hora': '10:00 AM',
      'estado': 'Aprobada',
    },
    {
      'espacio': 'Salón Empresarial',
      'fecha': '20/05/2026',
      'hora': '03:00 PM',
      'estado': 'Pendiente',
    },
  ];

  Color obtenerColorEstado(String estado) {
    switch (estado) {
      case 'Aprobada':
        return Colors.green;
      case 'Pendiente':
        return Colors.orange;
      default:
        return Colors.grey;
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
          'Mis Reservas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: reservas.length,
        itemBuilder: (context, index) {
          final reserva = reservas[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 18),
            padding: const EdgeInsets.all(18),
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

                Text(
                  reserva['espacio']!,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: azulOscuro,
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    const Icon(Icons.calendar_month,
                        color: rojoPrincipal),
                    const SizedBox(width: 8),
                    Text(reserva['fecha']!),
                  ],
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    const Icon(Icons.access_time,
                        color: rojoPrincipal),
                    const SizedBox(width: 8),
                    Text(reserva['hora']!),
                  ],
                ),

                const SizedBox(height: 14),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: obtenerColorEstado(
                      reserva['estado']!,
                    ).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    reserva['estado']!,
                    style: TextStyle(
                      color: obtenerColorEstado(
                        reserva['estado']!,
                      ),
                      fontWeight: FontWeight.bold,
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