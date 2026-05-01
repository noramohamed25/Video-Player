
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  const CustomCard({
    super.key, required this.image, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height:170,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: AssetImage(image),
                
              ),
            ),),
        Text(
          text1,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        
        Text(
         text2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        
        
      ],
    
      
    );
  }
}
