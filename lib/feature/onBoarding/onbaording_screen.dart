import 'package:flutter/material.dart';
import 'package:riverpod_todo/feature/auth/ui/signup_screen.dart';
import 'package:riverpod_todo/util/theme_extension.dart';
import 'package:riverpod_todo/widget/custom_top_design.dart';

class OnbaordingScreen extends StatelessWidget {
  const OnbaordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const CustomTopDesign(
            showBackIcon: false,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 70),
                Image.asset(
                  'assets/images/onboarding_vector.dart.png',
                ),
                const SizedBox(height: 43),
                Text(
                  'Get things done with TaskFlow',
                  style: context.titleStyle,
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: context.blackBodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 70),
                SizedBox(
                  width: 220,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: context.buttonStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
