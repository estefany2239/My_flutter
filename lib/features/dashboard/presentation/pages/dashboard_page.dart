import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../profile/presentation/pages/profile_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<String> activities = [
    'Tarea completada',
    'Nueva notificación',
    'Nuevo mensaje',
    'Actividad programada',
    'Nuevo logro',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: _selectedIndex == 0
          ? _buildHome()
          : const ProfilePage(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        selectedItemColor: AppColors.primaryPurple,
        unselectedItemColor: AppColors.grey,
        backgroundColor: AppColors.white,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  // =========================
  // INICIO
  // =========================

  Widget _buildHome() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'Hola, Usuario 👋',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Bienvenido a tu espacio personal.',
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Actividad reciente',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: activities.length,

                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),

                    elevation: 2,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.lightPurple,

                        child: Icon(
                          Icons.notifications_none,
                          color: AppColors.primaryPurple,
                        ),
                      ),

                      title: Text(
                        activities[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: const Text(
                        'Tienes una nueva actualización.',
                      ),

                      trailing: const Icon(
                        Icons.chevron_right,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}