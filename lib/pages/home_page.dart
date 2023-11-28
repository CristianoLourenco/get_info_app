import 'package:flutter/material.dart';
import 'package:get_info_app/controller/get_users_controller.dart';
import 'package:get_info_app/pages/get_info_page.dart';
import 'package:get_info_app/pages/login_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = GetUsersController();
    final pageController = PageController();

    return FutureBuilder(
        future: users.getaAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFF1C4E64),
                    Color(0xFF299790),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Flexible(
                    child: PageView(
                      allowImplicitScrolling: false,
                      controller: pageController,
                      children: <Widget>[
                        LoginPage(pageController: pageController),
                        const GetInfoPage(),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: gotoGooglePage,
                    child: Text(
                      'Política de Privacidade',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: const Color.fromARGB(139, 255, 255, 255)),
                    ),
                  ),
                  const Divider(height: 20),
                ],
              ),
            );
          }
        });
  }

  Future<void> gotoGooglePage() async {
    final urlGooglebr = Uri.parse('https://www.google.com.br');
    await launchUrl(urlGooglebr);
  }
}
