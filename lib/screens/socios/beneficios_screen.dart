import 'package:flutter/material.dart';

class BeneficiosScreen extends StatelessWidget {
  const BeneficiosScreen({super.key});

  static const Color azulOscuro = Color(0xFF0B234A);
  static const Color rojoPrincipal = Color(0xFFE60000);
  static const Color fondoClaro = Color(0xFFF7F4FB);

  final List<Map<String, dynamic>> beneficios = const [
    {
      'titulo': 'Descuentos Exclusivos',
      'descripcion':
          'Obtén descuentos especiales en reservas de espacios y eventos.',
      'icono': Icons.discount,
    },
    {
      'titulo': 'Reservas Prioritarias',
      'descripcion':
          'Los socios tienen prioridad para reservar auditorios y salones.',
      'icono': Icons.priority_high,
    },
    {
      'titulo': 'Acceso VIP',
      'descripcion':
          'Participa en eventos privados y zonas exclusivas del centro.',
      'icono': Icons.star,
    },
    {
      'titulo': 'Promociones Especiales',
      'descripcion':
          'Recibe promociones y beneficios durante todo el año.',
      'icono': Icons.local_offer,
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
          'Beneficios para Socios',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: beneficios.length,
        itemBuilder: (context, index) {
          final beneficio = beneficios[index];

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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: azulOscuro.withOpacity(0.10),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(
                    beneficio['icono'],
                    size: 38,
                    color: rojoPrincipal,
                  ),
                ),

                const SizedBox(width: 18),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        beneficio['titulo'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: azulOscuro,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        beneficio['descripcion'],
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          height: 1.5,
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