// lib/models/user_model.dart
class UserModel {
  final String name;
  final String email;
  final String tipoUsuario; // Adicione esta linha

  UserModel({required this.name, required this.email, required this.tipoUsuario});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      tipoUsuario: json['tipo_usuario'], // Adicione esta linha também
    );
  }
}