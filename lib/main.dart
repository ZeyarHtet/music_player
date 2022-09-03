import 'package:flutter/material.dart';
import 'package:music_player/welcome_screen.dart';
import 'package:music_player/login_screen.dart';
import 'package:music_player/music.dart';
import 'package:music_player/register_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/register': (context)=> const RegisterScreen2(),
        '/login':(context) => const LoginScreen(),
        '/music':(context)=> const Music(),
      },
    );
  }
}
