import 'package:flutter/material.dart';
import '../reservas/reservar_screen.dart';

class DetalleEspacioScreen extends StatelessWidget {
  final String nombre;
  final String tipo;
  final String capacidad;
  final String precio;

  const DetalleEspacioScreen({
    super.key,
    required this.nombre,
    required this.tipo,
    required this.capacidad,
    required this.precio,
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
          'Detalle del Espacio',
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
              height: 190,
              decoration: BoxDecoration(
                color: azulOscuro,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(
                Icons.apartment,
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

            const SizedBox(height: 10),

            Text(
              'Tipo: $tipo',
              style: const TextStyle(fontSize: 17, color: Colors.black54),
            ),

            const SizedBox(height: 8),

            Text(
              'Capacidad: $capacidad',
              style: const TextStyle(fontSize: 17, color: Colors.black54),
            ),

            const SizedBox(height: 8),

            Text(
              'Precio: $precio',
              style: const TextStyle(fontSize: 17, color: Colors.black54),
            ),

            const SizedBox(height: 24),

            const Text(
              'Descripción',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: azulOscuro,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Este espacio está diseñado para eventos, exposiciones, reuniones empresariales y actividades comerciales. Cuenta con instalaciones cómodas, buena iluminación y acceso para los visitantes.',
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReservarScreen(
                        nombreEspacio: nombre,
                        precio: precio,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Reservar este espacio',
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