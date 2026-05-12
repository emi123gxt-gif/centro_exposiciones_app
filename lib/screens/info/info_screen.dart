import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

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
          'Información del Centro',
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
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: azulOscuro,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.business,
                    size: 70,
                    color: Colors.white,
                  ),
                  SizedBox(height: 14),
                  Text(
                    'Centro de Exposiciones',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Espacio moderno para eventos, ferias y exposiciones.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            _sectionTitle('Sobre nosotros'),

            const Text(
              'El Centro de Exposiciones ofrece espacios adecuados para la realización de ferias, eventos empresariales, conferencias, exposiciones comerciales y actividades culturales.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 24),

            _sectionTitle('Servicios'),

            _infoItem(Icons.event, 'Organización de eventos'),
            _infoItem(Icons.apartment, 'Alquiler de espacios'),
            _infoItem(Icons.groups, 'Auditorios y salones'),
            _infoItem(Icons.storefront, 'Stands comerciales'),

            const SizedBox(height: 24),

            _sectionTitle('Horario de atención'),

            _infoItem(Icons.access_time, 'Lunes a viernes: 08:00 - 18:00'),
            _infoItem(Icons.access_time, 'Sábados: 09:00 - 14:00'),

            const SizedBox(height: 24),

            _sectionTitle('Contacto'),

            _infoItem(Icons.phone, 'Teléfono: 0999999999'),
            _infoItem(Icons.email, 'Correo: info@centroexposiciones.com'),
            _infoItem(Icons.location_on, 'Ubicación: Quito, Ecuador'),
          ],
        ),
      ),
    );
  }

  static Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          color: azulOscuro,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget _infoItem(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: rojoPrincipal),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}