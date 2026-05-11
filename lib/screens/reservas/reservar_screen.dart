import 'package:flutter/material.dart';

class ReservarScreen extends StatefulWidget {
  final String nombreEspacio;
  final String precio;

  const ReservarScreen({
    super.key,
    required this.nombreEspacio,
    required this.precio,
  });

  @override
  State<ReservarScreen> createState() => _ReservarScreenState();
}

class _ReservarScreenState extends State<ReservarScreen> {
  static const Color azulOscuro = Color(0xFF0B234A);
  static const Color rojoPrincipal = Color(0xFFE60000);
  static const Color fondoClaro = Color(0xFFF7F4FB);

  DateTime? fechaSeleccionada;
  TimeOfDay? horaSeleccionada;

  final TextEditingController motivoController = TextEditingController();

  Future<void> seleccionarFecha() async {
    final DateTime? fecha = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );

    if (fecha != null) {
      setState(() {
        fechaSeleccionada = fecha;
      });
    }
  }

  Future<void> seleccionarHora() async {
    final TimeOfDay? hora = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (hora != null) {
      setState(() {
        horaSeleccionada = hora;
      });
    }
  }

  void confirmarReserva() {
    if (fechaSeleccionada == null ||
        horaSeleccionada == null ||
        motivoController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor completa todos los campos'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Reserva registrada correctamente'),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondoClaro,
      appBar: AppBar(
        backgroundColor: azulOscuro,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Reservar Espacio',
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
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Espacio seleccionado',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: azulOscuro,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.nombreEspacio,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: azulOscuro,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Precio: ${widget.precio}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Datos de la reserva',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: azulOscuro,
              ),
            ),

            const SizedBox(height: 18),

            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              leading: const Icon(Icons.calendar_month, color: rojoPrincipal),
              title: Text(
                fechaSeleccionada == null
                    ? 'Seleccionar fecha'
                    : 'Fecha: ${fechaSeleccionada!.day}/${fechaSeleccionada!.month}/${fechaSeleccionada!.year}',
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: seleccionarFecha,
            ),

            const SizedBox(height: 14),

            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              leading: const Icon(Icons.access_time, color: rojoPrincipal),
              title: Text(
                horaSeleccionada == null
                    ? 'Seleccionar hora'
                    : 'Hora: ${horaSeleccionada!.format(context)}',
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: seleccionarHora,
            ),

            const SizedBox(height: 18),

            TextField(
              controller: motivoController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Motivo del evento',
                hintText: 'Ejemplo: feria, exposición, conferencia...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 28),

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
                onPressed: confirmarReserva,
                child: const Text(
                  'Confirmar reserva',
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