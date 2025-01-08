import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue[500],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              'K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kliktron',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "HubotSans"),
                            ),
                            Text(
                              'Platinum | 700 Points',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: "HubotSans"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search, size: 24),
                          onPressed: () {},
                          color: Colors.grey[600],
                        ),
                        IconButton(
                          icon: const Icon(Icons.qr_code_scanner, size: 24),
                          onPressed: () {},
                          color: Colors.grey[600],
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications_outlined,
                              size: 24),
                          onPressed: () {},
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Credit Card
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue[500],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Credit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "HubotSans"),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green[500],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  'Top Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "HubotSans"),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            '300 Spot ®',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: "HubotSans",
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Valid till 07 January 2024',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "HubotSans",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Package Cards
                    _buildPackageCard(
                      'Videotron',
                      '60 SPT / 100 SPT',
                      'Valid till 07 January 2024',
                    ),
                    const SizedBox(height: 8),
                    _buildPackageCard(
                      'Mobitron',
                      '50 SPT / 100 SPT',
                      'Valid till 07 January 2024',
                    ),
                    const SizedBox(height: 24),

                    // Quick Actions
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildQuickActionButton(Icons.inventory_2, 'Package'),
                        _buildQuickActionButton(Icons.star_outline, 'Rewards'),
                        _buildQuickActionButton(
                            Icons.card_giftcard, 'Vouchers'),
                        _buildQuickActionButton(Icons.grid_view, 'View All'),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Categories Section
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // Section Title
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Categories',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "HubotSans",
                                            color: Colors.black),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Discover all your media solutions in one convenient place',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "HubotSans",
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // Category Pills
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    _buildCategoryPill('For You', true),
                                    _buildCategoryPill('Videotron', false),
                                    _buildCategoryPill('Mobitron', false),
                                    _buildCategoryPill('Videotron', false),
                                    _buildCategoryPill('Mobitron', false),
                                  ],
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(10, (index) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 150,
                                          padding: EdgeInsets.all(8),
                                          margin: EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/th1.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Rp.500.000 | 30 SPOT',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // Section Title
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom:
                                      16), // Add space between the title and category pills
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Promotion Zone',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "HubotSans",
                                            color: Colors.black),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Save more and boots your advertising strategy with exclusive deals',
                                        style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "HubotSans",
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(50),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/th.jpg'), // Ganti dengan path gambar Anda
                                      fit: BoxFit
                                          .cover, // Gambar akan mengisi seluruh area
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(50),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/th.jpg'), // Ganti dengan path gambar Anda
                                      fit: BoxFit
                                          .cover, // Gambar akan mengisi seluruh area
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(50),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/th.jpg'), // Ganti dengan path gambar Anda
                                      fit: BoxFit
                                          .cover, // Gambar akan mengisi seluruh area
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // Section Title
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom:
                                      16), // Add space between the title and category pills
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Game On',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "HubotSans",
                                            color: Colors.black),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Take a break and dive into a world of fun and challenges !',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "HubotSans",
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(10, (index) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 150,
                                          padding: EdgeInsets.all(8),
                                          margin: EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/th2.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // Section Title
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom:
                                      16), // Add space between the title and category pills
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Insights & Inspiration',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "HubotSans",
                                            color: Colors.black),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Discover tips trends and stories to spark creativity .',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "HubotSans",
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                            0.2), // Warna bayangan hitam dengan transparansi
                                        spreadRadius: 1, // Penyebaran bayangan
                                        blurRadius:
                                            6, // Radius blur untuk bayangan
                                        offset: Offset(0,
                                            4), // Posisi bayangan (horizontal, vertikal)
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      // Gambar di sebelah kiri
                                      Container(
                                        width: 60, // Sesuaikan lebar gambar
                                        height: 60, // Sesuaikan tinggi gambar
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/th3.jpg'), // Ganti dengan path gambar kamu
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Menyelaraskan teks ke kiri
                                          children: [
                                            Text(
                                              'The Future of Advertising', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              'Kliktronmedia | 29 Descember 2025', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                            0.2), // Warna bayangan hitam dengan transparansi
                                        spreadRadius: 1, // Penyebaran bayangan
                                        blurRadius:
                                            6, // Radius blur untuk bayangan
                                        offset: Offset(0,
                                            4), // Posisi bayangan (horizontal, vertikal)
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      // Gambar di sebelah kiri
                                      Container(
                                        width: 60, // Sesuaikan lebar gambar
                                        height: 60, // Sesuaikan tinggi gambar
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/th3.jpg'), // Ganti dengan path gambar kamu
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Menyelaraskan teks ke kiri
                                          children: [
                                            Text(
                                              'The Future of Advertising', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              'Kliktronmedia | 29 Descember 2025', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                            0.2), // Warna bayangan hitam dengan transparansi
                                        spreadRadius: 1, // Penyebaran bayangan
                                        blurRadius:
                                            6, // Radius blur untuk bayangan
                                        offset: Offset(0,
                                            4), // Posisi bayangan (horizontal, vertikal)
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      // Gambar di sebelah kiri
                                      Container(
                                        width: 60, // Sesuaikan lebar gambar
                                        height: 60, // Sesuaikan tinggi gambar
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/th3.jpg'), // Ganti dengan path gambar kamu
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Menyelaraskan teks ke kiri
                                          children: [
                                            Text(
                                              'The Future of Advertising', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              'Kliktronmedia | 29 Descember 2025', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(
                                            0.2), // Warna bayangan hitam dengan transparansi
                                        spreadRadius: 1, // Penyebaran bayangan
                                        blurRadius:
                                            6, // Radius blur untuk bayangan
                                        offset: Offset(0,
                                            4), // Posisi bayangan (horizontal, vertikal)
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      // Gambar di sebelah kiri
                                      Container(
                                        width: 60, // Sesuaikan lebar gambar
                                        height: 60, // Sesuaikan tinggi gambar
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/th3.jpg'), // Ganti dengan path gambar kamu
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Menyelaraskan teks ke kiri
                                          children: [
                                            Text(
                                              'The Future of Advertising', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              'Kliktronmedia | 29 Descember 2025', // Ganti dengan teks yang diinginkan
                                              style: TextStyle(
                                                color: Colors
                                                    .black, // Mengubah teks menjadi warna hitam
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ... Rest of the sections (Promotion Zone, Game On, Insights & Inspiration)
                    // Keeping code concise, you can add the remaining sections similarly
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue[500],
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2),
            label: 'Package',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.grid_view,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Activity',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildPackageCard(String title, String points, String validDate) =>
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: "HubotSans")),
                const SizedBox(height: 4),
                Text(validDate,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "HubotSans",
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Text(points,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "HubotSans")),
          ],
        ),
      );

  Widget _buildQuickActionButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: Colors.blue[500],
            size: 24,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
              fontSize: 12, color: Colors.black, fontFamily: "HubotSans"),
        ),
      ],
    );
  }

  Widget _buildCategoryPill(String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue[500] : Colors.blue[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.bold,
            fontSize: 14,
            fontFamily: "HubotSans"),
      ),
    );
  }
}
