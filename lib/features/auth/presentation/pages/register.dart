import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/primary.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

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
                    // ICONO
                    // =====================================================

                    Container(
                      width: 75,
                      height: 75,

                      decoration: BoxDecoration(
                        color: AppColors.primaryPurple.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),

                      child: const Icon(
                        Icons.person_add_alt_1,
                        size: 42,
                        color: AppColors.primaryPurple,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // =====================================================
                    // TITULO
                    // =====================================================

                    const Text(
                      'Crear cuenta',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Completa tus datos para registrarte',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 30),

                    // =====================================================
                    // NOMBRE
                    // =====================================================

                    const CustomTextField(
                      labelText: 'Nombre completo',
                      hintText: 'Ingresa tu nombre',
                      prefixIcon: Icons.person_outline,
                    ),

                    const SizedBox(height: 18),

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
                      hintText: 'Crea una contraseña',
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

                    const SizedBox(height: 18),

                    // =====================================================
                    // CONFIRMAR CONTRASEÑA
                    // =====================================================

                    CustomTextField(
                      labelText: 'Confirmar contraseña',
                      hintText: 'Repite tu contraseña',
                      prefixIcon: Icons.lock_outline,
                      obscureText: obscureConfirmPassword,

                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),

                        onPressed: () {
                          setState(() {
                            obscureConfirmPassword =
                                !obscureConfirmPassword;
                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 25),

                    // =====================================================
                    // BOTÓN REGISTRARSE
                    // =====================================================

                    SizedBox(
                      width: 220,

                      child: PrimaryButton(
                        text: 'Registrarse',

                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.login,
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 18),

                    // =====================================================
                    // VOLVER AL LOGIN
                    // =====================================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text(
                          '¿Ya tienes una cuenta?',

                          style: TextStyle(
                            color: AppColors.grey,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.login,
                            );
                          },

                          child: const Text(
                            'Iniciar sesión',

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