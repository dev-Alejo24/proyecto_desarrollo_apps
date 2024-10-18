import 'package:flutter/material.dart';
import '../widgets/services_container.dart';

class ServicesScreen extends StatelessWidget {
  final String title;
  final Color primaryColor;
  final Color backgroundColor;

  ServicesScreen({
    required this.title,
    required this.primaryColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: primaryColor,
      ),
      body: Container(
        color: backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ServicesContainer(
                backgroundColor: primaryColor,
                buttonColor: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}