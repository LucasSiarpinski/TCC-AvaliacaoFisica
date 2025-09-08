import 'package:flutter/material.dart';
import '../../core/utils/utils.dart';
import '../../services/auth_services.dart';
import '../../models/user_model.dart';
import '../../core/utils/storage_helper.dart';
import '../../routes/app_routes.dart'; // Importando as rotas

class LoginController {
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final AuthService _authService = AuthService();

  Future<void> validarCampos(BuildContext context) async {
    String cpf = cpfController.text.trim();
    String senha = senhaController.text.trim();

    if (cpf.isEmpty) {
      showSnackbar(context, 'Por favor, preencha o Código ou CPF.');
      return;
    }

    if (senha.isEmpty) {
      showSnackbar(context, 'Por favor, preencha a Senha.');
      return;
    }

    // Chama o serviço de autenticação
    UserModel? usuario = await _authService.login(cpf, senha);

    if (usuario != null) {
      await StorageHelper.saveUserType(usuario.tipoUsuario); // Salva o tipo de usuário

      showSnackbar(context, 'Login realizado com sucesso!', color: Colors.green);

      // Navega para a tela correta com base no tipo de usuário
      if (usuario.tipoUsuario == "admin") {
        Navigator.pushReplacementNamed(context, AppRoutes.adminHome);
      } else if (usuario.tipoUsuario == "estudante") {
        Navigator.pushReplacementNamed(context, AppRoutes.estudanteHome);
      }
    } else {
      showSnackbar(context, 'CPF ou senha inválidos.');
    }
  }
}
