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
      routes: {
        Home.routeName: (context) => const Home(),
        Profile.routeName: (context) => const Profile(),
        Login.routeName: (context) => const Login(),
        Register.routeName: (context) => const Register(),
<<<<<<< Updated upstream
        AddItem.routeName:(context) => const AddItem()
=======
        AddItem.routeName: (context) => const AddItem(),
        ItemDetails.routeName: (context) => const ItemDetails(),
        EditItem.routeName: (context) => const EditItem(),
>>>>>>> Stashed changes
      },
    );
  }
}
