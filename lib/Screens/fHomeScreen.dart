import 'package:flutter/material.dart';
import 'package:videoplayer/Screens/Next.dart';
import 'package:videoplayer/Screens/NextNext.dart';
import 'package:videoplayer/Screens/SplashScreen.dart';
import 'package:videoplayer/Screens/recoderDashBord.dart';
import 'package:videoplayer/combonent/containerCenter.dart';
import 'package:videoplayer/combonent/iconButtonfiled.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF06202B),

      appBar: AppBar(
        backgroundColor: const Color(0xFF06202B),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Recoderdashbord()));
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContainerCenter(image: 'assets/image/image10.png'),
          SizedBox(height: 30,),
            const Text(
              'All-in-One Recording',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Capture everything from your',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            const Text(
              'Screen, camera, and audio in one',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            const Text(
              'place.',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),

            const SizedBox(height: 100),
             
      
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Next()));
              
              },
              borderRadius: BorderRadius.circular(30),
            
            
                child:  Iconbuttonfiled(text: 'Next'),
              ),

            
          ],
        ),
      ),
      
    );
  }
}
