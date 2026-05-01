import 'package:flutter/material.dart';
import 'package:videoplayer/Screens/fHomeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Homescreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF0A1F44),
   
      body: 
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 3,
                    ),
                  ),
                ),

                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.blueAccent,
                    size: 40,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ULTRA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 const Text(
              "REC",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
            const SizedBox(height: 10),

            const Text(
              "STUDIO QUALITY CAPTURE",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 100),

            const Text(
              "Powered by Flutter",
              style: TextStyle(
                color: Colors.white30,
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: 120,
              height: 2,
              color: Colors.white24,
            ),
          ],
        ),
      
    );
  }
}