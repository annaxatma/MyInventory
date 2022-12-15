import 'package:flutter/material.dart';
import 'package:my_inventory/view/pages/Pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Removing the "debug" text.
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/': (context) => Home(),
        // Login.routeName: (context) => Login(),

        '/': (context) => const Login(),
        Home.routeName: (context) => const Home(),
        Profile.routeName: (context) => const Profile(),
        //Register.routeName: (context) => const Register(),
      },
    );
  }
}




