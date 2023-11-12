import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TextField(),
          const TextField(),
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
