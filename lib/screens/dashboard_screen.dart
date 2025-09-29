import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const route = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // supaya bisa discroll kalau konten panjang
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text Sapaan
              Text(
                'Selamat Datang, ',
                style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              ),
              const Text(
                'Putri Alena Sari',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Kartu Saldo
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.15),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_balance_wallet_outlined,
                            color: Colors.grey[500]),
                        const SizedBox(width: 8),
                        Text(
                          'Saldo Saat Ini',
                          style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Rp 1.234.567',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E88FF),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text('Lihat Detail Transaksi'),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Akses Cepat
              const Text(
                'Akses Cepat',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildQuickAction(Icons.add_card, 'Isi Saldo'),
                  _buildQuickAction(Icons.send, 'Transfer'),
                  _buildQuickAction(Icons.receipt_long, 'Tagihan'),
                  _buildQuickAction(Icons.settings, 'Pengaturan'),
                ],
              ),

              const SizedBox(height: 24),

              // Aktivitas Terakhir
              const Text(
                'Aktivitas Terakhir',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.arrow_upward, color: Colors.red),
                    title: Text('Transfer ke Budi'),
                    subtitle: Text('Rp 100.000'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.arrow_downward, color: Colors.green),
                    title: Text('Top Up Saldo'),
                    subtitle: Text('Rp 50.000'),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.receipt, color: Colors.blue),
                    title: Text('Bayar Listrik'),
                    subtitle: Text('Rp 200.000'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget Helper untuk Akses Cepat
  static Widget _buildQuickAction(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue[50],
          child: Icon(icon, color: Colors.blue, size: 28),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
