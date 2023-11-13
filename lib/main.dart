import 'package:flutter/material.dart';
import 'package:get_info_app/pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Prov App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF299790)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
