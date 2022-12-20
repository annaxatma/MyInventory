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
      theme: ThemeData(primarySwatch: Colors.grey),
      initialRoute: Login.routeName,

      // Page routes
      routes: {
        Login.routeName: (context) => const Login(),
        Register.routeName: (context) => const Register(),
        // AddItem.routeName: (context) => const AddItem(user);
        ItemDetails.routeName: (context) => const ItemDetails(),
        EditItem.routeName: (context) => const EditItem(),
      },
    );
  }
}
