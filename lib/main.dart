import 'package:flutter/material.dart';
import 'package:my_first_project/pages/login_page.dart';
import 'package:my_first_project/pages/profile.dart';

void main() {
  runApp(const MyFirstProject());
}


class MyFirstProject extends StatelessWidget {
  const MyFirstProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_page',  // Set initial route
      routes: {
        '/login_page': (context) =>  LoginPage(),

       
         '/profile': (context) => const Profile(),  // Add profile route
      },
    );

  }
}