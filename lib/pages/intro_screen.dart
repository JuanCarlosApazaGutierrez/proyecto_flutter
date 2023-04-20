import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0.0,
                right: 10.0,
                top: 10,
                bottom: 20,
              ),
              child: Image.asset('lib/images/principal.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'We deliver grocery at your doorstep',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 20.0),
              child: Text(
                'Groccer gives you fresh vegetables and fruits, Order fresh items from groccer.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 112, 91, 222),
                ),
                child: const Text(
                  "      Get Started      ",
                  style: TextStyle(
                    color: Colors.white,
                    
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,)
          ],
        ),
      ),
    );
  }
}
