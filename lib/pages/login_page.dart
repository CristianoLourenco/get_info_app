import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_info_app/pages/get_info_page.dart';
import 'package:get_info_app/widget/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final passWordcontroller = TextEditingController();
    final userController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50),
                TextFieldWidget(
                  title: 'Usuário',
                  prefixIcon: const Icon(Icons.person),
                  controller: userController,
                  validator: inputValidator,
                  
                ),
                const Divider(height: 25),
                TextFieldWidget(
                  title: 'Senha',
                  prefixIcon: const Icon(Icons.lock),
                  controller: passWordcontroller,
                  validator: inputValidator,
               
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const GetInfoPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 45),
                      backgroundColor: const Color(0xFF44bd6e),
                      foregroundColor: Colors.white),
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? inputValidator(String? value) {
    if (value == null ||
        value.trim().isEmpty ||
        value.characters.endsWith(Characters(' '))) {
      return 'Informe um texto válido';
    }
    return null;
  }
}
