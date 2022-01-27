import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twinkle_assesment_app/screens/create_post_screen.dart';

import 'screens/homePage.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twinkle Blogg',
      theme: ThemeData(
        //  primarySwatch: Colors.blue,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        //   primaryColor: Color(0xffB01D22),
      ),
      routes: {
        '/': (context) => const LoginScreen(),
        HomePage.route: (context) => const HomePage(),
        CreatePostScreen.route: (context) => CreatePostScreen(),
      },
    );
  }
}
