import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informasi Akun',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xFFF2F8FF), // Warna latar biru muda
        child: Column(
          children: [
            // Foto profil
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[200],
                child: const Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Informasi pengguna dengan tombol Ubah
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Informasi Pengguna',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            // Tambahkan fungsi ubah profil
                          },
                          child: const Text(
                            'Ubah',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    buildInfoTextRow(
                      title: 'NIK terdaftar di nomor Anda',
                      value: '33******09******10',
                    ),
                    const Divider(color: Colors.grey),
                    buildInfoTextRow(
                      title: 'Nama',
                      value: 'Masukkan nama Anda',
                    ),
                    const Divider(color: Colors.grey),
                    buildInfoTextRow(
                      title: 'Email',
                      value: 'Masukkan email Anda',
                    ),
                    const Divider(color: Colors.grey),
                    buildInfoTextRow(
                      title: 'Tanggal Lahir',
                      value: '01 Januari 0001',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoTextRow({
    required String title,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
