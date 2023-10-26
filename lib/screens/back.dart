import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/baclk.png'), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
