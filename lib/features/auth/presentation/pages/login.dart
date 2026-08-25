import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/primary.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 430,
            ),

            child: Card(
              elevation: 8,
              shadowColor: Colors.black26,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),

              child: Padding(
                padding: const EdgeInsets.all(30),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    // =====================================================
                    // LOGO
                    // =====================================================

                    Container(
                      width: 75,
                      height: 75,

                      decoration: BoxDecoration(
                        color: AppColors.primaryPurple.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),

                      child: const Icon(
                        Icons.flutter_dash,
                        size: 48,
                        color: AppColors.primaryPurple,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // =====================================================
                    // TITULO
                    // =====================================================

                    const Text(
                      'Bienvenido',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Inicia sesión para continuar',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 30),

                    // =====================================================
                    // CORREO
                    // =====================================================

                    const CustomTextField(
                      labelText: 'Correo electrónico',
                      hintText: 'Ingresa tu correo',
                      prefixIcon: Icons.email_outlined,
                    ),

                    const SizedBox(height: 18),

                    // =====================================================
                    // CONTRASEÑA
                    // =====================================================

                    CustomTextField(
                      labelText: 'Contraseña',
                      hintText: 'Ingresa tu contraseña',
                      prefixIcon: Icons.lock_outline,
                      obscureText: obscurePassword,

                      suffixIcon: IconButton(
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),

                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 8),

                    // =====================================================
                    // OLVIDASTE CONTRASEÑA
                    // =====================================================

                    Align(
                      alignment: Alignment.centerRight,

                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.forgotPassword,
                          );
                        },

                        child: const Text(
                          '¿Olvidaste tu contraseña?',

                          style: TextStyle(
                            color: AppColors.primaryPurple,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // =====================================================
                    // BOTÓN INICIAR SESIÓN
                    // =====================================================

                    PrimaryButton(
                      text: 'Iniciar sesión',

                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.dashboard,
                        );
                      },
                    ),

                    const SizedBox(height: 22),

                    // =====================================================
                    // REGISTRO
                    // =====================================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text(
                          '¿No tienes una cuenta?',

                          style: TextStyle(
                            color: AppColors.grey,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.register,
                            );
                          },

                          child: const Text(
                            'Registrarse',

                            style: TextStyle(
                              color: AppColors.primaryPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}