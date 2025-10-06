import 'package:flutter/material.dart';
import 'dart:async'; // import untuk menggunakan timer/future.delayed
import 'package:myapp/screens/dashboard_screen.dart';
import 'package:myapp/screens/justduit_logo.dart';


class SplashScreen extends StatefulWidget {
  // nama rute untuk navigasi
  static const route = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // panggil fungsi untuk navigasi setelah beberapa detik
    _navigateToDashboard();
  }

  // fungsi untuk pindah ke dashboard setelah delay
  void _navigateToDashboard() {
    Future.delayed(const Duration(seconds: 5), () {
      // gunakan pushReplacementNamed agar pengguna tidak bisa kembali  ke splash screen
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, DashboardScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // beri warna latar belakang yang sama dengan tema aplikasi
      backgroundColor: const Color(0xFFF8F8FB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Menggunakan kembali widget Logo yang sudah ada
            const JustduitLogo(), 
            const SizedBox(height: 24),

            // 2. Indikator loading yang berputar
            const CircularProgressIndicator(
              color: Color(0xFF1E88FF),
            ),
            const SizedBox(height: 16),

            // 3. Teks loading
            Text(
              'Loading Bestii Sabar Yaa...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
