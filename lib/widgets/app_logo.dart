import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      left: screenWidth / 2.8,
      top: 180,
      child: const CircleAvatar(
        radius: 55,
        backgroundImage: AssetImage("assets/restaurantLogo.PNG"),
      ),
    );
  }
}
