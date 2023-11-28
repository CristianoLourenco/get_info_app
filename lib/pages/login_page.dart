import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_info_app/controller/validator_controller.dart';
import 'package:get_info_app/widget/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  final PageController pageController;
  const LoginPage({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final passWordcontroller = TextEditingController();
    final userController = TextEditingController();
    final regexPassWordFormat = RegExp(r'([a-zA-Z0-9])');
    final validate = ValidatorController();

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
              TextFieldWidget(
                title: 'Usuário',
                prefixIcon: const Icon(Icons.person),
                controller: userController,
              ),
              const Divider(height: 25),
              TextFieldWidget(
                title: 'Senha',
                prefixIcon: const Icon(Icons.lock),
                controller: passWordcontroller,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(regexPassWordFormat)
                ],
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  pageController.jumpToPage(1);
                  // if (validate.inputValidator(userController.text) &&
                  //     validate.inputValidator(passWordcontroller.text)) {
                  // } else {
                  //   ScaffoldMessenger.of(context).clearSnackBars();
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(
                  //       content: Text(
                  //         'Informe um usuário válido',
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .labelMedium
                  //             ?.copyWith(color: Colors.red),
                  //       ),
                  //       behavior: SnackBarBehavior.floating,
                  //       showCloseIcon: true,
                  //       closeIconColor: Colors.red,
                  //       backgroundColor: Colors.white,
                  //     ),
                  //   );
                  // }
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
    );
  }
}
