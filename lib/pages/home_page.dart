import 'package:flutter/material.dart';
import 'package:get_info_app/controller/get_users_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = GetUsersController();

    return FutureBuilder(
        future: users.getaAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
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
              // child: const GetInfoPage(),
            );
          }
        });
  }
}
