import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.login,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes, // Chamando o método
    );
  }
}
