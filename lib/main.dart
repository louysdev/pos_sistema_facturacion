import 'package:flutter/material.dart';
import 'package:pos_sistema_facturacion/config/theme/app_theme.dart';
import 'package:pos_sistema_facturacion/presentation/login/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema Facturacion',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).theme(),
      initialRoute: "/login",
      routes: {
        "/login": (context) =>  LoginScreen(),
      },
    );
  }
}
