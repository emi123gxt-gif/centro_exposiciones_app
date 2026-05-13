import 'package:flutter/material.dart';

class DetalleEventoScreen extends StatelessWidget {
  final String nombre;
  final String fecha;
  final String lugar;

  const DetalleEventoScreen({
    super.key,
    required this.nombre,
    required this.fecha,
    required this.lugar,
  });

  static const Color azulOscuro = Color(0xFF0B234A);
  static const Color rojoPrincipal = Color(0xFFE60000);
  static const Color fondoClaro = Color(0xFFF7F4FB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoClaro,
      appBar: AppBar(
        backgroundColor: azulOscuro,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Detalle del Evento',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: azulOscuro,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(
                Icons.event,
                color: Colors.white,
                size: 90,
              ),
            ),

            const SizedBox(height: 24),

            Text(
              nombre,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: azulOscuro,
              ),
            ),

            const SizedBox(height: 14),

            Row(
              children: [
                const Icon(Icons.calendar_month,
                    color: rojoPrincipal),
                const SizedBox(width: 10),
                Text(
                  fecha,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                const Icon(Icons.location_on,
                    color: rojoPrincipal),
                const SizedBox(width: 10),
                Text(
                  lugar,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 28),

            const Text(
              'Descripción',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: azulOscuro,
              ),
            ),

            const SizedBox(height: 12),

            const Text(
              'Este evento reunirá a empresas, visitantes y profesionales para compartir experiencias, innovación y nuevas oportunidades comerciales.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 52,
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
                  'Registrarse al evento',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}