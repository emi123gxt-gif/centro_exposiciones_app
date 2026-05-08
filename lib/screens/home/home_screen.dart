import 'package:flutter/material.dart';

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
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Eventos'),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text('Espacios'),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.book_online),
              title: const Text('Mis Reservas'),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Beneficios Socios'),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesión'),
              onTap: () {},
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
              height: 180,
              decoration: BoxDecoration(
                color: azulOscuro,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Center(
                child: Text(
                  'Bienvenido al\nCentro de Exposiciones',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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

                _buildCard(
                  icon: Icons.event,
                  title: 'Eventos',
                ),

                _buildCard(
                  icon: Icons.apartment,
                  title: 'Espacios',
                ),

                _buildCard(
                  icon: Icons.book_online,
                  title: 'Reservas',
                ),

                _buildCard(
                  icon: Icons.star,
                  title: 'Socios',
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