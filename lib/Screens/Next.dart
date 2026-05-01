import 'package:flutter/material.dart';
import 'package:videoplayer/Screens/NextNext.dart';
import 'package:videoplayer/Screens/recoderDashBord.dart';
import 'package:videoplayer/combonent/iconButtonfiled.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06202B),
    
      appBar: AppBar(
        backgroundColor: const Color(0xFF06202B),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage('assets/image/image33.png'),
                )

              ),
            ),
            SizedBox(height: 25,),
            
            Text('Precision Extraction',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Extract audio and video streems with',style: TextStyle(color: Colors.grey,fontSize: 20),),
          Text('professional-grade quality settings.',style: TextStyle(color: Colors.grey,fontSize: 20),),
          SizedBox(height: 200),
                    InkWell(onTap: (){

          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Nextnext()));

            } ,
            
            borderRadius: BorderRadius.circular(30),
            child: Iconbuttonfiled(text: 'Continue'),

          )
        
          ],
        
        ),
      ),
    );
  }
}