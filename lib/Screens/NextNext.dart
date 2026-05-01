import 'package:flutter/material.dart';
import 'package:videoplayer/Screens/SplashScreen.dart';
import 'package:videoplayer/Screens/recoderDashBord.dart';
import 'package:videoplayer/combonent/CustomCard.dart';
import 'package:videoplayer/combonent/containerCenter.dart';
import 'package:videoplayer/combonent/iconButtonfiled.dart';

class Nextnext extends StatelessWidget {
  const Nextnext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06202B),

      appBar: AppBar(
        backgroundColor: Color(0xFF06202B),
       
        title: Text(
          'Onboarding',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
    
       actions: [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Recoderdashbord(),
          ),
        );
      },
      child: const Text(
        'Skip',
        style: TextStyle(color: Colors.blue, fontSize: 18),
      ),
    ),
  ),
],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 10),

            Center(
              child: ContainerCenter(
                image: 'assets/image/image.png',
              ),
            ),

            SizedBox(height:10),

            Text(
              'Organize & Play',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text(
              'Manage your recordings in custom playlists',
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),

            Text(
              'and enjoy seamless playback',
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 10),

           

                Row(
                  children: [
                    
               
                   CustomCard(image: 'assets/image/image11.png', text1: "Playlist View", text2: 'Custom folders'),
                    SizedBox(width: 30,),
                    CustomCard(image: 'assets/image/image22.png', text1: 'Media Player', text2: 'Seqmless Playback')

                   
                  ],
                ),
                SizedBox(height: 15,),
                          InkWell(onTap: (){

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Recoderdashbord()));

          } ,
          
          borderRadius: BorderRadius.circular(30),
          child: Iconbuttonfiled(text: 'Go Started'),

        )
                
              ],
              
              
            
        ),
      ),
    );
  }
}
