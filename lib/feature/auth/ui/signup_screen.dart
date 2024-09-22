import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_todo/constants/color_const.dart';
import 'package:riverpod_todo/feature/auth/ui/login_screen.dart';
import 'package:riverpod_todo/feature/tasks/ui/home_screen.dart';
import 'package:riverpod_todo/util/theme_extension.dart';
import 'package:riverpod_todo/widget/custom_textfield.dart';
import 'package:riverpod_todo/widget/custom_top_design.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstColors.backgroundColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const CustomTopDesign(
            showBackIcon: true,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  Text(
                    'Welcome Onboard!',
                    style: context.titleStyle,
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Let's help you meet up your task",
                    style: context.greenBodyStyle,
                  ),
                  const SizedBox(height: 55),
                  const _InputSection(),
                  const SizedBox(height: 100),
                  SizedBox(
                    height: 44,
                    width: 220,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: context.buttonStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.7),
                      fontFamily: 'P',
                    ),
                  ),
                  TextSpan(
                    text: ' Sign In',
                    style: const TextStyle(
                      fontSize: 15,
                      color: ConstColors.greenColor,
                      fontFamily: 'P',
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InputSection extends StatefulWidget {
  const _InputSection();

  @override
  State<_InputSection> createState() => __InputSectionState();
}

class __InputSectionState extends State<_InputSection> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;
  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: nameController,
          hintText: 'Enter your Full Name',
        ),
        const SizedBox(height: 25),
        CustomTextField(
          controller: emailController,
          hintText: 'Enter your Email address',
        ),
        const SizedBox(height: 25),
        CustomTextField(
          controller: passwordController,
          hintText: 'Create a Password',
        ),
        const SizedBox(height: 25),
        CustomTextField(
          controller: passwordConfirmController,
          hintText: 'Confirm your Password',
        ),
      ],
    );
  }
}
