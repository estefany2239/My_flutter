import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/custom_text.dart';
import '../widgets/primary.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() =>
      _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final TextEditingController emailController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

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
                        Icons.lock_reset,
                        size: 42,
                        color: AppColors.primaryPurple,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // =====================================================
                    // TITULO
                    // =====================================================

                    const Text(
                      'Recuperar contraseña',
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Ingresa tu correo electrónico para recuperar tu contraseña.',
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

                    CustomTextField(
                      controller: emailController,
                      labelText: 'Correo electrónico',
                      hintText: 'Ingresa tu correo',
                      prefixIcon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 25),

                    // =====================================================
                    // BOTÓN ENVIAR
                    // =====================================================

                    SizedBox(
                      width: 220,

                      child: PrimaryButton(
                        text: 'Enviar',

                        onPressed: () {
                          if (emailController.text.trim().isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Ingresa tu correo electrónico',
                                ),
                              ),
                            );

                            return;
                          }

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Se enviaron las instrucciones a tu correo',
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 18),

                    // =====================================================
                    // VOLVER AL LOGIN
                    // =====================================================

                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.login,
                        );
                      },

                      child: const Text(
                        'Volver al inicio de sesión',

                        style: TextStyle(
                          color: AppColors.primaryPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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