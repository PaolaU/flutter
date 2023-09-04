
import 'package:flutter/material.dart';
import 'package:flutter_movil/src/presentation/screens/cliente_screen.dart';
import 'package:flutter_movil/src/presentation/screens/inicio_screen.dart';
import 'package:flutter_movil/src/presentation/screens/login_screen.dart';
import 'package:flutter_movil/src/presentation/screens/register_screen.dart';
import 'package:flutter_movil/src/presentation/screens/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => const WelcomeScren(),
        "/login": (context) => const LoginScreen(),
        "/cliente": (context) => const ClienteScreen(),
        "/inicio": (context) => const InicioScreen(),
      },      
    );
  }
}