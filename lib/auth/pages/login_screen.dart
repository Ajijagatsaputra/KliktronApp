import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  String? completePhoneNumber; // Menyimpan nomor telepon lengkap
  bool isButtonEnabled = false;

  late AnimationController _animationController;

  void validateInput() {
    setState(() {
      isButtonEnabled = completePhoneNumber != null;
      if (isButtonEnabled) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void initState() {
    super.initState();

    // Inisialisasi AnimationController
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          // Back button action
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Enter your registered phone number",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Phone Number*",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      IntlPhoneField(
                        decoration: InputDecoration(
                          hintText: 'Enter your phone number',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                        ),
                        initialCountryCode: 'ID', // Kode negara awal (Indonesia)
                        onChanged: (phone) {
                          setState(() {
                            completePhoneNumber = phone.completeNumber;
                          });
                          validateInput();
                        },
                      ),
                      const SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          // Handle "Issue with number" action
                        },
                        child: const Text(
                          "Issue with number?",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: "By logging in or registering, you agree to our ",
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
                          children: [
                            TextSpan(
                              text: "Terms of Service",
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const TextSpan(
                              text: " and the ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const TextSpan(text: "."),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: isButtonEnabled
                    ? () {
                  // Continue button action
                  print("Complete Phone Number: $completePhoneNumber");
                }
                    : null,
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: 1 + 0.1 * _animationController.value,
                      child: ElevatedButton(
                        onPressed: isButtonEnabled
                            ? () {
                          // Continue button action
                          print("Complete Phone Number: $completePhoneNumber");
                        }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          isButtonEnabled ? Colors.blue : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
