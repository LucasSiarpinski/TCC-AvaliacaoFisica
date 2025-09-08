// Em lib/routes/app_routes.dart

import 'package:flutter/material.dart';

// 1. Verifique se os caminhos dos imports estão corretos
import '../screens/login/login_screen.dart';
import '../screens/update_password/update_password_screen.dart';
import '../screens/admin/admin_home_screen.dart';
import '../screens/studant/studant_home_screen.dart';
import '../screens/dashboard/dashboard_screen.dart';

class AppRoutes {
  // Nomes das Rotas (continua igual)
  static const String login = '/';
  static const String updatePassword = '/update-password';
  static const String adminHome = '/admin-home';
  static const String estudanteHome = '/estudante-home';
  static const String dashboardHome = '/dashboard-home';

  // O mapa que associa os nomes com as CLASSES CORRETAS
  static Map<String, WidgetBuilder> get routes {
    return {
      login: (ctx) => UnoescLoginScreen(),
      updatePassword: (ctx) => UpdatePasswordScreen(),
      estudanteHome: (ctx) => EstudanteHomeScreen(),
      dashboardHome: (ctx) => DashboardScreen(), // Corrigido com o nome que você passou

      // Verifique o nome da classe de admin também. Se for diferente, ajuste aqui.
      adminHome: (ctx) => AdminHomeScreen(), 
    };
  }
}