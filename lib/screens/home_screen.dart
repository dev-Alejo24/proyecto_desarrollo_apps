import 'package:flutter/material.dart';
import 'package:proyecto/widgets/header.dart';
import '../widgets/info_container.dart';
import '../widgets/login_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            LoginContainer(),
            InfoContainer(),
          ],
        ),
      ),
    );
  }
}