import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../../core/theme/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const Text(
          'Mi perfil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.primaryPurple,
        foregroundColor: AppColors.white,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const SizedBox(height: 30),

            // =====================================================
            // AVATAR
            // =====================================================

            Container(
              width: 120,
              height: 120,

              decoration: BoxDecoration(
                color: AppColors.lightPurple,
                shape: BoxShape.circle,

                border: Border.all(
                  color: AppColors.primaryPurple,
                  width: 3,
                ),
              ),

              child: const Icon(
                Icons.person,
                size: 70,
                color: AppColors.primaryPurple,
              ),
            ),

            const SizedBox(height: 20),

            // =====================================================
            // NOMBRE
            // =====================================================

            const Text(
              'Usuario',

              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // =====================================================
            // CORREO
            // =====================================================

            const Text(
              'usuario@email.com',

              style: TextStyle(
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),

            const SizedBox(height: 35),

            // =====================================================
            // INFORMACIÓN
            // =====================================================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(18),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              child: Column(
                children: [
                  // ENCABEZADO
                  const Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: AppColors.primaryPurple,
                      ),

                      SizedBox(width: 12),

                      Text(
                        'Información de usuario',

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  const Divider(),

                  const SizedBox(height: 10),

                  // NOMBRE
                  const Row(
                    children: [
                      Text(
                        'Nombre',

                        style: TextStyle(
                          color: AppColors.grey,
                        ),
                      ),

                      Spacer(),

                      Text(
                        'Usuario',

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // CORREO
                  const Row(
                    children: [
                      Text(
                        'Correo',

                        style: TextStyle(
                          color: AppColors.grey,
                        ),
                      ),

                      Spacer(),

                      Flexible(
                        child: Text(
                          'usuario@email.com',

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),

                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            // =====================================================
            // CERRAR SESIÓN
            // =====================================================

            SizedBox(
              width: double.infinity,
              height: 52,

              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.login,
                    (route) => false,
                  );
                },

                icon: const Icon(
                  Icons.logout,
                ),

                label: const Text(
                  'Cerrar sesión',

                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.error,
                  foregroundColor: AppColors.white,

                  elevation: 2,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}