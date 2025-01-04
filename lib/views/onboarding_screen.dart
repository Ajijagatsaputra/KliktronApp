import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';
import 'widgets/onboarding_item.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Bagian slide gambar
          Expanded(
            child: PageView.builder(
              onPageChanged: controller.changePage,
              itemCount: controller.onboardingData.length,
              itemBuilder: (context, index) {
                return OnboardingItem(data: controller.onboardingData[index]);
              },
            ),
          ),

          // Indikator halaman
          Obx(() => Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0), // Jarak indikator ke tombol
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.onboardingData.length,
                    (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: controller.currentIndex.value == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: controller.currentIndex.value == index
                        ? Colors.blue
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          )),

          // Tombol Register dan Login
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Tombol Register
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    // Aksi register
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),

                SizedBox(height: 16), // Jarak antara tombol Register dan Login

                // Tombol Login
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    side: BorderSide(color: Colors.blue),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    // Aksi login
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                )
              ],
            ),
          ),

          // Jarak tambahan di bawah tombol
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
