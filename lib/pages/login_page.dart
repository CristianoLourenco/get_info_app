import 'package:flutter/material.dart';
import 'package:get_info_app/widget/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Text('Usuário'),
          const TextFieldWidget(
            prefixIcon: Icon(Icons.person),
          ),
          const Divider(),
          const TextFieldWidget(
            prefixIcon: Icon(Icons.lock),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Entrar'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Política de Privacidade'),
          )
        ],
      ),
    );
  }
}

