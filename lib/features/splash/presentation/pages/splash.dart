import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF5E35B1);

    return Scaffold(
      backgroundColor: const Color(0xFFD1C4E9),
      body: Center(
        child: Container(
          width: 190,
          height: 190,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: primaryPurple.withOpacity(0.25),
                blurRadius: 25,
                spreadRadius: 5,
              ),
            ],
          ),
          child: const Icon(
            Icons.flutter_dash,
            size: 100,
            color: primaryPurple,
          ),
        ),
      ),
    );
  }
}