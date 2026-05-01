import 'package:flutter/material.dart';

class Iconbuttonfiled extends StatelessWidget {
  final String text;

  const Iconbuttonfiled({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(30),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}