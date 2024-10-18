import 'package:flutter/material.dart';

class ServicesContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color buttonColor;

  ServicesContainer({
    this.backgroundColor = Colors.lightBlueAccent, // Change to a desired color
    this.buttonColor = Colors.blue, // Customize button color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
        children: [
          // Header Title
          Text(
            'HYPER AGENDADOS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // Section Title: SERVICES
          Text(
            'SERVICIOS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // Service Circles (e.g. AUTHORISATIONS, SPECIALIST APPOINTMENT)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildServiceRectangle('AUTORIZACIONES\nEN LÍNEA'),
              _buildServiceRectangle('CITA CON\nESPECIALISTA'),
            ],
          ),
          const SizedBox(height: 16),

          // Second Row of Service Circles
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildServiceRectangle('FACTURACIÓN'),
              _buildServiceRectangle('CANCELAR\nCITA'),
            ],
          ),
          const SizedBox(height: 32),

          // Section Title: ONLINE PROCEDURES
          Text(
            'TRÁMITES EN LÍNEA',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          // List of Buttons for Online Procedures
          _buildServiceButton('Imprime certificados de incapacidad'),
          _buildServiceButton('Imprime certificado de pagos'),
          _buildServiceButton('Consulta preautorizaciones'),
          _buildServiceButton('Imprime duplicados de carné'),
          _buildServiceButton('Actualiza tus datos'),
          _buildServiceButton('Consulta de documentos pendientes'),

          const SizedBox(height: 16),

          // Main Button for More Procedures
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: buttonColor,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                // Action for "More Procedures"
              },
              child: const Text(
                'MAS TRÁMITES AQUÍ',
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
  }

  // Method to build service circle buttons (e.g. Authorizations, Specialist Appointment)
  Widget _buildServiceRectangle(String text) {
  return Container(
    width: 150, // Ajusta el ancho del rectángulo
    height: 100, // Ajusta la altura del rectángulo
    decoration: BoxDecoration(
      color: Colors.white, // Color de fondo del rectángulo
      borderRadius: BorderRadius.circular(12), // Bordes redondeados
      boxShadow: [ // Sombras opcionales para darle más profundidad
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 2), // Cambia la dirección de la sombra si es necesario
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

  // Method to build buttons for the list of online procedures
  Widget _buildServiceButton(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // Text color
          backgroundColor: Colors.white, // Button background
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          // Action for service button
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
