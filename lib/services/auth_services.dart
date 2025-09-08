// lib/services/auth_services.dart

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart'; 

class AuthService {
  final String baseUrl = "http://SEU_IP_AQUI:5000/api/auth";

  // Esta função agora simula um login bem-sucedido
  // para que você possa visualizar o aplicativo
  Future<UserModel?> login(String email, String password) async {
    // Simula uma espera de 2 segundos para o login
    await Future.delayed(Duration(seconds: 2));

    // Retorna um usuário de mentira, em vez de fazer uma chamada HTTP
    return UserModel(
      name: 'Usuário Teste', 
      email: 'teste@teste.com',
      tipoUsuario: 'admin' // Adicione esta linha. Pode ser "admin" ou "estudante"
    );
  }

  // O método getUserProfile não será utilizado por agora
  Future<Map<String, dynamic>?> getUserProfile() async {
    return null;
  }
}