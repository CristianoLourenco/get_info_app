import 'package:flutter/material.dart';
import 'package:get_info_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFF1C4E64),
           ,
          ],
        ),
      ),
      child: const LoginPage(),
    );
  }
}
