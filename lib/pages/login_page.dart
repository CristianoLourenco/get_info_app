import 'package:flutter/material.dart';
import 'package:get_info_app/widget/textfield_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 5),
            Expanded(
              flex: 10,
              child: Column(
                children: [
                  const Spacer(),
                  const TextFieldWidget(
                    title: 'Usuário',
                    prefixIcon: Icon(Icons.person),
                  ),
                  const Spacer(),
                  const TextFieldWidget(
                    title: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                  ),
                  const Spacer(),
                  FractionallySizedBox(
                    widthFactor: 0.45,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(60, 50),
                        backgroundColor: const Color(0xFF44bd6e),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Entrar'),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
            TextButton(
              onPressed: gotGoogleLink,
              child: Text(
                'Política de Privacidade',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: const Color.fromARGB(139, 255, 255, 255)),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Future<void> gotGoogleLink() async {
    final urlGooglebr = Uri.parse('https://www.google.com.br');
    await launchUrl(urlGooglebr);
  }
}
