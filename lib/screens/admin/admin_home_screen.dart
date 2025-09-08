import 'package:flutter/material.dart';

class AdminHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Painel Admin")),
      body: Center(child: Text("Bem-vindo Admin!")),
    );
  }
}
