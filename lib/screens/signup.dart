import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Wave Background with Title & Subtitle
            Stack(
              children: [
                // Wave Background
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: SvgPicture.asset(
                    'lib/images/wave.svg', // Make sure this path matches your pubspec.yaml
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ),

                // Title & Subtitle
                Padding(
                  padding: const EdgeInsets.only(top: 160.0, left: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome to\nUltimate Choice",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Where Compassion meets Quality",
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Role heading
                  Center(
                    child: Text(
                      'Choose your role',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // Talent & Partner buttons in same row
                  Row(
                    children: [
                      // Talent button
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: InkWell(
                            onTap: () {
                              // TODO: handle Talent role
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF005FC6),
                                    Color(0xFF002E60),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Talent',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      // Partner button
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: InkWell(
                            onTap: () {
                              // TODO: handle Partner role
                            },
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF005FC6),
                                    Color(0xFF002E60),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Partner',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 280),

            // Gradient NEXT Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF005FC6), // Start
                          Color(0xFF002E60), // End
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 5),

            // "Already have an account? Login"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login'); // Go back to login
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFF005FC6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
