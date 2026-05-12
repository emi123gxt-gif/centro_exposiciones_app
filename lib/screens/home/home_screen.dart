import 'package:flutter/material.dart';
import '../espacios/espacios_screen.dart';
import '../reservas/mis_reservas_screen.dart';
import '../eventos/eventos_screen.dart';
import '../socios/beneficios_screen.dart';
import '../perfil/perfil_screen.dart';
import '../auth/login_screen.dart';
import '../info/info_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color azulOscuro = Color(0xFF0B234A);
  static const Color rojoPrincipal = Color(0xFFE60000);
  static const Color fondoClaro = Color(0xFFF7F4FB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoClaro,

      appBar: AppBar(
        backgroundColor: azulOscuro,
        title: const Text(
          'Centro de Exposiciones',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: azulOscuro,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: azulOscuro,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Bienvenido',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
           ListTile(
  leading: const Icon(Icons.info_outline),
  title: const Text('Información'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const InfoScreen(),
      ),
    );
  },
),
           ListTile(
  leading: const Icon(Icons.person),
  title: const Text('Mi Perfil'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PerfilScreen(),
      ),
    );
  },
),

            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Eventos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EventosScreen(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text('Espacios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EspaciosScreen(),
                    ),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.book_online),
              title: const Text('Mis Reservas'),
              onTap: () {
                Navigator.push(
                   context,
                  MaterialPageRoute(
                    builder: (context) => const MisReservasScreen(),
        ),
       );
    },
   ),

            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Beneficios Socios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BeneficiosScreen(),
                  ),
                );
              },
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesión'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
  width: double.infinity,
  padding: const EdgeInsets.all(28),
  decoration: BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color(0xFF0B234A),
        Color(0xFF163B73),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.circular(28),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.15),
        blurRadius: 14,
        offset: const Offset(0, 8),
      ),
    ],
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: const [

                Text(
                  'Bienvenido 👋',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Centro de\nExposiciones',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(22),
            ),
            child: const Icon(
              Icons.business,
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),

      const SizedBox(height: 24),

      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.event_available,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                'Reserva espacios y participa en eventos exclusivos.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),

            const SizedBox(height: 30),

            const Text(
              'Servicios',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: azulOscuro,
              ),
            ),

            const SizedBox(height: 20),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [

                GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EventosScreen(),
      ),
    );
  },
  child: _buildCard(
    icon: Icons.event,
    title: 'Eventos',
  ),
),

                GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EspaciosScreen(),
      ),
    );
  },
  child: _buildCard(
    icon: Icons.apartment,
    title: 'Espacios',
  ),
),

                GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MisReservasScreen(),
      ),
    );
  },
  child: _buildCard(
    icon: Icons.book_online,
    title: 'Reservas',
  ),
),
                GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BeneficiosScreen(),
      ),
    );
  },
  child: _buildCard(
    icon: Icons.star,
    title: 'Socios',
  ),
),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String title,
  }) {
    return Container(
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(
            icon,
            size: 50,
            color: rojoPrincipal,
          ),

          const SizedBox(height: 12),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: azulOscuro,
            ),
          ),
        ],
      ),
    );
  }
}