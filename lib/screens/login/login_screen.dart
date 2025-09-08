import 'package:flutter/material.dart';
import '../../widgets/custom_text_field.dart';
import 'login_controller.dart';

class UnoescLoginScreen extends StatefulWidget {
  const UnoescLoginScreen({super.key});

  @override
  State<UnoescLoginScreen> createState() => _UnoescLoginScreenState();
}

class _UnoescLoginScreenState extends State<UnoescLoginScreen> {
  final controller = LoginController();
  bool lembrarMe = true;
  bool obscureSenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 39, 39),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  CustomTextField(
                    label: 'Código ou CPF',
                    controller: controller.cpfController,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    label: 'Senha',
                    controller: controller.senhaController,
                    isPassword: true,
                    obscureText: obscureSenha,
                    onVisibilityToggle: () {
                      setState(() {
                        obscureSenha = !obscureSenha;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildRememberMe(),
                  const SizedBox(height: 16),
                  _buildLoginButton(),
                  const SizedBox(height: 16),
                  _buildBiometricOption(),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/update-password');
                    },
                    child: const Text(
                      'Esqueci minha senha',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
  return Container(
    height: 280,
    decoration: const BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(180),
        bottomRight: Radius.circular(180),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(height: 60),
        Icon(Icons.school, size: 60, color: Colors.white),
        SizedBox(height: 16),
        Text(
          'UNOESC',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'Somos a melhor\nUniversidade Comunitária de\nSanta Catarina.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    ),
  );
}


  Widget _buildRememberMe() {
    return Row(
      children: [
        Checkbox(
          value: lembrarMe,
          onChanged: (value) => setState(() => lembrarMe = value!),
          activeColor: Colors.green,
        ),
        const Text('Lembrar meus dados de acesso', style: TextStyle(color: Colors.white70)),
      ],
    );
  }

  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        onPressed: () => controller.validarCampos(context),
        child: const Text('ENTRAR', style: TextStyle(fontSize: 16, color: Colors.black)),
      ),
    );
  }

  Widget _buildBiometricOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(Icons.fingerprint, color: Colors.green),
      const SizedBox(width: 8),
      const Text(
        'Usar senha do celular',
        style: TextStyle(color: Colors.white70),
      ),
      const SizedBox(width: 8),
      Switch(
        value: false,
        onChanged: (value) {
          // aqui você pode implementar algo no futuro
        },
      ),
    ],
  );
}

}
