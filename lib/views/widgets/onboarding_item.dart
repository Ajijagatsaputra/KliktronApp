import 'package:flutter/material.dart';
import '../../models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel data;

  OnboardingItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(data.image),
        SizedBox(height: 20),
        Text(
          data.title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          data.description,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
