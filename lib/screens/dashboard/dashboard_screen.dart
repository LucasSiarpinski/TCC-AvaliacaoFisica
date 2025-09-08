// DENTRO DE dashboard_screen.dart

import 'package:flutter/material.dart';

// Garanta que o nome da classe está correto aqui 👇
class DashboardScreen extends StatelessWidget {
  // Agora o nome do construtor é igual ao da classe 👇
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: const Center(
        child: Text('Bem-vindo ao Dashboard!'),
      ),
    );
  }
}