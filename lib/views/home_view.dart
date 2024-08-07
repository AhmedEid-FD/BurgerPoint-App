import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/app_logo.dart';
import 'package:restaurant_app/widgets/custom_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset("assets/bg.jpeg"),
              const CustomContainer(),
              const AppLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
