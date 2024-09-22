import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_todo/constants/color_const.dart';
import 'package:riverpod_todo/feature/auth/ui/signup_screen.dart';
import 'package:riverpod_todo/feature/tasks/ui/home_screen.dart';
import 'package:riverpod_todo/util/theme_extension.dart';
import 'package:riverpod_todo/widget/custom_textfield.dart';
import 'package:riverpod_todo/widget/custom_top_design.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    'Welcome Back!',
                    style: context.titleStyle,
                  ),
                  const SizedBox(height: 21),
                  Image.asset(
                    'assets/images/login_vector.png',
                  ),
                  const SizedBox(height: 15),
                  const _InputSection(),
                  const SizedBox(height: 50),
                  Text(
                    'Forgot Password?',
                    style: context.greenBodyStyle,
                  ),
                  const SizedBox(height: 50),
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
                        'Sign In',
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
                    text: "Don't have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.7),
                      fontFamily: 'P',
                    ),
                  ),
                  TextSpan(
                    text: ' Sign Up',
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
                            builder: (context) => const SignupScreen(),
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
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: emailController,
          hintText: 'Enter your Email address',
        ),
        const SizedBox(height: 25),
        CustomTextField(
          controller: passwordController,
          hintText: 'Confirm Password',
        ),
      ],
    );
  }
}
