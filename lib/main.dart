import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //bringVegetables(thaila: true);  // Methods inside the class
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      // initialRoute: "/home",
      routes: {
        "/": (context) => const LoginPage(),
        // "/home": (context) => const HomePage(),
        // "/login": (context) => const LoginPage()
      },
    );
  }
}

//bringVegetables({required bool thaila, int rupees = 100 }) {
  // Go to Grocery shop
  // Bring Vegetables

// Function outside the class
