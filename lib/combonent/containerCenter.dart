import 'package:flutter/material.dart';

class ContainerCenter extends StatelessWidget {
  final String image;

  const ContainerCenter({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(image),
          
        ),
      ),
     
    );
  }
}