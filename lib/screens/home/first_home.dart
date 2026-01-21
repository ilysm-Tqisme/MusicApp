import 'package:app_music/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class FirstHome extends StatelessWidget {
  const FirstHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // ================= Background image =================
          Positioned.fill(
            child: Image.asset(
              'assets/images/art/spotify_background.png',
              fit: BoxFit.fitWidth, // ✅ QUAN TRỌNG
              alignment: Alignment.topCenter,
            ),
          ),

          // ================= Dark gradient overlay =================
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.2),
                    Colors.black.withValues(alpha: 0.85),
                  ],
                ),
              ),
            ),
          ),

          // ================= Content =================
          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 6),

                const Text(
                  'Tqisme.\nFree on Spotify.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 28),

                _greenButton(context, 'Sign up free'),
                const SizedBox(height: 16),

                _outlineButton(
                  iconPath: 'assets/images/icon/icon_gg.png',
                  text: 'Continue with Google',
                ),
                const SizedBox(height: 12),

                _outlineButton(
                  iconPath: 'assets/images/icon/icon_fb.png',
                  text: 'Continue with Facebook',
                ),
                const SizedBox(height: 12),

                _outlineButton(
                  iconPath: 'assets/images/icon/icon_apple.jpg',
                  text: 'Continue with Apple',
                ),

                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================= Widgets =================

  Widget _greenButton(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1DB954),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  static Widget _outlineButton({
    required String iconPath,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(iconPath, width: 20, height: 20),
              const SizedBox(width: 12),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
