import 'package:flutter/material.dart';
import '../screens/services_screen.dart';

class InfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          _buildEPSLogo(
            context,
            'lib/images/logo_nueva_eps.png',
            'NUEVA EPS',
            Colors.blue,
            Colors.blue[100]!,
          ),
          SizedBox(height: 16),
          _buildInfoCard('Personas'),
          SizedBox(height: 16),
          _buildInfoCard('Empresas'),
          SizedBox(height: 16),
          _buildInfoCard('IPS'),
          SizedBox(height: 16),
          _buildEPSLogo(
            context,
            'lib/images/emssanar.png',
            'EMSSANAR',
            Colors.green,
            Colors.green[100]!,
          ),
        ],
      ),
    );
  }

  Widget _buildEPSLogo(BuildContext context, String assetPath, String title, Color primaryColor, Color backgroundColor) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServicesScreen(
              title: title,
              primaryColor: primaryColor,
              backgroundColor: backgroundColor,
            ),
          ),
        );
      },
      child: Image.asset(
        assetPath,
        height: 80,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildInfoCard(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(
            'Encuentra lo que necesitas saber sobre nuestra red de atención, afiliaciones, citas médicas y servicios.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text('INGRESAR ->', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}