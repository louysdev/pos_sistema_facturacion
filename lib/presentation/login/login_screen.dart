import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colors.primary, // fondo de pantalla azul oscuro
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LoginSection(),
            ImageSection(), // ImageBanner centrado verticalmente
          ],
        ),
      ),
    );
  }
}

class LoginSection extends StatelessWidget {
  const LoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.55,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: Colors.white, // fondo blanco
        borderRadius: BorderRadius.circular(40), // bordes redondeados
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TextTitle(text: "Iniciar Sesión"),
          TextFieldLogin(
            labelText: "Usuario",
            icon: Icons.person_2_rounded,
          ),
          SizedBox(height: 30), // Espacio entre los widgets
          TextFieldLogin(
              labelText: "Clave", icon: Icons.lock_rounded),
          SizedBox(height: 30), // Espacio entre los widgets
          ButtonLogin(),
          SizedBox(height: 80),
          TextCreateAccount(),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white, // fondo blanco
        borderRadius: BorderRadius.circular(40), // bordes redondeados
      ),
      child: Image.asset(
        "assets/img/almacen.png",
        width: 300,
        height: 300,
      ),
    );
  }
}

class TextCreateAccount extends StatelessWidget {
  const TextCreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "¿No tienes acceso?",
          style: TextStyle(color: colors.primary, fontSize: 20),
        ),
        const SizedBox(width: 5),
        Text("Regístrate",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: colors.primary, fontSize: 20)),
      ],
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Text(
          "Ingresar",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  final String text;

  const TextTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
          color: colors.primary, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.white, // texto de color blanco
        ),
      ),
    );
  }
}

class TextFieldLogin extends StatelessWidget {
  final String labelText;
  final IconData icon;

  const TextFieldLogin(
      {super.key, required this.labelText, required this.icon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: colors.primary),
          prefixIcon: Icon(icon, color: colors.primary),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: colors.primary),
          ),
        ),
      ),
    );
  }
}
