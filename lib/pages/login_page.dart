import 'package:flutter/material.dart';
import 'package:get_info_app/pages/get_info_page.dart';
import 'package:get_info_app/widget/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              const TextFieldWidget(
                title: 'Usuário',
                prefixIcon: Icon(Icons.person),
              ),
              const Divider(height: 25),
              const TextFieldWidget(
                title: 'Senha',
                prefixIcon: Icon(Icons.lock),
              ),
              const SizedBox(height: 100),
              FractionallySizedBox(
                widthFactor: 0.35,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const GetInfoPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 45),
                      backgroundColor: const Color(0xFF44bd6e),
                      foregroundColor: Colors.white),
                  child: const Text('Entrar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
